import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BgWidget extends StatelessWidget {
  final int level;
  final bool isDday;
  const BgWidget({super.key, this.level = 1, this.isDday = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
          image: AssetImage(
              'assets/images/home/sky${!isDday ? '_d' : ''}.png'), // 배경 이미지
        ),
      ),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
            image: AssetImage(
                'assets/images/home/fence/fence$level.png'), // 배경 이미지
          ),
        ),
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomLeft,
              image: AssetImage('assets/images/home/house.png'), // 배경 이미지
            ),
          ),
        ),
      ),
    );
  }
}
