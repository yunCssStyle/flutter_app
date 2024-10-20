import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';

class FullButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Color bgColor;
  final Color textColor;
  final Color? lienColor;
  final double fontSize;
  final String? iconStartPath;
  final double? iconStartWidth;
  final String? iconEndPath;
  final double? iconEndWidth;
  final bool isDisabled;
  const FullButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.bgColor,
    this.textColor = Colors.white,
    this.fontSize = 20,
    this.iconStartPath,
    this.iconStartWidth,
    this.iconEndPath,
    this.iconEndWidth,
    this.lienColor,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 52.h,
      decoration: BoxDecoration(
        color: !isDisabled ? bgColor : AppColor.lightGrey,
        border: Border.all(
          color: !isDisabled ? Colors.black : AppColor.darkGrey,
          width: 3,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          if (lienColor != null)
            Positioned(
              left: 0,
              right: 0,
              top: -5,
              child: Transform.rotate(
                angle: -1 * math.pi / 180,
                child: Container(
                  height: 10,
                  color: !isDisabled ? lienColor : AppColor.lightGrey,
                ),
              ),
            ),
          Positioned(
            left: -0,
            top: -20,
            child: Transform.rotate(
              angle: 60 * math.pi / 160,
              child: Container(
                width: 15,
                height: 25,
                color: !isDisabled ? Colors.black : AppColor.darkGrey,
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (iconStartPath != null)
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: SvgPicture.asset(
                      width: iconStartWidth ?? 20.w,
                      iconStartPath!,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize.sp,
                    color: !isDisabled ? textColor : AppColor.darkGrey,
                    fontFamily: 'Chaloops',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (iconEndPath != null)
                  Container(
                    margin: EdgeInsets.only(left: 12.w),
                    child: SvgPicture.asset(
                      width: iconEndWidth!,
                      iconEndPath!,
                      fit: BoxFit.fitWidth,
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
