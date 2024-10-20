import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorCont extends StatelessWidget {
  const ErrorCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Network Error.',
          style: TextStyle(
            fontFamily: 'ProximaSoft',
            fontSize: 16.w,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(height: 15.w),
        Image(
          width: 120.w,
          fit: BoxFit.fitWidth,
          image: const AssetImage('assets/images/profile/nft_nolist.png'),
        ),
      ],
    );
  }
}
