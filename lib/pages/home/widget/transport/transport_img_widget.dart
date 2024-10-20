import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class TransportImgWidget extends ConsumerStatefulWidget {
  const TransportImgWidget({super.key});

  @override
  ConsumerState<TransportImgWidget> createState() => _TransportImgWidgetState();
}

class _TransportImgWidgetState extends ConsumerState<TransportImgWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223.w,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/images/home/transport/transport_img_top.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: DotLottieLoader.fromAsset(
              "assets/images/home/lottie/home_transport_character.lottie",
              frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                if (dotlottie != null) {
                  return Lottie.memory(
                    height: 156.w,
                    dotlottie.animations.values.single,
                    fit: BoxFit.fitHeight,
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 60.w,
            child: Transform.translate(
              offset: Offset(114.w, 0),
              child: GestureDetector(
                onTap: () async {
                  if (!isPlaying) {
                    _controller.forward();
                    ref.read(soundsProvider.notifier).cilckBellSound();
                    setState(() {
                      isPlaying = true;
                    });
                  }
                },
                child: DotLottieLoader.fromAsset(
                  "assets/images/common/lottie/bell.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(
                        controller: animation,
                        width: 101.w,
                        height: 143.w,
                        dotlottie.animations.values.single,
                        fit: BoxFit.fitHeight,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
