import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';

class CustomButton extends StatelessWidget {
  final bool isGuest;
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  final Color? lienColor;
  final double fontSize;
  final String? iconStartPath;
  final double? iconStartWidth;
  final String? iconEndPath;
  final double? iconEndWidth;
  final bool isDisabled;
  final double paddright;
  final MainAxisAlignment align;
  final num nickname;
  const CustomButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.onPressed,
    required this.bgColor,
    this.textColor = Colors.white,
    this.fontSize = 20,
    this.iconStartPath,
    this.iconStartWidth,
    this.iconEndPath,
    this.iconEndWidth,
    this.lienColor,
    this.isDisabled = false,
    this.align = MainAxisAlignment.center,
    this.paddright = 0,
    this.nickname = 0,
    this.isGuest = false,
  });

  @override
  Widget build(BuildContext context) {
    return MotionButton(
      onPressed: () {
        !isDisabled ? onPressed() : null;
      },
      scale: 0.1,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 52.h,
        decoration: BoxDecoration(
          color: !isDisabled
              ? bgColor
              : isGuest
                  ? AppColor.lightGrey1
                  : AppColor.lightGrey,
          border: Border.all(
            color: !isDisabled
                ? Colors.black
                : isGuest
                    ? AppColor.lightGrey
                    : AppColor.darkGrey,
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
                    color: !isDisabled
                        ? lienColor
                        : isGuest
                            ? AppColor.lightGrey
                            : AppColor.lightGrey2,
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
                  color: !isDisabled
                      ? Colors.black
                      : isGuest
                          ? AppColor.lightGrey
                          : AppColor.darkGrey,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    left: align == MainAxisAlignment.center ? 0 : 16.w,
                    right: paddright),
                child: Row(
                  mainAxisAlignment: align,
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
                        color: !isDisabled
                            ? textColor
                            : isGuest
                                ? AppColor.lightGrey
                                : AppColor.darkGrey,
                        fontFamily: 'Chaloops',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (iconEndPath != null)
                      Container(
                        margin: EdgeInsets.only(left: 6.w),
                        child: SvgPicture.asset(
                          width: iconEndWidth!,
                          iconEndPath!,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    if (nickname != 0)
                      Container(
                        width: 48.w,
                        height: 22.w,
                        decoration: BoxDecoration(
                          color: isGuest
                              ? AppColor.lightGrey2
                              : AppColor.darkYellow,
                          border: Border.all(
                            color: isGuest ? AppColor.lightGrey : Colors.black,
                            width: 2.w,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '\$$nickname',
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontWeight: FontWeight.w700,
                              fontSize: 18.w,
                              height: 1,
                              color:
                                  isGuest ? AppColor.lightGrey : Colors.black,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
