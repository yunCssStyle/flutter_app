import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_widget.dart';

class RankingDetailWidget extends StatelessWidget {
  final num goldAcquired;
  final int miningPower;
  final num miningCapacity;
  final num earningsFromLooting;
  final MainAxisAlignment mainAxisAlignment;
  final RankingType type;
  const RankingDetailWidget({
    super.key,
    required this.goldAcquired,
    required this.miningPower,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.type,
    required this.miningCapacity,
    required this.earningsFromLooting,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              RankingType.mining == type ? 'Gold Acquired' : 'Attack Profit',
              style: TextStyle(
                color: AppColor.darkGrey1,
                fontFamily: 'ProximaSoft',
                fontSize: 13.w,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            Mzp(
              mzpIcon: true,
              mzpIconSize: 14,
              mzp: goldAcquired,
              mzpSize: 14,
              mzpSmallSize: 12,
              mzpColor: Colors.black,
              fontWeight: FontWeight.w800,
              mzpSmallColor: AppColor.darkGrey,
              mzpfontFamily: 'ProximaSoft',
            ),
            SizedBox(
              height: 10.w,
            ),
            Text(
              RankingType.mining == type
                  ? 'Mining Capacity'
                  : 'Biggest Winnings',
              style: TextStyle(
                color: AppColor.darkGrey1,
                fontFamily: 'ProximaSoft',
                fontSize: 13.w,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            Mzp(
              mzpIcon: true,
              mzpIconSize: 14,
              mzp: miningCapacity,
              mzpSize: 14,
              mzpSmallSize: 12,
              mzpColor: Colors.black,
              fontWeight: FontWeight.w800,
              mzpSmallColor: AppColor.darkGrey,
              mzpfontFamily: 'ProximaSoft',
            ),
          ],
        ),
        SizedBox(
          width: 50.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              RankingType.mining == type ? 'Mining Power' : 'No. of Attacks',
              style: TextStyle(
                color: AppColor.darkGrey1,
                fontFamily: 'ProximaSoft',
                fontSize: 13.w,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            Mzp(
              mzpIconPath: RankingType.mining == type
                  ? 'assets/images/reports/icn_mzp.png'
                  : 'assets/images/reports/icn_attacks.png',
              mzpIcon: true,
              mzpIconSize: 14,
              mzp: miningPower,
              mzpSize: 14,
              mzpSmallSize: 12,
              mzpColor: Colors.black,
              fontWeight: FontWeight.w800,
              mzpSmallColor: AppColor.darkGrey,
              mzpfontFamily: 'ProximaSoft',
            ),
            SizedBox(
              height: 10.w,
            ),
            Text(
              RankingType.mining == type
                  ? 'Earnings from Looting'
                  : 'Gold Acquired',
              style: TextStyle(
                color: AppColor.darkGrey1,
                fontFamily: 'ProximaSoft',
                fontSize: 13.w,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            Mzp(
              mzpIcon: true,
              mzpIconSize: 14,
              mzp: earningsFromLooting,
              mzpSize: 14,
              mzpSmallSize: 12,
              mzpColor: Colors.black,
              fontWeight: FontWeight.w800,
              mzpSmallColor: AppColor.darkGrey,
              mzpfontFamily: 'ProximaSoft',
            ),
          ],
        ),
      ],
    );
  }
}
