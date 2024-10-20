import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(0, 3.w),
              child: Text(
                '*',
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 14.w,
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                'Nickname must only use alphanumeric characters.',
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 14.w,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.w),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: Offset(0, 3.w),
              child: Text(
                '*',
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 14.w,
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                'Nickname must be between 4 to 16 characters and must start with an alphabetic character.',
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 14.w,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 50.w),
      ],
    );
  }
}
