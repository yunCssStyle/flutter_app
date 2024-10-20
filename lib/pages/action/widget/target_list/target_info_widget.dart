import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';

class TargetInfoWidget extends StatelessWidget {
  final String nftType;
  final String nftUrl;
  final String nickname;
  final int rounds;
  final num maxProfit;
  final num expectedProfit;
  const TargetInfoWidget({
    super.key,
    required this.nftType,
    required this.nftUrl,
    required this.nickname,
    required this.rounds,
    required this.maxProfit,
    required this.expectedProfit,
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
                      type: nftType,
                      url: nftUrl,
                      size: 45,
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
                              nickname,
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
                                        margin: EdgeInsets.only(
                                          right: 2.w,
                                        ),
                                        color: AppColor.lightYellow,
                                        child: Row(
                                          children: [
                                            Text(
                                              rounds.toString(),
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
                                      text: 'Rounds',
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
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 52.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        'Max Profit',
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
                        mzp: maxProfit,
                        mzpSize: 14.w,
                        mzpSmallSize: 12.w,
                        mzpColor: Colors.black,
                        mzpSmallColor: AppColor.darkGrey,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        'Expected Profit',
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
                        mzp: expectedProfit,
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
