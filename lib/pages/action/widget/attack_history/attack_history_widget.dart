import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/time_seconds.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';

class AttackHistoryWidget extends StatelessWidget {
  final String result;
  final String type;
  final String url;
  final String name;
  final int lostCount;
  final int rounds;
  final double gained;
  final double jjackpot;
  final double lootingFee;
  final num time;

  const AttackHistoryWidget({
    super.key,
    required this.result,
    required this.type,
    required this.url,
    required this.name,
    required this.lostCount,
    required this.rounds,
    required this.gained,
    required this.jjackpot,
    required this.time,
    required this.lootingFee,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 2.w,
          right: 6.w,
          top: 10.w,
          bottom: 6.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    NftImg(
                      type: type,
                      url: url,
                      size: 45,
                      movePlay: true,
                    ),
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/home/defense/img_frame.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -3.w),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontSize: 16.w,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 26.w,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 4.w),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                        ),
                                        color: AppColor.lightYellow,
                                        child: Row(
                                          children: [
                                            Text(
                                              rounds == lostCount &&
                                                      result == 'WIN'
                                                  ? rounds.toString()
                                                  : (rounds - 1).toString(),
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Chaloops',
                                                  fontSize: 14.w,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '/${lostCount.toString()}',
                                              style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Chaloops',
                                                  fontSize: 14.w,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Rounds Won',
                                      style: TextStyle(
                                        height: 1.2,
                                        color: Colors.black,
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Chaloops',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Time ',
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 14.w,
                                fontWeight: FontWeight.w600,
                                color: AppColor.darkGrey,
                              ),
                            ),
                            TextSpan(
                              text: formatTimestampUtc(time),
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 14.w,
                                fontWeight: FontWeight.w700,
                                color: AppColor.darkGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 48.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        'Gained',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.darkGrey1,
                        ),
                      ),
                      Mzp(
                        mzpIcon: true,
                        mzpIconSize: 14,
                        mzpfontFamily: 'ProximaSoft',
                        mzp: gained,
                        mzpSize: 14.w,
                        mzpSmallSize: 12.w,
                        mzpColor: Colors.black,
                        mzpSmallColor: AppColor.darkGrey,
                        fontWeight: FontWeight.w800,
                      ),
                      Text(
                        'Looting Fee',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.darkGrey1,
                        ),
                      ),
                      Mzp(
                        mzpIcon: true,
                        mzpIconSize: 14,
                        mzpfontFamily: 'ProximaSoft',
                        mzp: lootingFee,
                        mzpSize: 14.w,
                        mzpSmallSize: 12.w,
                        mzpColor: Colors.black,
                        mzpSmallColor: AppColor.darkGrey,
                        fontWeight: FontWeight.w800,
                      ),
                      Text(
                        'JJACKShot Fund',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.darkGrey1,
                        ),
                      ),
                      Mzp(
                        mzpIcon: true,
                        mzpIconSize: 14,
                        mzpfontFamily: 'ProximaSoft',
                        mzp: jjackpot,
                        mzpSize: 14.w,
                        mzpSmallSize: 12.w,
                        mzpColor: Colors.black,
                        mzpSmallColor: AppColor.darkGrey,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
