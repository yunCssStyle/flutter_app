import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  const CustomSwitch({
    super.key,
    required this.value,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 30.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          opacity: widget.value ? 1.0 : 0.3,
          image: const AssetImage(
            'assets/images/common/options/switch_bg.png',
          ),
        ),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform:
            Matrix4.translationValues(widget.value ? -10.w : 10.w, 0.0, 0.0),
        child: SvgPicture.asset(
          width: 14.w,
          'assets/images/common/options/switch.svg',
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
