import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/common/full_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/action/screen/attack_revenge_screen.dart';

class ZoneBtnWidget extends StatelessWidget {
  final int revengeTargetCount;
  final bool assigned;
  final bool inspection;
  const ZoneBtnWidget({
    super.key,
    required this.revengeTargetCount,
    required this.assigned,
    required this.inspection,
  });

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 43.w,
      left: 16.w,
      right: 0,
      child: SizedBox(
        height: 61.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!assigned || inspection)
              Container(
                alignment: Alignment.bottomCenter,
                height: 61.w,
                child: CustomButton(
                  onPressed: () {
                    if (inspection) {
                      FToastShow.ftoast(
                        type: 'error',
                        text: 'Available attack time is 00:00–23:30.',
                      );
                    }
                  },
                  isDisabled: !assigned,
                  width: MediaQuery.of(context).size.width / 2 - 15,
                  height: 56.w,
                  text: 'Attack',
                  bgColor: AppColor.lightYellow,
                  lienColor: AppColor.darkYellow,
                  textColor: Colors.black,
                ),
              ),
            if (assigned && !inspection)
              MotionButton(
                scale: 0,
                child: FullPage(
                  transitionType: ContainerTransitionType.fade,
                  closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                    return FullPageOpen(
                      openContainer: () async {
                        defenseOpens();
                      },
                      height: 31.w,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 61.w,
                        child: FullButton(
                          isDisabled: !assigned,
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          height: 56.w,
                          text: 'Attack',
                          bgColor: AppColor.lightYellow,
                          lienColor: AppColor.darkYellow,
                          textColor: Colors.black,
                        ),
                      ),
                    );
                  },
                  onClosed: defenseOpensCle,
                  child: const FullPageLayout(
                    child: AttackRevengeScreen(isLoggedIn: false),
                  ),
                ),
              ),
            if (inspection)
              Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width / 2 - 15,
                height: 61.w,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: CustomButton(
                    onPressed: () {
                      FToastShow.ftoast(
                        type: 'error',
                        text: 'Available attack time is 00:00–23:30.',
                      );
                    },
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 56.w,
                    text: 'Revenge',
                    bgColor: AppColor.lightRed,
                    lienColor: AppColor.lightRed1,
                    textColor: Colors.white,
                  ),
                ),
              ),
            if (!inspection)
              MotionButton(
                scale: 0,
                child: FullPage(
                  transitionType: ContainerTransitionType.fade,
                  closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                    return FullPageOpen(
                      openContainer: () async {
                        defenseOpens();
                      },
                      height: 56.w,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 61.w,
                        width: MediaQuery.of(context).size.width / 2 - 15,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: FullButton(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 15,
                                height: 56.w,
                                text: 'Revenge',
                                bgColor: AppColor.lightRed,
                                lienColor: AppColor.lightRed1,
                                textColor: Colors.white,
                              ),
                            ),
                            if (revengeTargetCount > 0)
                              Positioned(
                                top: -5.w,
                                right: 7.w,
                                child: Container(
                                  height: 18.w,
                                  width: 18.w,
                                  // alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColor.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 2.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      revengeTargetCount.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Chaloops',
                                        fontSize: 12.w,
                                        color: Colors.white,
                                        height: 1.2,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    );
                  },
                  onClosed: defenseOpensCle,
                  child: const FullPageLayout(
                    child: AttackRevengeScreen(isLoggedIn: true),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
