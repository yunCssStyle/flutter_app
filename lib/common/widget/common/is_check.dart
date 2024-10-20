import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IsCheck extends StatelessWidget {
  const IsCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 16.w,
        width: 16.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 3.w,
          ),
        ),
      ),
    );
  }
}
