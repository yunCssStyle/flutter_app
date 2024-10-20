import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';
import 'package:minewarz_app/pages/home/provider/gauge_provider.dart';
import 'package:simple_animations/simple_animations.dart';

class TabWidget extends ConsumerStatefulWidget {
  final int tabRemainingCount;
  final double gauge;
  final String status;
  final List<RewardsModel>? rewards;
  const TabWidget({
    super.key,
    required this.tabRemainingCount,
    required this.gauge,
    required this.status,
    this.rewards,
  });

  @override
  ConsumerState<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends ConsumerState<TabWidget> {
  double hand = 1;
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/home/exploration/ground.png',
          width: 316.w,
          fit: BoxFit.fitWidth,
        ),
        if (widget.status == 'STARTED')
          if (widget.tabRemainingCount > 0)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    if (widget.gauge == 260) {
                      ref.read(explorationProvider.notifier).postTab();
                      ref.read(gaugeProvider.notifier).reset();
                    } else {
                      ref.read(gaugeProvider.notifier).clickGauge();
                    }
                  },
                  child: LoopAnimationBuilder<double?>(
                    tween: Tween<double>(begin: 1, end: 0.9),
                    duration: const Duration(microseconds: 300000),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        alignment: Alignment.bottomCenter,
                        child: child,
                      );
                    },
                    // optional parameters
                    curve: Curves.easeInOut,
                    child: widget.gauge == 0
                        ? Image.asset(
                            'assets/images/home/exploration/guide_hand.png',
                            width: 96.w,
                            fit: BoxFit.fitWidth,
                          )
                        : Container(
                            color: Colors.transparent,
                            width: 96.w,
                            height: 96.w,
                          ),
                  ),
                ),
              ),
            ),
        if (widget.status == 'COMPLETED')
          Positioned(
            left: 0,
            right: 0,
            bottom: -30.w,
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 80.w,
                  ),
                  Positioned(
                    bottom: 0,
                    height: 100.w,
                    left: 0,
                    right: 0,
                    child: DotLottieLoader.fromAsset(
                      "assets/images/common/lottie/box_ani.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                        if (dotlottie != null) {
                          return Lottie.memory(
                            height: 100.w,
                            dotlottie.animations.values.single,
                            fit: BoxFit.fitHeight,
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/home/mystery_box${widget.rewards!.map<int>((reward) => reward.boxGrade).reduce((value, element) => value > element ? value : element)}.png',
                      height: 55.w,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    child: Transform.translate(
                      offset: Offset(25.w, -7.w),
                      child: Center(
                        child: Container(
                          height: 24.w,
                          width: 24.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.lightYellow,
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.black,
                                width: 2.w,
                              ),
                            ),
                          ),
                          child: Text(
                            'x${widget.rewards!.length}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  widget.rewards!.length > 9 ? 12.w : 14.w,
                              color: Colors.black,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
