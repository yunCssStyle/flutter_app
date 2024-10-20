import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/action/model/revenge_list_model.dart';
import 'package:minewarz_app/pages/action/provider/revenge_list_provider.dart';
import 'package:minewarz_app/pages/action/widget/revenge_list/revenge_appbar_widget.dart';
import 'package:minewarz_app/pages/action/widget/revenge_list/revenge_btn_widget.dart';
import 'package:minewarz_app/pages/action/widget/target_list/target_info_widget.dart';

class RevengeListScreen extends ConsumerStatefulWidget {
  const RevengeListScreen({super.key});

  @override
  ConsumerState<RevengeListScreen> createState() => _RevengeListScreenState();
}

class _RevengeListScreenState extends ConsumerState<RevengeListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(revengeListProvider.notifier).setRevengeListData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final revengeList = ref.watch(revengeListProvider);
    return Stack(children: [
      CustomScrollView(
        slivers: <Widget>[
          const RevengeAppbarWidget(
            title: 'Revenge List',
          ),
          if (revengeList is RevengeModel)
            revengeList.revengeTargets.isEmpty
                ? SliverFillRemaining(
                    hasScrollBody: true,
                    fillOverscroll: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No revenge targets.',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                            bottom: 80.w,
                          ),
                          child: Column(
                            children: revengeList.revengeTargets.map((e) {
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
                                          // height: 126.w,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              repeat: ImageRepeat.noRepeat,
                                              alignment: Alignment.topLeft,
                                              image: AssetImage(
                                                  'assets/images/home/transport/history_bgimg.png'), // 배경 이미지
                                            ),
                                          ),
                                        ),
                                        // 타겟 정보
                                        TargetInfoWidget(
                                          nftType: e.profile.type,
                                          nftUrl: e.profile.url,
                                          nickname: e.targetNickname,
                                          rounds: e.totalRound,
                                          maxProfit: e.maxProfit,
                                          expectedProfit: e.expectedProfit,
                                        ),
                                        // 타겟 버튼
                                        RevengeBtnWidget(
                                          refAttackId: e.refAttackId,
                                          attackPrice: e.cost.amount,
                                          time: int.parse(
                                              e.revengeExpiredTime.toString()),
                                          // lucky: e.lucky,
                                          targetId: e.targetId,
                                          targetNickname: e.targetNickname,
                                          lucky: e.statBonus,
                                          isExecute: e.isExecute,
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
