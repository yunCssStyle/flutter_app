import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/model/attack_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';

class AttackRoundWidget extends ConsumerStatefulWidget {
  const AttackRoundWidget({super.key});

  @override
  ConsumerState<AttackRoundWidget> createState() => _AttackRoundWidgetState();
}

class _AttackRoundWidgetState extends ConsumerState<AttackRoundWidget> {
  @override
  Widget build(BuildContext context) {
    final attack = ref.watch(attackProvider);
    return Column(
      children: [
        if (attack is AttackModel)
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/action/round_left_bg.png',
                  height: 40.w,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  height: 40.w,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Round ${attack.round}',
                          style: TextStyle(
                            fontSize: 24.w,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w700,
                            color: AppColor.lightYellow,
                          ),
                        ),
                        TextSpan(
                          text: '/${attack.totalRound}',
                          style: TextStyle(
                            fontSize: 24.w,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/action/round_right_bg.png',
                  height: 40.w,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
        SizedBox(height: 11.w),
        if (attack is AttackModel)
          SizedBox(
            width: (attack.totalRound * 20.8).w,
            height: 58.71.w,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 0,
                  top: 3.71.w,
                  child: Container(
                    width: (attack.totalRound - 1) * 25.w,
                    height: 4.4.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.w,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 3.71.w,
                  child: Container(
                    width: (attack.round - 1) * 25.w,
                    height: 4.4.w,
                    decoration: BoxDecoration(
                      color: AppColor.darkBule,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.w,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -7.w,
                  top: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      attack.totalRound,
                      (index) {
                        return Container(
                          clipBehavior: Clip.none,
                          width: 14.w,
                          height: 14.w,
                          margin: EdgeInsets.only(right: 11.w),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                index == attack.round - 1
                                    ? 'assets/images/action/round_icon_on.png'
                                    : index < attack.round - 1
                                        ? 'assets/images/action/round_icon_off.png'
                                        : 'assets/images/action/round_icon.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: -7.w,
                  top: 15.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      attack.totalRound,
                      (index) {
                        return Container(
                          clipBehavior: Clip.none,
                          width: 16.w,
                          margin: EdgeInsets.only(right: 9.w),
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Text(
                                (index + 1).toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.w,
                                  fontFamily: 'Chaloops',
                                  fontWeight: FontWeight.w700,
                                  height: 1.2,
                                  color: index == attack.round - 1
                                      ? AppColor.lightYellow
                                      : index < attack.round - 1
                                          ? AppColor.darkGrey
                                          : AppColor.lightGrey2,
                                ),
                              ),
                              if (index == attack.round - 1)
                                Positioned(
                                  top: 20.w,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 18.w,
                                          right: 4.w,
                                          bottom: 1.w,
                                          top: 2.w,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            horizontal: BorderSide(
                                              color: Colors.black,
                                              width: 2.w,
                                            ),
                                          ),
                                          color: AppColor.lightYellow,
                                        ),
                                        child: Mzp(
                                          mzp: attack.roundProfit,
                                          mzpSize: 16,
                                          mzpSmallSize: 11,
                                          mzpColor: Colors.black,
                                          mzpSmallColor:
                                              const Color(0xFF272727),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0.8.w,
                                        left: -10.w,
                                        child: Image.asset(
                                          'assets/images/action/roundmzp_icon.png',
                                          width: 25.17.w,
                                          height: 24.87.w,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: -4.w,
                                        child: Image.asset(
                                          'assets/images/action/roundmzp_right.png',
                                          width: 4.w,
                                          height: 23.5.w,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Positioned(
                                        top: -4.w,
                                        left: 0,
                                        right: 0,
                                        child: Center(
                                          child: Image.asset(
                                            'assets/images/action/roundmzp_top.png',
                                            width: 12.w,
                                            height: 6.w,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
