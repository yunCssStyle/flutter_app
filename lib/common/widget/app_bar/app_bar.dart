import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_profile.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/rolling_message/rolling_message.dart';

class MyAppBar extends ConsumerStatefulWidget {
  const MyAppBar({super.key});

  @override
  ConsumerState<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends ConsumerState<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, // 화면 가로 길이),
      height: 180.w,
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
                const AppBarProfile(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppWidget.appBarMzp,
                    SizedBox(
                      width: 7.w,
                    ),
                    MotionButton(
                      onPressed: () {
                        modalContent(
                          title: 'Options',
                          widget: AppWidget.optionsScreen,
                        );
                      },
                      child: Transform.translate(
                        offset: AppWidget.offset,
                        child: Container(
                          width: 32.w,
                          height: 32.w,
                          decoration: AppWidget.appbarBoxDecoration,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const RollingMessage(), // redis pubsub
          ],
        ),
      ),
    );
  }
}
