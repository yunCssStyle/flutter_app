import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/full_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/pages/action/screen/attack_revenge_screen.dart';

class RevengeBtnWidget extends StatelessWidget {
  final Function revengeOpen;
  const RevengeBtnWidget({super.key, required this.revengeOpen});

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MotionButton(
        scale: 0.05,
        child: FullPage(
          transitionType: ContainerTransitionType.fade,
          closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
            return FullPageOpen(
              openContainer: () async {
                Navigator.pop(context);
                revengeOpen();
                defenseOpens();
              },
              height: 31.w,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 61.w,
                child: const FullButton(
                  bgColor: AppColor.lightRed,
                  lienColor: AppColor.lightRed1,
                  text: 'Revenge',
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
    );
  }
}
