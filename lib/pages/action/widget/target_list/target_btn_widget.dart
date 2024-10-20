import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/modal/attack_modal.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';

class TargetBtnWidget extends ConsumerWidget {
  final int targetId;
  final String targetNickname;
  final TargetCostModel cost;
  const TargetBtnWidget({
    super.key,
    required this.targetId,
    required this.cost,
    required this.targetNickname,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        ref.read(soundsProvider.notifier).cilckSound();
        ref.read(targetNicknameProvider.notifier).state = targetNickname;
        modalContent(
          title: 'Attack',
          isMzp: true,
          widget: AttackModal(
            targetId: targetId,
            isGold: cost.type == 'GOLD' ? cost.amount : 0,
          ),
          backClose: false,
        );
        // final attack = await ref.read(attackProvider.notifier).getAttack(
        //       targetId: targetId,
        //     );
        // if (attack) {
        // }
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(2.w),
        width: cost.type == 'ACTION_TICKET' ? 81.w : 129.w,
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
                    Text(
                      'Attack',
                      style: TextStyle(
                        fontFamily: 'Chaloops',
                        fontSize: 14.w,
                        fontWeight: FontWeight.w700,
                        color: AppColor.lightYellow,
                      ),
                    ),
                    if (cost.type == 'ACTION_TICKET')
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/action/icns_target.png',
                            width: 38.38.w,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            'x ${cost.amount.toInt()}',
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 12.w,
                              fontWeight: FontWeight.w700,
                              color: AppColor.lightYellow,
                            ),
                          ),
                        ],
                      ),
                    if (cost.type == 'GOLD')
                      Mzp(
                        align: MainAxisAlignment.center,
                        mzpIcon: true,
                        iconRight: 3,
                        mzpIconSize: 14,
                        mzp: cost.amount,
                        mzpSize: 14,
                        mzpSmallSize: 10,
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
