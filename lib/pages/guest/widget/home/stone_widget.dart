import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/guest/provider/home/home_provider.dart';
import 'package:minewarz_app/pages/guest/provider/home/progress_bar_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';

import 'cart_widget.dart';

class StoneWidget extends ConsumerStatefulWidget {
  final bool isDday;
  final Function callback;

  const StoneWidget({super.key, this.isDday = true, required this.callback});

  @override
  ConsumerState<StoneWidget> createState() => _StoneWidgetState();
}

class _StoneWidgetState extends ConsumerState<StoneWidget> {
  num mzpSeconds = 0;
  num accumulateGold = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    final home = ref.read(homeProvider);
    if (home is HomeModel) {
      setState(() {
        accumulateGold = home.data.storage.accumulateGold!;
        mzpSeconds = home.data.storage.dividendsCycleGold!;
      });
    }
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
                fit: BoxFit.fill,
                alignment: Alignment.center,
                image: AssetImage(!widget.isDday
                    ? 'assets/images/home/mine/mine1.png'
                    : 'assets/images/home/mine/mine1.png'), // 배경 이미지
              ),
            ),
            child: home is HomeModel
                ? Transform.translate(
                    offset: Offset(0, -10.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Container(
                            width: 72.w,
                            height: 12.h,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          top: 2.h,
                          child: Row(
                            children: [
                              Container(
                                width: 68.w,
                                height: 8.h,
                                color: AppColor.darkGrey1,
                                child: Transform.translate(
                                  offset: Offset(1.5.w, -0.5),
                                  child: Row(
                                    children: [
                                      const MineProgressBarAn(),
                                      Image(
                                        height: 8.h,
                                        image: const AssetImage(
                                            'assets/images/mine/gauge_bg_on.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image(
                                height: 8.h,
                                image: const AssetImage(
                                    'assets/images/mine/gauge_bg.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -7.h,
                          left: -15.w,
                          child: Image(
                            width: 24.w,
                            height: 24.h,
                            image: const AssetImage(
                                'assets/images/home/icn_mp.png'),
                          ),
                        ),
                      ], //i
                    ),
                  )
                : Container(),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 122.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
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
                      height: 10.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          width: 8.w,
                          height: 26.w,
                          fit: BoxFit.fill,
                          'assets/images/home/stone_mzp_left.png',
                        ),
                        Transform.translate(
                          offset: Offset(-2.w, 0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6.w),
                            height: 19.w,
                            color: Colors.black,
                            child: !widget.isDday
                                ? Text(
                                    'Under construction',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.w,
                                      height: 1.4,
                                    ),
                                  )
                                : Mzp(
                                    mzp: accumulateGold,
                                    mzpSize: 11,
                                    mzpSmallSize: 11,
                                    mzpColor: Colors.white,
                                    mzpSmallColor: Colors.white,
                                    mzpfontFamily: 'ProximaSoft',
                                  ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-2.w, 0),
                          child: Image.asset(
                            width: 4.w,
                            height: 19.w,
                            fit: BoxFit.fitWidth,
                            'assets/images/home/stone_mzp_right.png',
                          ),
                        ),
                      ],
                    ),
                    if (home is HomeModel)
                      CartWidget(
                        level: home.data.mineLevel!,
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
                          ref.read(homeProvider.notifier).setHomeData();
                        },
                      )
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
        width: gauge * 6.52.w,
        height: 8.h,
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
