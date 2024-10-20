import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/provider/tab_provider.dart';
import 'package:simple_animations/simple_animations.dart';

class ExplorationImgWidget extends ConsumerStatefulWidget {
  final String status;
  final double gauge;
  final int shortenedTime;
  const ExplorationImgWidget({
    super.key,
    required this.status,
    required this.gauge,
    required this.shortenedTime,
  });

  @override
  ConsumerState<ExplorationImgWidget> createState() =>
      _ExplorationImgWidgetState();
}

class _ExplorationImgWidgetState extends ConsumerState<ExplorationImgWidget> {
  var control = Control.stop;
  double opacity = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    opacity = 1;
    control = Control.stop;
  }

  @override
  Widget build(BuildContext context) {
    final tab = ref.watch(tabProvider);
    if (tab is ExplorationTabModel) {
      setState(() {
        control = Control.play;
      });
    }
    return Container(
      alignment: Alignment.topCenter,
      constraints: const BoxConstraints(
        maxHeight: 198,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/images/home/exploration/sun.png',
            width: 375.w,
            height: 208.w,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Lottie.asset(
              animate: widget.status == 'STARTED' ? true : false,
              "assets/images/home/lottie/exploration_land${widget.gauge > 0 ? '_cloudrun' : '_cloud'}.json",
              width: 375.w,
              height: 208.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Lottie.asset(
              animate: widget.status == 'STARTED' ? true : false,
              "assets/images/home/lottie/exploration_land${widget.gauge > 0 ? '_mountainrun' : '_mountain'}.json",
              width: 375.w,
              height: 208.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Lottie.asset(
              animate: widget.status == 'STARTED' ? true : false,
              "assets/images/home/lottie/exploration_land${widget.gauge > 0 ? '_cactusrun' : '_cactus'}.json",
              width: 375.w,
              height: 208.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Lottie.asset(
              // repeat: false,
              "assets/images/home/lottie/exploration${widget.status == 'WAITED' ? '_stand' : widget.status == 'COMPLETED' ? '_complete' : widget.gauge > 0 ? '_run' : '_walk'}.json",
              width: 375.w,
              height: 208.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          if (widget.status == 'STARTED')
            Positioned(
                top: -15.w,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  curve: Curves.fastOutSlowIn,
                  opacity: opacity,
                  duration: const Duration(seconds: 1),
                  child: CustomAnimationBuilder<double>(
                    control: control, // bind variable with control instruction
                    tween: Tween<double>(begin: 0, end: 1.0),
                    duration: const Duration(milliseconds: 500),
                    onCompleted: () async {
                      await Future.delayed(
                        const Duration(seconds: 5),
                      );
                      if (context.mounted) {
                        setState(() {
                          opacity = 0;
                        });
                      }
                    },
                    builder: (context, value, child) {
                      // moves child from left to right
                      return Transform.scale(
                        scale: value,
                        child: Opacity(
                          opacity: value,
                          child: child,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (tab is ExplorationTabModel)
                          Text(
                            '-${(tab.shortenedTime) ~/ 60} min',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Chaloops',
                              fontSize: 24.w,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        if (tab is ExplorationTabModel && tab.bonus)
                          SizedBox(
                            width: 6.w,
                          ),
                        if (tab is ExplorationTabModel && tab.bonus)
                          Image.asset(
                            'assets/images/home/exploration/stamina.png',
                            width: 30.w,
                            fit: BoxFit.fitWidth,
                          ),
                      ],
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}
