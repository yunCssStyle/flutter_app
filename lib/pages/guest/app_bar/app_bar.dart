import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/appbar/screen/options_screen.dart';

import 'app_bar_mzp.dart';
import 'app_bar_profile.dart';

class MyAppBarGuest extends ConsumerStatefulWidget {
  const MyAppBarGuest({super.key});

  @override
  ConsumerState<MyAppBarGuest> createState() => _MyAppBarGuestState();
}

class _MyAppBarGuestState extends ConsumerState<MyAppBarGuest> {
  Random random = Random();
  String guestId = '';

  _asyncMethod() async {
    final storage = ref.read(secureStorageProvider);
    final guestIdw = await storage.read(key: 'guestId') ?? '';
    setState(() {
      guestId = guestIdw;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(guestId =='') _asyncMethod(); // async 함수 실행
    return SizedBox(
      width: MediaQuery.of(context).size.width, // 화면 가로 길이),
      height: 140.w,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.0.w,
          top: DeviceHeight().appBarTop(30.0.w),
          right: 16.0.w,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBarProfile(
                  nickName: guestId != '' ? guestId : 'Guest',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AppBarMzp(),
                    SizedBox(
                      width: 7.w,
                    ),
                    MotionButton(
                      onPressed: () {
                        modalContent(
                          title: 'Options',
                          widget: const OptionsScreen(
                            guest: true,
                          ),
                        );
                      },
                      child: Transform.translate(
                        offset: const Offset(2, 0),
                        child: Container(
                          width: 32.w,
                          height: 32.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              repeat: ImageRepeat.noRepeat,
                              alignment: Alignment.bottomCenter,
                              image: AssetImage(
                                  'assets/images/appbar/icon_setting.png'), // 배경 이미지
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
