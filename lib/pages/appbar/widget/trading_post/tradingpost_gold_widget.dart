import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/appbar/provider/trading_post_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';

class TradingPostGoldWidget extends ConsumerStatefulWidget {
  const TradingPostGoldWidget({super.key});

  @override
  ConsumerState<TradingPostGoldWidget> createState() =>
      _TradingPostGoldWidgetState();
}

class _TradingPostGoldWidgetState extends ConsumerState<TradingPostGoldWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  // 벨 이미지 애니메이션 변수
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    // 벨 이미지 애니메이션
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
    final tradingPost = ref.watch(tradingPostProvider);
    final home = ref.watch(homeProvider);
    return Transform.translate(
      offset: Offset(0, -20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 242.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                    'assets/images/common/trading_post/tradingpost_board.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.w,
                ),
                Text(
                  'Owned Gold',
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    color: AppColor.darkBrown,
                    fontSize: 12.w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Mzp(
                  mzpIcon: true,
                  mzpIconSize: 14.w,
                  mzp: tradingPost is TradingPostModel
                      ? tradingPost.ownedGold.floor()
                      : 0.0,
                  mzpSize: 16.w,
                  mzpSmallSize: 12.w,
                  mzpColor: Colors.black,
                  mzpSmallColor: AppColor.darkGrey,
                  align: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 5.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Packed Gold',
                      style: TextStyle(
                        fontFamily: 'Chaloops',
                        color: AppColor.darkBrown,
                        fontSize: 12.w,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    if (home is HomeModel)
                      if (home.newBadge.tradingPost)
                        SvgPicture.asset(
                          height: 12.h,
                          'assets/images/home/icn_new.svg',
                          fit: BoxFit.fitHeight,
                        ),
                  ],
                ),
                Mzp(
                  mzpIcon: true,
                  mzpIconSize: 14.w,
                  mzp: tradingPost is TradingPostModel
                      ? tradingPost.packedGold.floor()
                      : 0.0,
                  mzpSize: 16.w,
                  mzpSmallSize: 12.w,
                  mzpColor: Colors.black,
                  mzpSmallColor: AppColor.darkGrey,
                  align: MainAxisAlignment.center,
                ),
                Transform.translate(
                  offset: Offset(86.w, 14.w),
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
                            width: 80.w,
                            dotlottie.animations.values.single,
                            fit: BoxFit.fitWidth,
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
