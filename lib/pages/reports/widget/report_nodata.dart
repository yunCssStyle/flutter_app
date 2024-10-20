import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportsNoData extends StatelessWidget {
  const ReportsNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.w,
      child: Center(
        child: Image(
          width: 120.w,
          fit: BoxFit.fitWidth,
          image: const AssetImage('assets/images/reports/reports_isday.png'),
        ),
      ),
    );
  }
}
