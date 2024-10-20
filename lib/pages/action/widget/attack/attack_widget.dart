import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class AttackWidget extends ConsumerWidget {
  final String statEvent;
  final int index;
  final Function() callback;
  const AttackWidget({
    super.key,
    required this.index,
    required this.statEvent,
    required this.callback,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (statEvent != 'ATTACKER') {
          ref.read(soundsProvider.notifier).cilckSound();
          callback();
        }
      },
      child: Container(
        width: 160.w,
        height: 170.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/action/gun${statEvent == 'ATTACKER' ? '_me' : ''}$index.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Stack(
          children: [
            if (statEvent != 'NONE')
              Positioned(
                top: -10.w,
                left: 40.w,
                width: 97.96.w,
                height: 97.96.w,
                child: DotLottieLoader.fromAsset(
                  "assets/images/common/lottie/box_ani.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(
                        width: 97.96.w,
                        dotlottie.animations.values.single,
                        fit: BoxFit.fitWidth,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            if (statEvent == 'DEFENDER')
              Positioned(
                top: 10.w,
                left: 60.w,
                width: 60.19.w,
                height: 73.w,
                child: Image.asset(
                  'assets/images/action/opponent_img.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            if (statEvent == 'ATTACKER')
              Positioned(
                top: 10.w,
                left: 60.w,
                width: 60.19.w,
                height: 73.w,
                child: Image.asset(
                  'assets/images/action/mi_img.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
