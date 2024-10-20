import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/common/custom_switch.dart';

class OptionsCheckWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool value;
  final ValueChanged<bool> optionsCheckToggle;
  const OptionsCheckWidget({
    super.key,
    required this.title,
    required this.iconPath,
    required this.value,
    required this.optionsCheckToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        optionsCheckToggle(!value);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  width: 24.w,
                  height: 24.w,
                  iconPath,
                  fit: BoxFit.none,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.w,
                    color: Colors.black,
                    fontFamily: 'Chaloops',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            CustomSwitch(
              value: value,
            ),
          ],
        ),
      ),
    );
  }
}
