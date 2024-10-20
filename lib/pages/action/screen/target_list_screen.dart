import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/action/widget/target_list/target_appbar_widget.dart';
import 'package:minewarz_app/pages/action/widget/target_list/target_btn_widget.dart';
import 'package:minewarz_app/pages/action/widget/target_list/target_info_widget.dart';

class TargetListScreen extends ConsumerStatefulWidget {
  const TargetListScreen({super.key});

  @override
  ConsumerState<TargetListScreen> createState() => _TargetListScreenState();
}

class _TargetListScreenState extends ConsumerState<TargetListScreen> {
  bool isLoadList = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  // initState async 함수
  _asyncMethod() async {
    await ref.read(targetListProvider.notifier).setTargetListData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final targetList = ref.watch(targetListProvider);
    return Stack(children: [
      CustomScrollView(
        slivers: <Widget>[
          TargetAppbarWidget(
            title: 'Target List',
            target: targetList is TargetModel ? targetList.ticketCount : 0,
            refreshCost: targetList is TargetModel && targetList.data != null
                ? targetList.data!.refreshCost
                : 0,
            callback: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (targetList is TargetModel) {
                  ref.read(targetListProvider.notifier).reset();
                }
              });
            },
          ),
          if (targetList is TargetModel &&
              targetList.ticketRemainingTime != null &&
              targetList.ticketCount == 0 &&
              targetList.data == null)
            SliverFillRemaining(
              hasScrollBody: true,
              fillOverscroll: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'All attack tickets exhausted.',
                    style: TextStyle(
                      fontFamily: 'Chaloops',
                      fontSize: 20.w,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                    ),
                    child: CountdownTimerWidget(
                      endTime: targetList.ticketRemainingTime!,
                      fontFamily: 'Chaloops',
                      fontSize: 32,
                      fontColor: Colors.black,
                      fontWeight: FontWeight.w500,
                      callback: () {
                        ref
                            .read(targetListProvider.notifier)
                            .setTargetListData();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 100.w,
                  ),
                ],
              ),
            ),
          if (targetList is TargetModel &&
              targetList.ticketRemainingTime == null)
            targetList.data!.attackTargets.isEmpty
                ? SliverFillRemaining(
                    hasScrollBody: true,
                    fillOverscroll: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No Attack targets.',
                          style: TextStyle(
                            fontFamily: 'Chaloops',
                            fontSize: 20.w,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 100.w,
                        ),
                      ],
                    ),
                  )
                : SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8.w,
                        ),
                        if (targetList.ticketCount == 0)
                          Text(
                            'All Attack Tickets exhausted.',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                              fontSize: 14.w,
                            ),
                          ),
                        if (targetList.ticketCount == 0)
                          Text(
                            'A price will incur for additional attacks.',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        SizedBox(
                          height: 8.w,
                        ),
                        if (targetList.data!.attackTargets.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                              bottom: 80.w,
                            ),
                            child: Column(
                              children: targetList.data!.attackTargets.map((e) {
                                return Container(
                                  color: Colors.black,
                                  padding: EdgeInsets.all(4.w),
                                  margin: EdgeInsets.only(bottom: 8.w),
                                  child: Container(
                                    color: Colors.white,
                                    child: IntrinsicHeight(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 5.w,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fitHeight,
                                                repeat: ImageRepeat.noRepeat,
                                                alignment: Alignment.topLeft,
                                                image: AssetImage(
                                                  'assets/images/home/transport/history_bgimg.png',
                                                ), // 배경 이미지
                                              ),
                                            ),
                                          ),
                                          // 타겟 정보
                                          TargetInfoWidget(
                                            nftType: e!.profile.type,
                                            nftUrl: e.profile.url,
                                            nickname: e.targetNickname != null
                                                ? e.targetNickname!
                                                : 'No Name',
                                            rounds: e.totalRound,
                                            maxProfit: e.maxProfit,
                                            expectedProfit: e.expectedProfit,
                                          ),
                                          // 타겟 버튼
                                          TargetBtnWidget(
                                            targetId: e.targetId,
                                            cost: e.cost,
                                            targetNickname:
                                                e.targetNickname != null
                                                    ? e.targetNickname!
                                                    : 'No Name',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                      ],
                    ),
                  )
        ],
      ),
    ]);
  }
}
