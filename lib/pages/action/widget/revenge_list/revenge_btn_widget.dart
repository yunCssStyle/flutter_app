import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/action/modal/revenge_modal.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';

class RevengeBtnWidget extends ConsumerWidget {
  final int time;
  final int lucky;
  final int targetId;
  final int refAttackId;
  final num attackPrice;
  final String targetNickname;
  final bool isExecute;
  const RevengeBtnWidget({
    super.key,
    required this.attackPrice,
    required this.time,
    required this.lucky,
    required this.targetId,
    required this.refAttackId,
    required this.targetNickname,
    required this.isExecute,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(soundsProvider.notifier).cilckSound();
        ref.read(targetNicknameProvider.notifier).state = targetNickname;
        modalContent(
          title: isExecute ? 'Execute' : 'Revenge',
          isMzp: true,
          widget: RevengeModal(
            attackPrice: attackPrice,
            targetId: targetId,
            refAttackId: refAttackId,
            isExecute: isExecute,
          ),
          backClose: false,
        );
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(2.w),
        width: 129.w,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 6.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/images/action/targetbox_bg.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isExecute)
                      Transform.translate(
                        offset: Offset(0, 4.w),
                        child: Image.asset(
                          'assets/images/action/execute_icon.png',
                          height: 33.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    Text(
                      isExecute ? 'Execute' : 'Revenge',
                      style: TextStyle(
                        fontFamily: 'Chaloops',
                        fontSize: 14.w,
                        fontWeight: FontWeight.w700,
                        color: AppColor.darkRed,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -4.w),
                      child: CountdownTimerWidget(
                        endTime: time,
                        fontColor: AppColor.darkRed,
                        fontFamily: 'Chaloops',
                        fontSize: 12,
                        callback: () {
                          // 리스트 새로 고침
                        },
                      ),
                    ),
                    if (lucky > 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/action/icn_intuition.png',
                            width: 18.w,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Intuition +$lucky',
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF00FF94),
                            ),
                          ),
                        ],
                      ),
                    Mzp(
                      align: MainAxisAlignment.center,
                      mzpIcon: true,
                      iconRight: 0,
                      mzpIconSize: 14,
                      mzp: attackPrice,
                      mzpSize: 14,
                      mzpSmallSize: 12,
                      mzpColor: Colors.white,
                      mzpSmallColor: AppColor.lightGrey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
