// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:simple_animations/simple_animations.dart';

Future<void> rollingMessageBar(msg) async {
  try {
    final context = GetIt.I<NavigationService>().getContext();
    MovieTween tween = MovieTween();
    tween
        .tween('opacity', Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 700))
        .thenTween('left', Tween(begin: 360.0, end: -360.0),
            duration: const Duration(seconds: 5))
        .thenTween('opacity', Tween(begin: 1.0, end: -0.0),
            duration: const Duration(milliseconds: 300));
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight =
        screenHeight - (DeviceHeight().appBarTop(30.0.w) + 170);

    SnackBar bar = SnackBar(
      actionOverflowThreshold: 0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.none,
      clipBehavior: Clip.none,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 6000),
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(bottom: containerHeight.h),
      content: PlayAnimationBuilder<Movie>(
        tween: tween,
        duration: tween.duration,
        // onStarted: () => debugPrint('Animation started'),
        // onCompleted: () {
        // },
        child: Text(
          msg,
          style: TextStyle(
            height: 1.4.w,
            fontSize: 14.w,
            color: Colors.white,
            fontFamily: 'ProximaSoft',
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
        ), // pass in static child
        builder: (context, value, child) {
          return Opacity(
            opacity: value.get('opacity'),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27.h,
                    // margin: EdgeInsets.only(bottom: 464.h),
                    child: Transform.translate(
                      offset: Offset(1, -1.h),
                      child: SvgPicture.asset(
                        height: 27.h,
                        'assets/images/common/snackbar_bg1.svg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 26.h,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(0)),
                      // margin: EdgeInsets.only(bottom: 464.h),
                      child: Stack(clipBehavior: Clip.antiAlias, children: [
                        Transform.translate(
                          offset: Offset(value.get('left'), 0),
                          child: child,
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                    // margin: EdgeInsets.only(bottom: 464.h),
                    child: Transform.translate(
                      offset: Offset(0, -1.h),
                      child: SvgPicture.asset(
                        height: 27.h,
                        'assets/images/common/snackbar_bg2.svg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(bar);
  } catch (e) {
    // print(e);
  }
}
