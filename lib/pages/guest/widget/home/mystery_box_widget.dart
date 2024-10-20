import 'package:animations/animations.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/pages/home/widget/mystery_box.dart';

class MysteryBoxWidget extends StatelessWidget {
  final bool mysteryBox;
  const MysteryBoxWidget({super.key, required this.mysteryBox});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130.w,
      right: 0,
      left: 0,
      child: mysteryBox
          ? Center(
              child: SizedBox(
                width: 100.w,
                child: DotLottieLoader.fromAsset(
                  "assets/images/common/lottie/box_ani.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(
                        dotlottie.animations.values.single,
                        fit: BoxFit.fitWidth,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            )
          : Container(),
    );
  }
}

class MysteryBoxBtnWidget extends StatelessWidget {
  final bool mysteryBox;
  const MysteryBoxBtnWidget({super.key, required this.mysteryBox});

  void mysteryBoxCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160.w,
      right: 0,
      left: 0,
      child: mysteryBox
          ? MotionButton(
              scale: 0.2,
              child: FullPage(
                transitionType: ContainerTransitionType.fade,
                closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                  return FullPageOpen(
                    openContainer: () async {
                      defenseOpens();
                    },
                    height: 31.w,
                    child: Center(
                      child: Image.asset(
                        'assets/images/home/mystery_box.png',
                        width: 56.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                },
                onClosed: mysteryBoxCle,
                child: const FullPageLayout(
                  child: MysteryBox(),
                ),
              ),
            )
          : Container(),
    );
  }
}
