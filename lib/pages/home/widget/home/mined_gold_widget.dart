import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/progress_bar_provider.dart';

class MinedGoldWidget extends ConsumerStatefulWidget {
  final bool isDday;
  const MinedGoldWidget({super.key, this.isDday = true});

  @override
  ConsumerState<MinedGoldWidget> createState() => _MinedGoldWidgetState();
}

class _MinedGoldWidgetState extends ConsumerState<MinedGoldWidget> {
  final cartTooltop = SuperTooltipController();
  num mzpSeconds = 0;
  num accumulateGold = 0;
  bool mzpShow = false;

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
        mzpShow = true;
        accumulateGold = home.data.storage.accumulateGold!;
        mzpSeconds = home.data.storage.dividendsCycleGold!;
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
      setState(() {
        accumulateGold = double.parse(newacc.toStringAsFixed(6));
      });
    }
    return Positioned(
      left: 0,
      bottom: 86.w,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: mzpShow
            ? SizedBox(
                width: 244.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      width: 8.w,
                      height: 26.w,
                      fit: BoxFit.fill,
                      'assets/images/home/stone_mzp_left.png',
                    ),
                    if (home is HomeModel)
                      Transform.translate(
                        offset: Offset(-2.w, 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          height: 19.w,
                          color: Colors.black,
                          child: !home.isDivision &&
                                  home.data.storage.attackProfit! == 0
                              ? Text(
                                  'Under construction',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.w,
                                    height: 1.4,
                                  ),
                                )
                              : SuperTooltip(
                                  popupDirection: TooltipDirection.up,
                                  height: 68.w,
                                  controller: cartTooltop,
                                  left: 10.w,
                                  right: 76.w,
                                  barrierColor: Colors.black.withOpacity(0),
                                  content: MyWidget(
                                    minedGold: home.isDivision
                                        ? home.data.storage.minedGold!
                                        : 0,
                                    attackProfit:
                                        home.data.storage.attackProfit!,
                                    lossesFromAttacks: home.isDivision
                                        ? home.data.storage.lossesFromAttacks!
                                        : 0,
                                  ),
                                  child: Mzp(
                                    mzp: home.isDivision
                                        ? accumulateGold
                                        : home.data.storage.attackProfit!,
                                    mzpSize: 11,
                                    mzpSmallSize: 11,
                                    mzpColor: Colors.white,
                                    mzpSmallColor: AppColor.lightGrey,
                                    mzpfontFamily: 'ProximaSoft',
                                  ),
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
              )
            : const SizedBox(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final num minedGold;
  final num attackProfit;
  final num lossesFromAttacks;
  const MyWidget(
      {super.key,
      this.minedGold = 0,
      this.attackProfit = 0,
      this.lossesFromAttacks = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 140,
                child: Text(
                  'Mined Gold',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
              ),
              Mzp(
                mzpIcon: true,
                mzpIconSize: 14.w,
                mzp: minedGold,
                iconRight: 4,
                mzpSize: 12.w,
                mzpSmallSize: 10.w,
                mzpfontFamily: 'ProximaSoft',
                mzpColor: Colors.white,
                mzpSmallColor: AppColor.darkGrey,
                align: MainAxisAlignment.center,
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 140,
                child: Text(
                  'Attack Profit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
              ),
              Mzp(
                mzpIcon: true,
                mzpIconSize: 14.w,
                iconRight: 4,
                mzp: attackProfit,
                mzpSize: 12.w,
                mzpfontFamily: 'ProximaSoft',
                mzpSmallSize: 10.w,
                mzpColor: Colors.white,
                mzpSmallColor: AppColor.darkGrey,
                align: MainAxisAlignment.center,
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 140,
                child: Text(
                  'Losses from Attacks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
              ),
              Mzp(
                mzpIcon: true,
                mzpIconSize: 14.w,
                mzp: lossesFromAttacks,
                mzpSize: 12.w,
                iconRight: 4,
                mzpSmallSize: 10.w,
                mzpfontFamily: 'ProximaSoft',
                mzpColor: Colors.white,
                mzpSmallColor: AppColor.darkGrey,
                align: MainAxisAlignment.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
