import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class KikiWidget extends StatelessWidget {
  final bool isDday;
  final bool mysteryBox;
  const KikiWidget({super.key, this.isDday = true, this.mysteryBox = false});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      width: MediaQuery.of(context).size.width,
      height: 197.w,
      child: !isDday
          ? Image.asset(
              'assets/images/home/KIKI_dday.png',
            )
          : Container(
              alignment: Alignment.topCenter,
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: DotLottieLoader.fromAsset(
                mysteryBox
                    ? "assets/images/home/lottie/KIKI_Luck.lottie"
                    : "assets/images/home/lottie/KIKI_default.lottie",
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
    );
  }
}
