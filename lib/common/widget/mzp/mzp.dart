import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:minewarz_app/common/const/data.dart';

class Mzp extends StatefulWidget {
  final bool mzpIcon;
  final String mzpIconPath;
  final double? mzpIconSize;
  final num mzp;
  final double mzpSize;
  final double mzpSmallSize;
  final Color mzpColor;
  final Color mzpSmallColor;
  final String mzpfontFamily;
  final bool formatter;
  final MainAxisAlignment align;
  final double iconRight;
  final FontWeight fontWeight;
  final bool isUnderscore;
  const Mzp({
    super.key,
    this.mzpIconPath = 'assets/images/appbar/icn_mzp.png',
    this.mzpIconSize,
    this.mzpIcon = false,
    required this.mzp,
    required this.mzpSize,
    required this.mzpSmallSize,
    required this.mzpColor,
    required this.mzpSmallColor,
    this.mzpfontFamily = 'Chaloops',
    this.formatter = false,
    this.align = MainAxisAlignment.start,
    this.iconRight = 2,
    this.fontWeight = FontWeight.w700,
    this.isUnderscore = false,
  });

  @override
  State<Mzp> createState() => _MzpState();
}

class _MzpState extends State<Mzp> {
  List<String> parts = [];
  var f = NumberFormat('###,###,###,###');
  @override
  void initState() {
    super.initState();
    parts = widget.mzp.toString().split('.');
  }

  @override
  void didUpdateWidget(covariant Mzp oldWidget) {
    super.didUpdateWidget(oldWidget);
    parts = widget.mzp.toString().split('.');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.align,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.mzpIcon)
          Image.asset(
            width: widget.mzpIconSize,
            widget.mzpIconPath,
            fit: BoxFit.fill,
          ),
        if (widget.mzpIcon)
          SizedBox(
            width: widget.iconRight.w,
          ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            if (widget.isUnderscore)
              Positioned(
                left: -5.w,
                right: 0,
                bottom: 3.w,
                child: Container(
                  color: AppColor.lightYellow,
                  height: 6.w,
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.formatter
                      ? NumberFormatter.formatterNumber(widget.mzp)
                      : f
                          .format(num.parse(parts[0]))
                          .toString(), // or use controller
                  style: TextStyle(
                    height: 1.2,
                    letterSpacing: -0.5,
                    fontFamily: widget.mzpfontFamily,
                    fontWeight: widget.fontWeight,
                    color: widget.mzpColor,
                    fontSize: widget.mzpSize,
                  ),
                  // enableSeparator: true,
                ),
                if (widget.mzp is double)
                  Text(
                    '.', // or use controller
                    style: TextStyle(
                      height: 1.2,
                      letterSpacing: -0.5,
                      fontFamily: widget.mzpfontFamily,
                      fontWeight: widget.fontWeight,
                      color: widget.mzpSmallColor,
                      fontSize: widget.mzpSize,
                    ),
                  ),
                if (widget.mzp is double)
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Text(
                      widget.formatter
                          ? NumberFormatter.formatterNumber(widget.mzp,
                              isRound: false)
                          : parts[1],
                      style: TextStyle(
                        height: 1.2,
                        letterSpacing: -0.5,
                        fontFamily: widget.mzpfontFamily,
                        fontWeight: widget.fontWeight,
                        color: widget.mzpSmallColor,
                        fontSize: widget.mzpSmallSize,
                      ),
                    ),
                  ),
                if (widget.formatter)
                  Transform.translate(
                    offset: Offset(0, 1.w),
                    child: Text(
                      NumberFormatter.formatterString(
                          double.parse(parts[0])), // or use controller
                      style: TextStyle(
                        height: 1.2,
                        letterSpacing: -0.5,
                        fontFamily: widget.mzpfontFamily,
                        fontWeight: widget.fontWeight,
                        color: widget.mzpColor,
                        fontSize: widget.mzpSize,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class NumberFormatter {
  static String formatterNumber(num value, {bool isRound = true}) {
    var f = NumberFormat('###,###,###,###');
    if (value < 1000000) {
      List<String> parts = value.toString().split('.');
      if (isRound) {
        return f.format(num.parse(parts[0])).toString();
      }
      if (int.parse(parts[1]) == 0) return '0';
      if (parts[1].length > 2) return parts[1].substring(0, 2).toString();
      return parts[1].toString();
    } else if (value >= 1000000 && value < 1000000000) {
      final double result = value * 100 / 100000;
      List<String> parts = result.toString().split('.');
      if (isRound) {
        return f.format(num.parse(parts[0])).toString();
      }
      if (int.parse(parts[1]) == 0) return '0';
      if (parts[1].length > 2) return parts[1].substring(0, 2).toString();
      return parts[1].toString();
    } else if (value >= 1000000000 && value < 1000000000000) {
      final double result = value * 100 / 100000000;
      List<String> parts = result.toString().split('.');
      if (isRound) {
        return f.format(num.parse(parts[0])).toString();
      }
      if (int.parse(parts[1]) == 0) return '0';
      if (parts[1].length > 2) return parts[1].substring(0, 2).toString();
      return parts[1].toString();
    } else {
      final double result = value * 100 / 100000000000;
      List<String> parts = result.toString().split('.');
      if (isRound) {
        return f.format(num.parse(parts[0])).toString();
      }
      if (int.parse(parts[1]) == 0) return '0';
      if (parts[1].length > 2) return parts[1].substring(0, 2).toString();
      return parts[1].toString();
    }
  }

  static String formatterString(num value) {
    if (value < 1000000) {
      return '';
    } else if (value >= 1000000 && value < 1000000000) {
      return " K";
    } else if (value >= 1000000000 && value < 1000000000000) {
      return " M";
    } else {
      return " B";
    }
  }
}
