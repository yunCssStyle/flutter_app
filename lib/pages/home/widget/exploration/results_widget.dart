import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';

class ResultsWidget extends ConsumerStatefulWidget {
  const ResultsWidget({super.key});

  @override
  ConsumerState<ResultsWidget> createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends ConsumerState<ResultsWidget> {
  bool isMysteryBox = false;
  bool isLoading = false;

  boxOpen() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      isLoading = false;
      isMysteryBox = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final exploration = ref.watch(explorationProvider);
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
        if (exploration is ExplorationModel &&
            exploration.status == 'COMPLETED')
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 34.w),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    itemCount: exploration.data.rewards!.length, //item 개수
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 1 / 0.9, //item 의 가로 1, 세로 2 의 비율
                      mainAxisSpacing: 10, //수평 Padding
                      crossAxisSpacing: 10, //수직 Padding
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final rewardsIndex = exploration.data.rewards![index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (!isMysteryBox)
                            GestureDetector(
                              onTap: () => boxOpen(),
                              child: SizedBox(
                                width: 148.w,
                                height: 80.w,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(
                                      'assets/images/home/box_grade_${rewardsIndex.boxGrade}.png',
                                      fit: BoxFit.cover,
                                    ),
                                    if (rewardsIndex.bonus)
                                      Positioned(
                                        top: -20.w,
                                        height: 70.w,
                                        right: 5.w,
                                        child: DotLottieLoader.fromAsset(
                                          "assets/images/common/lottie/box_ani.lottie",
                                          frameBuilder: (BuildContext ctx,
                                              DotLottie? dotlottie) {
                                            if (dotlottie != null) {
                                              return Lottie.memory(
                                                height: 70.w,
                                                dotlottie
                                                    .animations.values.single,
                                                fit: BoxFit.fitHeight,
                                              );
                                            } else {
                                              return Container();
                                            }
                                          },
                                        ),
                                      ),
                                    if (rewardsIndex.bonus)
                                      Positioned(
                                        top: 0,
                                        right: 23.w,
                                        child: Image.asset(
                                          'assets/images/home/stat_luckimg.png',
                                          height: 38,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          if (isMysteryBox)
                            SizedBox(
                              width: 148.w,
                              height: 80.w,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    'assets/images/home/box_grade_${rewardsIndex.boxGrade}_open.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: -20.w,
                                    height: 130.w,
                                    right: 0,
                                    left: 0,
                                    child: DotLottieLoader.fromAsset(
                                      "assets/images/common/lottie/box_ani.lottie",
                                      frameBuilder: (BuildContext ctx,
                                          DotLottie? dotlottie) {
                                        if (dotlottie != null) {
                                          return Lottie.memory(
                                            height: 130.w,
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
                                    top: 0,
                                    right: 0,
                                    left: 0,
                                    child: Image.asset(
                                      'assets/images/home/exploration/${rewardsIndex.type}.png',
                                      height: 80,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (isMysteryBox)
                            Text(
                              rewardsIndex.type != 'GOLD'
                                  ? 'x${rewardsIndex.amount.toInt()}'
                                  : '${double.parse(rewardsIndex.amount.toStringAsFixed(6))}',
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontSize:
                                    rewardsIndex.amount.toString().length > 14
                                        ? 20.w
                                        : 24.w,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
                if (isMysteryBox)
                  CustomButton(
                    fontSize: 20,
                    onPressed: () {
                      ref.read(explorationProvider.notifier).postClaim();
                      Navigator.pop(context);
                      ref.read(myInfoProvider.notifier).reset();
                    },
                    lienColor: AppColor.darkYellow,
                    bgColor: AppColor.lightYellow,
                    textColor: Colors.black,
                    text: 'Claim',
                  ),
                if (!isMysteryBox)
                  MotionButton(
                    onPressed: () => boxOpen(),
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
        if (isLoading) const LoadingWidget()
      ],
    );
  }
}
