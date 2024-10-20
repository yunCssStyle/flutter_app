import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';

class HistoryCompleted extends StatelessWidget {
  final int departureTime;
  final num transportAmount;
  final num transportFee;
  final num jackpotFund;
  final num acquiredAmount;
  final bool bonus;
  const HistoryCompleted({
    super.key,
    required this.departureTime,
    required this.transportAmount,
    required this.transportFee,
    required this.jackpotFund,
    required this.acquiredAmount,
    required this.bonus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 8.w),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4.w,
          color: Colors.black,
        ),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w),
            child: Column(
              children: [
                SvgPicture.asset(
                  width: 18.w,
                  'assets/images/home/transport/icn_done.svg',
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  'Transport',
                  style: TextStyle(
                      fontFamily: 'Chaloops',
                      color: AppColor.lightGrey2,
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '${departureTime >= 10 ? departureTime.toString() : '0$departureTime'}:00',
                  style: TextStyle(
                      fontFamily: 'Chaloops',
                      color: Colors.white,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    //history_bgimg.png
                    width: 5.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        repeat: ImageRepeat.noRepeat,
                        alignment: Alignment.topLeft,
                        image: AssetImage(
                            'assets/images/home/transport/history_bgimg.png'), // 배경 이미지
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 4.w, horizontal: 7.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transport Amount',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: AppColor.darkGrey1,
                            ),
                          ),
                          Mzp(
                            mzpIcon: true,
                            mzpIconSize: 14.w,
                            mzp: transportAmount,
                            mzpSize: 14.w,
                            mzpColor: Colors.black,
                            mzpSmallSize: 12.w,
                            mzpSmallColor: AppColor.darkGrey,
                            align: MainAxisAlignment.start,
                            mzpfontFamily: 'ProximaSoft',
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            'Transport Fee',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: AppColor.darkGrey1,
                            ),
                          ),
                          Mzp(
                            mzpIcon: true,
                            mzpIconSize: 14.w,
                            mzpIconPath: bonus
                                ? 'assets/images/home/transport/speaking_icon.png'
                                : 'assets/images/appbar/icn_mzp.png',
                            mzp: transportFee,
                            mzpSize: 14.w,
                            mzpColor: bonus ? AppColor.darkRed : Colors.black,
                            mzpSmallSize: 12.w,
                            mzpSmallColor:
                                bonus ? AppColor.darkRed : AppColor.darkGrey,
                            align: MainAxisAlignment.start,
                            mzpfontFamily: 'ProximaSoft',
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            'JJACKShot Fund 1%',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: AppColor.darkGrey1,
                            ),
                          ),
                          Mzp(
                            mzpIcon: true,
                            mzpIconSize: 14.w,
                            mzp: jackpotFund,
                            mzpSize: 14.w,
                            mzpColor: Colors.black,
                            mzpSmallSize: 12.w,
                            mzpSmallColor: AppColor.darkGrey,
                            align: MainAxisAlignment.start,
                            mzpfontFamily: 'ProximaSoft',
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Text(
                            'Acquired Amount',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: AppColor.darkGrey1,
                            ),
                          ),
                          Mzp(
                            mzpIcon: true,
                            mzpIconSize: 14.w,
                            mzp: acquiredAmount,
                            mzpSize: 14.w,
                            mzpColor: Colors.black,
                            mzpSmallSize: 12.w,
                            mzpSmallColor: AppColor.darkGrey,
                            align: MainAxisAlignment.start,
                            mzpfontFamily: 'ProximaSoft',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
