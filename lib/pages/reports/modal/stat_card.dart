import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/profile/modal/stat_details_modal.dart';
import 'dart:math' as math;

class StatCard extends StatelessWidget {
  final String stat;
  final int value;
  const StatCard({
    super.key,
    required this.stat,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 14.w, bottom: 5.w),
          child: Image(
            width: 36.w,
            image: AssetImage(
              statDetails
                  .firstWhere((element) => element['stat'] == stat)['icon']
                  .toString(),
            ),
          ),
        ),
        SizedBox(
          height: 5.w,
        ),
        Text(
          stat == 'silverTongue' ? 'Silver Tongue' : stat,
          style: TextStyle(
            height: 1.2,
            fontSize: 14.w,
            fontWeight: FontWeight.w500,
            fontFamily: 'Chaloops',
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 5.w,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: -2.w,
              child: Transform.rotate(
                angle: 8 * math.pi / 180,
                child: Container(
                  height: double.infinity,
                  width: 4.w,
                  color: const Color(0xFFFFEA00),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: -2.w,
              child: Transform.rotate(
                angle: 8 * math.pi / 180,
                child: Container(
                  height: double.infinity,
                  width: 4.w,
                  color: const Color(0xFFFFEA00),
                ),
              ),
            ),
            Container(
              color: const Color(0xFFFFEA00),
              padding: EdgeInsets.all(2.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: value.toString(),
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Chaloops',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
