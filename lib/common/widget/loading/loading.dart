import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  final double bgOpacity;
  final int size;
  final bool isPositioned;
  const LoadingWidget({
    super.key,
    this.bgOpacity = 0.5,
    this.size = 100,
    this.isPositioned = true,
  });

  @override
  Widget build(BuildContext context) {
    return isPositioned
        ? Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(bgOpacity),
              child: Center(
                child: Lottie.asset(
                  // repeat: false,
                  'assets/lottie/common/papa_loading.json',
                  width: size.w,
                ),
              ),
            ),
          )
        : Center(
            child: Lottie.asset(
              // repeat: false,
              'assets/lottie/common/papa_loading.json',
              width: size.w,
            ),
          );
  }
}
