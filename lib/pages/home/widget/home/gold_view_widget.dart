import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/widget/home/stone_widget.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/progress_bar_provider.dart';
import 'package:minewarz_app/pages/home/widget/home/mzt_widget.dart';

class GoldViewWidget extends ConsumerStatefulWidget {
  final bool isDday;

  const GoldViewWidget({super.key, this.isDday = true});

  @override
  ConsumerState<GoldViewWidget> createState() => _GoldViewWidgetState();
}

class _GoldViewWidgetState extends ConsumerState<GoldViewWidget> {
  final cartTooltop = SuperTooltipController();
  num mzpSeconds = 0;
  num accumulateGold = 0;
  num minedSecondsGold = 0;
  bool mzpShow = false;
  bool infoShow = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initCall();
    });
  }

  initCall() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      ref.read(homeProvider.notifier).setHomeData();
      final home = ref.watch(homeProvider);
      if (home is HomeModel && home.isDivision) {
        final accumulate = home.data.storage.accumulateGold!;
        final mined = home.data.storage.minedGold!;
        mzpShow = true;
        accumulateGold = double.parse(accumulate.toStringAsFixed(2));
        mzpSeconds = home.data.storage.dividendsCycleGold!;
        minedSecondsGold = double.parse(mined.toStringAsFixed(2));
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initCall();
    });
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
      final newmined = minedSecondsGold + mzpSeconds;
      setState(() {
        accumulateGold = double.parse(newacc.toStringAsFixed(2));
        minedSecondsGold = double.parse(newmined.toStringAsFixed(2));
      });
    }

    return Positioned(
      top: 212.w,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: SizedBox(
        width: 173.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  infoShow = !infoShow;
                });
              },
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 3.w,
                  height: 26.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.center,
                      image: AssetImage(
                          'assets/images/home/totalgold_left.png'), // 배경 이미지
                    ),
                  ),
                ),
                Container(
                  width: 165.w,
                  height: 26.w,
                  padding: EdgeInsets.only(left: 3.6.w, right: 3.6.w),
                  decoration: const BoxDecoration(
                    color: Color(0xFF302C2C),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: home is HomeModel
                              ? Mzp(
                                  mzpIconPath:
                                      'assets/images/home/icn_gold.png',
                                  mzpIconSize: 18,
                                  mzpIcon: true,
                                  iconRight: 4,
                                  mzp: home.isDivision
                                      ? accumulateGold
                                      : home.data.storage.attackProfit!,
                                  align: MainAxisAlignment.start,
                                  mzpSize: 16,
                                  mzpSmallSize: 12,
                                  mzpColor: Colors.white,
                                  mzpSmallColor: AppColor.lightGrey,
                                )
                              : const SizedBox()),
                      Transform.rotate(
                        angle: infoShow ? 0 : 3.14159,
                        child: Image.asset(
                          width: 18.w,
                          fit: BoxFit.fitWidth,
                          'assets/images/home/fold_icon.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  width: 3.w,
                  height: 26.w,
                  'assets/images/home/totalgold_right.png',
                ),
              ]),
            ),
            if (home is HomeModel && infoShow)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 140.w,
                    ),
                    child: Container(
                      width: 165.w,
                      color: Colors.black,
                      child: mzpShow
                          ? MyWidget(
                              totalGold: home.isDivision
                                  ? accumulateGold
                                  : home.data.storage.attackProfit!,
                              minedGold: home.isDivision ? minedSecondsGold : 0,
                              attackProfit: home.data.storage.attackProfit!,
                              lossesFromAttacks: home.isDivision
                                  ? home.data.storage.lossesFromAttacks!
                                  : 0,
                            )
                          : const LoadingWidget(
                              bgOpacity: 0.1, size: 50, isPositioned: false),
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                const SizedBox(width: 5),
                Stack(
                  children: [
                    Container(
                        height: 2.h,
                        width: 164.w,
                        color: const Color(0xFF616161)),
                    const Positioned(
                        top: 0, left: 0, child: MineProgressBarAn())
                  ],
                )
              ],
            ),
            if (home is HomeModel && home.isDivision) const MzpWidget(),
          ],
        ),
      )),
    );
  }
}

class MyWidget extends StatelessWidget {
  final num totalGold;
  final num minedGold;
  final num attackProfit;
  final num lossesFromAttacks;

  const MyWidget({
    super.key,
    this.totalGold = 0,
    this.minedGold = 0,
    this.attackProfit = 0,
    this.lossesFromAttacks = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
      child: SizedBox(
        width: 165.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      width: 12.w,
                      fit: BoxFit.fitHeight,
                      'assets/images/home/icn_mg.png',
                    ),
                    const SizedBox(width: 6),
                    const Expanded(
                      child: Text(
                        'Mined Gold',
                        style: TextStyle(
                          color: Color(0xffcacaca),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.w,
                ),
                Mzp(
                  mzpIcon: false,
                  mzp: minedGold,
                  iconRight: 4,
                  mzpSize: 12.w,
                  mzpSmallSize: 10.w,
                  mzpfontFamily: 'ProximaSoft',
                  mzpColor: Colors.white,
                  mzpSmallColor: AppColor.darkGrey,
                  align: MainAxisAlignment.start,
                ),
              ],
            ),
            SizedBox(
              height: 8.w,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      width: 12.w,
                      fit: BoxFit.fitHeight,
                      'assets/images/home/icn_ap.png',
                    ),
                    const SizedBox(width: 6),
                    const Expanded(
                      child: Text(
                        'Attack Profit',
                        style: TextStyle(
                          color: Color(0xffcacaca),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.w,
                ),
                Mzp(
                  mzpIcon: false,
                  iconRight: 4,
                  mzp: attackProfit,
                  mzpSize: 12.w,
                  mzpfontFamily: 'ProximaSoft',
                  mzpSmallSize: 10.w,
                  mzpColor: Colors.white,
                  mzpSmallColor: AppColor.darkGrey,
                  align: MainAxisAlignment.start,
                ),
              ],
            ),
            SizedBox(
              height: 8.w,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      width: 12.w,
                      fit: BoxFit.fitHeight,
                      'assets/images/home/icn_lfa.png',
                    ),
                    const SizedBox(width: 6),
                    const Expanded(
                      child: Text(
                        'Losses from Attacks',
                        style: TextStyle(
                          color: Color(0xffcacaca),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.w,
                ),
                Mzp(
                  mzpIcon: false,
                  mzp: lossesFromAttacks,
                  mzpSize: 12.w,
                  iconRight: 4,
                  mzpSmallSize: 10.w,
                  mzpfontFamily: 'ProximaSoft',
                  mzpColor: Colors.white,
                  mzpSmallColor: AppColor.darkGrey,
                  align: MainAxisAlignment.start,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
