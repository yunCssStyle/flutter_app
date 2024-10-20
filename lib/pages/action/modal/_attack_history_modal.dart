import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/action/model/attack_history_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_history_provider.dart';
import 'package:minewarz_app/pages/action/widget/attack_history/attack_history_widget.dart';

class AttackHistoryModal extends ConsumerStatefulWidget {
  const AttackHistoryModal({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<AttackHistoryModal> createState() => _AttackHistoryModalState();
}

class _AttackHistoryModalState extends ConsumerState<AttackHistoryModal> {
  List<AttackHistoryListModel> sortedTransports = [];
  int currentIndex = 0;
  bool isMore = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(attackHistoryProvider.notifier).setHistoryData();
      initData();
    });
  }

  void initData() async {
    final attackHistor = ref.read(attackHistoryProvider);
    if (attackHistor is AttackHistoryModel &&
        attackHistor.attackHistories.isNotEmpty) {
      setState(() {});
      sortedTransports = attackHistor.attackHistories;
    }
  }

  Future<void> _addItem() async {
    if (!isMore) {
      setState(() {
        isMore = true;
      });
      Future.delayed(const Duration(milliseconds: 3000), () {
        setState(() {
          currentIndex = currentIndex + 1;
          isMore = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final attackHistor = ref.watch(attackHistoryProvider);

    if (attackHistor is AttackHistoryModel) {
      if (attackHistor.attackHistories.isEmpty) {
        return Column(
          children: [
            SizedBox(
              height: 186.w,
            ),
            Text(
              'There are no records.',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProximaSoft',
                fontSize: 16.w,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 36.w,
            ),
            Image(
              width: 112.w,
              fit: BoxFit.fitWidth,
              image: const AssetImage('assets/images/profile/nft_nolist.png'),
            ),
          ],
        );
      }
      return NotificationListener<ScrollUpdateNotification>(
        onNotification: (ScrollUpdateNotification notification) {
          if (notification.metrics.maxScrollExtent * 0.85 <
              notification.metrics.pixels) {
            _addItem();
          }
          // _onScrollNotification(notification);
          // sortedTransports.listen(notification);
          return false;
        },
        child: ListView.builder(
            itemCount: attackHistor.attackHistories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(4.w),
                    margin: EdgeInsets.only(bottom: 8.w),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          AttackHistoryWidget(
                            result: attackHistor.attackHistories[index].result,
                            type: attackHistor
                                .attackHistories[index].profile.type,
                            url:
                                attackHistor.attackHistories[index].profile.url,
                            name: attackHistor
                                    .attackHistories[index].targetNickname ??
                                'Unknown',
                            lostCount:
                                attackHistor.attackHistories[index].totalRound,
                            rounds: attackHistor.attackHistories[index].round,
                            gained: attackHistor.attackHistories[index].gained,
                            jjackpot:
                                attackHistor.attackHistories[index].jackpotFund,
                            lootingFee:
                                attackHistor.attackHistories[index].lootingFee,
                            time: attackHistor
                                .attackHistories[index].attackedTime,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(currentIndex.toString()),
                  Text(index.toString()),
                  if (isMore) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: CircularProgressIndicator(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ],
              );
            }),
      );
      // return Column(
      //   children: sortedTransports.map((e) {
      //     return Container(
      //       color: Colors.black,
      //       padding: EdgeInsets.all(4.w),
      //       margin: EdgeInsets.only(bottom: 8.w),
      //       child: IntrinsicHeight(
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               width: 5.w,
      //               // height: 126.w,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                   fit: BoxFit.fitHeight,
      //                   repeat: ImageRepeat.noRepeat,
      //                   alignment: Alignment.topLeft,
      //                   image: AssetImage(
      //                       'assets/images/home/transport/history_bgimg.png'), // 배경 이미지
      //                 ),
      //               ),
      //             ),
      //             AttackHistoryWidget(
      //               result: e.result,
      //               type: e.profile.type,
      //               url: e.profile.url,
      //               name: e.targetNickname ?? 'Unknown',
      //               lostCount: e.totalRound,
      //               rounds: e.round,
      //               gained: e.gained,
      //               jjackpot: e.jackpotFund,
      //               lootingFee: e.lootingFee,
      //               time: e.attackedTime,
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // );
    } else {
      return Stack(children: [
        SizedBox(
          height: 476.h,
        ),
        if (attackHistor is! AttackHistoryLoading) const LoadingWidget(),
      ]);
    }
  }
}
