import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/supertooltip/src/super_tooltip_controller.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/progress_bar_provider.dart';

import 'cart_widget.dart';

class StoneWidget extends ConsumerStatefulWidget {
  final bool isDday;
  final Function callback;

  const StoneWidget({super.key, this.isDday = true, required this.callback});

  @override
  ConsumerState<StoneWidget> createState() => _StoneWidgetState();
}

class _StoneWidgetState extends ConsumerState<StoneWidget> {
  final cartTooltop = SuperTooltipController();
  num mzpSeconds = 0;
  num accumulateGold = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initCall();
    });
  }

  Future<void> initCall() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      ref.read(homeProvider.notifier).setHomeData();
      final home = ref.watch(homeProvider);
      if (home is HomeModel && home.isDivision) {
        accumulateGold = home.data.storage.accumulateGold!;
        mzpSeconds = home.data.storage.dividendsCycleGold!;
      }
    }
  }

  @override
  void dispose() {
    cartTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    final gauge = ref.watch(progressBarProvider);
    if (gauge == 0) {
      final newacc = accumulateGold + mzpSeconds;
      setState(() {
        accumulateGold = double.parse(newacc.toStringAsFixed(6));
      });
    }
    return Positioned(
      bottom: 0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 208.w,
            padding: EdgeInsets.only(bottom: 98.w),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                image: AssetImage(!widget.isDday
                    ? 'assets/images/home/mine/mine1.png'
                    : 'assets/images/home/mine/mine${home is HomeModel ? home.isDivision ? home.data.mineLevel == 0 ? 1 : home.data.mineLevel.toString() : '1' : '1'}.png'), // 배경 이미지
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 122.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                image:
                    AssetImage('assets/images/home/stonewall1.png'), // 배경 이미지
              ),
            ),
            child: Center(
              child: SizedBox(
                width: 244.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.w,
                    ),
                    if (widget.isDday && home is HomeModel && home.isDivision)
                      CartWidget(
                        level: home.data.mineLevel! == 0
                            ? 1
                            : home.data.mineLevel!,
                        nowDateTime: home.data.storage.nowDateTime!,
                        nextTransportTime: home.data.storage.nextTransportTime!,
                        previousTransportTime:
                            home.data.storage.previousTransportTime!,
                        callback: widget.callback,
                      ),
                    if (!widget.isDday && home is HomeModel)
                      CountdownTimerWidget(
                        endTime: home.nextReferenceTime!,
                        fontFamily: 'Chaloops',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        callback: () {
                          ref.read(homeProvider.notifier).cartreset();
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MineProgressBarAn extends ConsumerWidget {
  const MineProgressBarAn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gauge = ref.watch(progressBarProvider);
    return AnimatedSize(
      duration: Duration(milliseconds: gauge == 0 ? 10 : 1000),
      curve: Curves.linear,
      alignment: Alignment.centerLeft,
      child: Container(
        width: gauge * 16.4.w,
        height: 2.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            alignment: Alignment.centerLeft,
            repeat: ImageRepeat.repeat,
            image: AssetImage('assets/images/mine/gauge_on.png'),
          ),
        ),
      ),
    );
  }
}
