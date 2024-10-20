import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/mysterybox_provider.dart';

class MysteryBox extends ConsumerStatefulWidget {
  const MysteryBox({super.key});

  @override
  ConsumerState<MysteryBox> createState() => _MysteryBoxState();
}

class _MysteryBoxState extends ConsumerState<MysteryBox> {
  bool isMysteryBox = false;
  bool mysteryBoxLoading = false;

  Future<void> mysteryBoxOpen() async {
    setState(() {
      mysteryBoxLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isMysteryBox = true;
      mysteryBoxLoading = false;
    });
  }

  Future<void> mysteryBoxClaim() async {
    ref.read(mysteryboxProvider.notifier).resetMysterybox();
    ref.read(layoutProvider.notifier).setMyAppBar(true);
    ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
    Navigator.pop(context);
    ref.read(myInfoProvider.notifier).reset();
  }

  @override
  Widget build(BuildContext context) {
    final mysterybox = ref.watch(mysteryboxProvider);
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.lightRed,
                  AppColor.lightRed2,
                ],
              ),
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage('assets/images/common/bg_pattern.png'),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 34.w),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // if (!isMysteryBox && mysterybox is MysteryboxModel)
                      //   Text(mysterybox.reward.boxGrade.toString()),
                      if (!isMysteryBox && mysterybox is MysteryboxModel)
                        GestureDetector(
                          onTap: () => mysteryBoxOpen(),
                          child: Image.asset(
                            'assets/images/home/box_grade_${mysterybox.reward.boxGrade}.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      if (!isMysteryBox && mysterybox is MysteryboxModel)
                        Positioned(
                          right: 32.w,
                          top: -28.w,
                          child: SizedBox(
                            width: 130.w,
                            height: 130.w,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.8,
                                  child: DotLottieLoader.fromAsset(
                                    "assets/images/common/lottie/box_ani.lottie",
                                    frameBuilder: (BuildContext ctx,
                                        DotLottie? dotlottie) {
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
                                Image.asset(
                                  'assets/images/common/luck_icn1.png',
                                  width: 51.4.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (isMysteryBox && mysterybox is MysteryboxModel)
                        Image(
                          width: 343.w,
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                              'assets/images/home/box_grade_${mysterybox.reward.boxGrade}_open.png'),
                        ),
                      if (isMysteryBox && mysterybox is MysteryboxModel)
                        Positioned(
                          left: 0,
                          right: 0,
                          height: 208.w,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              DotLottieLoader.fromAsset(
                                "assets/images/common/lottie/box_ani.lottie",
                                frameBuilder:
                                    (BuildContext ctx, DotLottie? dotlottie) {
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
                              Image.asset(
                                'assets/images/home/exploration/${mysterybox.reward.type}.png',
                                height: 150.w,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                        ),
                      if (isMysteryBox && mysterybox is MysteryboxModel)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: -40.w,
                          child: Center(
                            child: Text(
                              // '500',
                              mysterybox.reward.type != 'GOLD'
                                  ? 'x${mysterybox.reward.amount.toInt()}'
                                  : '${double.parse(mysterybox.reward.amount.toStringAsFixed(6))}',
                              style: TextStyle(
                                  fontFamily: 'Chaloops',
                                  fontSize: 36.w,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                        ),

                      if (mysterybox is MysteryboxLoading) const LoadingWidget()
                    ],
                  ),
                ),
              ),
              if (isMysteryBox)
                CustomButton(
                  fontSize: 20,
                  onPressed: () => mysteryBoxClaim(),
                  lienColor: AppColor.darkYellow,
                  bgColor: AppColor.lightYellow,
                  textColor: Colors.black,
                  text: 'Claim',
                ),
              if (!isMysteryBox)
                MotionButton(
                  onPressed: () => mysteryBoxOpen(),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 50.w,
                    child: Center(
                      child: Text(
                        'Tap to open!',
                        style: TextStyle(
                          fontFamily: 'Chaloops',
                          fontSize: 20.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        if (mysteryBoxLoading) const LoadingWidget()
      ],
    );
  }
}
