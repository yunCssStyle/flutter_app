import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/pages/action/model/weapon_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/provider/weapon_provider.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:simple_animations/simple_animations.dart';

class AttackActionWidget extends ConsumerStatefulWidget {
  final Function() callback;
  final int gunIndex;
  const AttackActionWidget(
      {super.key, required this.callback, required this.gunIndex});

  @override
  ConsumerState<AttackActionWidget> createState() => _AttackActionWidgetState();
}

class _AttackActionWidgetState extends ConsumerState<AttackActionWidget>
    with AnimationMixin {
  late Animation<double> size;
  WeaponModel? weaponData;
  @override
  void initState() {
    size = Tween<double>(begin: -200, end: 132).animate(controller);
    controller.play();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      attackActionResult();
    });
  }

  void attackActionResult() async {
    if (!mounted) return;
    await Future.delayed(const Duration(seconds: 3));
    final weapon = ref.read(weaponProvider.notifier).getState();
    if (weapon == weaponData) {
      widget.callback();
    } else {
      attackActionResult();
    }
  }

  @override
  Widget build(BuildContext context) {
    final kikiTween = MovieTween()
      ..tween('name', Tween<double>(begin: -150.w, end: 132.w),
          duration: const Duration(milliseconds: 400))
      ..tween('img', Tween<double>(begin: -300.w, end: -40),
          duration: const Duration(milliseconds: 200));
    final papaTween = MovieTween()
      ..tween('name', Tween<double>(begin: -150.w, end: 132.w),
          duration: const Duration(milliseconds: 400))
      ..tween('img', Tween<double>(begin: -300.w, end: -80),
          duration: const Duration(milliseconds: 200));
    final myInfo = ref.watch(myInfoProvider);
    final targetNickname = ref.watch(targetNicknameProvider);
    final weapon = ref.watch(weaponProvider);
    setState(() {
      weaponData = weapon is WeaponModel ? weapon : null;
    });
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/action/attack_action_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: DeviceHeight().firstTop(20.w),
            ),
            Expanded(
              child: PlayAnimationBuilder<Movie>(
                tween: kikiTween, // provide tween
                duration: kikiTween
                    .duration, // total duration obtained from MovieTween
                builder: (context, value, _) {
                  return Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: value.get('name'),
                        top: 20.w,
                        child: Container(
                          width: 227.02.w,
                          height: 86.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/action/kiki_name.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 13.w),
                            child: Text(
                              myInfo is MyInfoModel
                                  ? myInfo.member.nickname
                                  : 'HAPPYKIKI1996217',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontSize: 22.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: value.get('img'),
                        top: 20.w,
                        child: Lottie.asset(
                          'assets/images/action/lottie/kiki_img${widget.gunIndex}.json',
                          width: 270.w,
                          fit: BoxFit.fitWidth,
                        ),
                        // Image.asset(
                        //           'assets/images/action/kiki_img${widget.gunIndex}.png',
                        //           width: 239.w,
                        //           fit: BoxFit.fitWidth,
                        //         ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: PlayAnimationBuilder<Movie>(
                tween: papaTween, // provide tween
                duration: papaTween
                    .duration, // total duration obtained from MovieTween
                builder: (context, value, _) {
                  return Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        right: value.get('name'),
                        bottom: 10.w,
                        child: Container(
                          width: 227.02.w,
                          height: 86.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/action/papa_name.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 25.w),
                            child: Text(
                              targetNickname,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontSize: 22.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: value.get('img'),
                        bottom: 56.w,
                        child: Lottie.asset(
                          'assets/images/action/lottie/papa_img.json',
                          width: 290.w,
                          fit: BoxFit.fitWidth,
                        ),

                        // Image.asset(
                        //   'assets/images/action/papa_img.png',
                        //   width: 239.w,
                        //   fit: BoxFit.fitWidth,
                        // ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: DeviceHeight().firstBotton(10.w),
            ),
          ],
        ),
      ),
    );
  }
}
