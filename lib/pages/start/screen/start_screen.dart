// ignore_for_file: use_build_context_synchronously

import 'dart:math';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:minewarz_app/pages/login/widget/login_video.dart';
import 'package:minewarz_app/pages/start/screen/signup_screen.dart';

class StartScreen extends ConsumerStatefulWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  Random random = Random();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    await ref.read(soundsUrlProvider.notifier).soundUrl('intro');
    ref.read(soundsProvider.notifier).soundFun();
  }

  startFunction(AuthCheckBase? auth, id, nickname) async {
    final storage = ref.watch(secureStorageProvider);
    final type = await storage.read(key: 'type');
    if (type != 'dev' && type != 'qa') {
      final versionUpdate = await versionCheck();
      if (versionUpdate) {
        context.go('/version_update');
        return;
      }
    }
    if (mounted) {
      // FirebaseAnalytics.instance.setUserId(id: id.toString());
      ref.read(layoutProvider.notifier).setMyAppBar(true);
      ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
      ref.read(soundsUrlProvider.notifier).soundUrl('home');
      ref.read(soundsProvider.notifier).soundFun();
      if (auth is AuthCheckGuest) {
        context.go('/guest');
        final storage = ref.read(secureStorageProvider);
        final storageGuestId = await storage.read(key: 'guestId');
        if (storageGuestId == null) {
          await storage.write(
              key: 'guestId', value: 'Guest ${10 + random.nextInt(290)}');
        }
      } else {
        ref.read(myInfoProvider.notifier).postMyInfoData();
        context.go('/home');
      }
      await FirebaseAnalytics.instance.logEvent(
        name: "click_start",
        parameters: {"nickname": auth is AuthCheckGuest ? 'guest' : nickname},
      );
      await FirebaseAnalytics.instance.setUserId(id: nickname);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AuthCheckBase? auth = ref.watch(loginProvider); // 로그인 체크
    final myInfo = ref.watch(myInfoProvider); // 유저 정보
    return LayoutWidget(
      backgroundColor: Colors.black,
      safeAreaIs: false,
      bottomNavigationBar: false,
      myAppBar: false,
      backgroundImage: 'assets/images/login/login_bg.png',
      child: Stack(
        children: [
          //로그인 영상
          const LoginVideo(),
          Positioned(
            top: DeviceHeight().firstTop(38.w), // 상단 여백
            left: 0,
            right: 0,
            child: Center(
              child: Image(
                width: 229.w,
                image:
                    const AssetImage('assets/images/login/logo.png'), // 로고 이미지
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (myInfo is MyInfoModel) // 유저 정보가 있을 경우
                MotionButton(
                  onPressed: () => startFunction(
                      auth, myInfo.member.id, myInfo.member.nickname), // 시작 버튼
                  scale: 0.1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber.withOpacity(0.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: 350.w),
                      child: Center(
                        child: Image(
                          width: 150.w,
                          image: const AssetImage(
                              'assets/images/login/tap_to_start.png'), // 시작 버튼 이미지
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              if (myInfo is MyInfoError)
                TextButton(
                    onPressed: () {
                      ref.read(loginProvider.notifier).logout(sessions: false);
                    },
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          'Log in again and connect again',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.w,
                            color: Colors.white,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ))),
              SizedBox(
                height: 50.0.h,
              ),
            ],
          ),
          if (myInfo is MyInfoNickNameError)
            const SignUpScreen(), // 유저 닉네임 없을 경우
          if (myInfo is MyInfoLoading) const LoadingWidget(), // 로딩
        ],
      ),
    );
  }
}
