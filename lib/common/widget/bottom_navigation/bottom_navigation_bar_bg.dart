import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';

class BottomNavigationBarBgWidget extends ConsumerWidget {
  const BottomNavigationBarBgWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: DeviceHeight().navHeight(80.w),
      padding: EdgeInsets.only(top: 3.w),
      color: Colors.black,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 7.w,
              color: AppWidget.navColor1,
            ),
          ),
          color: AppWidget.navColor2,
        ),
      ),
    );
  }
}
