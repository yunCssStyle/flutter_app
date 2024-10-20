import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';

class TransportedTodayWidget extends StatelessWidget {
  final num transportedGold;
  const TransportedTodayWidget({super.key, required this.transportedGold});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10.w,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: 108.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home/transport/center_bg.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 272.w,
              height: 108.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/home/transport/transport_box.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 36.w,
                  ),
                  Text(
                    'Transported Today :',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 14.w,
                      color: AppColor.darkBrown,
                      fontFamily: 'Chaloops',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Mzp(
                    mzpIcon: true,
                    mzpIconSize: 23.w,
                    mzp: transportedGold,
                    mzpSize: 18.w,
                    mzpColor: Colors.black,
                    mzpSmallSize: 12.w,
                    mzpSmallColor: AppColor.darkGrey,
                    align: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
