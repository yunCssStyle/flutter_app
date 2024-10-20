import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/time_seconds.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/home/model/defense_model.dart';

class DefenseListWidget extends StatelessWidget {
  final DefenseListModel e;
  const DefenseListWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      margin: EdgeInsets.only(bottom: 8.w),
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 82.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (e.revengeExpiredTime != 'complete' &&
                    e.revengeExpiredTime != 'expired' &&
                    e.isRevenge &&
                    !e.isExecute)
                  CountdownTimerWidget(
                    endTime: int.parse(e.revengeExpiredTime),
                    fontColor: AppColor.darkRed,
                    fontFamily: 'Chaloops',
                    fontSize: 16,
                    callback: () {
                      // 리스트 새로 고침
                    },
                  ),
                if (e.revengeExpiredTime != 'complete' &&
                    e.revengeExpiredTime != 'expired' &&
                    e.statBonus != 0 &&
                    !e.isExecute)
                  SizedBox(
                    width: 82.w,
                    height: 28.w,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage(
                                'assets/images/home/defense/intuition_icn.png'),
                            width: 18.w,
                            height: 18.w,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Column(
                            children: [
                              Text(
                                'Intuition',
                                style: TextStyle(
                                  height: 1,
                                  color: const Color(0xFF00FF94),
                                  fontSize: 14.w,
                                  fontFamily: 'Chaloops',
                                ),
                              ),
                              Text(
                                '+${e.statBonus}',
                                style: TextStyle(
                                  height: 1,
                                  color: const Color(0xFF00FF94),
                                  fontSize: 14.w,
                                  fontFamily: 'Chaloops',
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                if (e.isExecute)
                  Column(
                    children: [
                      Transform.translate(
                        offset: Offset(0, 4.w),
                        child: Image.asset(
                          'assets/images/action/execute_icon.png',
                          height: 33.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        'Executed',
                        style: TextStyle(
                            fontFamily: 'Chaloops',
                            fontSize: 16.w,
                            color: AppColor.red,
                            fontWeight: FontWeight.w700,
                            height: 1.2),
                      ),
                    ],
                  ),
                if (!e.isExecute && !e.isRevenge)
                  Text(
                    textAlign: TextAlign.center,
                    'Successful\nDefense',
                    style: TextStyle(
                        fontFamily: 'Chaloops',
                        fontSize: 16.w,
                        color: const Color(0xFF1EE4FF),
                        fontWeight: FontWeight.w600,
                        height: 1.2),
                  ),
                if (!e.isExecute && e.isRevenge)
                  Column(
                    children: [
                      if (e.revengeExpiredTime == 'complete')
                        Text(
                          'Revenge',
                          style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 14.w,
                              color: AppColor.lightGrey2,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                      if (e.revengeExpiredTime == 'complete')
                        Text(
                          'Complete',
                          style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 16.w,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                      if (e.revengeExpiredTime == 'expired')
                        Text(
                          'Expired',
                          style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 16.w,
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                    ],
                  )
              ],
            ),
          ),
          Expanded(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: 8.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/home/defense/defense_box.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 4.w, right: 10.w, top: 7.w, bottom: 0),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Time Attacked ',
                                      style: TextStyle(
                                        height: 1.2,
                                        color: AppColor.darkGrey,
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ProximaSoft',
                                      ),
                                    ),
                                    TextSpan(
                                      text: formatTimestampUtc(e.attackedTime),
                                      style: TextStyle(
                                        height: 1.2,
                                        color: AppColor.darkGrey,
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ProximaSoft',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 4.w,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      NftImg(
                                        type: e.profile.type,
                                        url: e.profile.url,
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
                                  Transform.translate(
                                    offset: Offset(0, -2.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.targetNickname,
                                          style: TextStyle(
                                            fontFamily: 'Chaloops',
                                            fontSize: 16.w,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              WidgetSpan(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 4.w),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 4.w,
                                                  ),
                                                  color: e.statBonus != 0
                                                      ? AppColor.lightRed
                                                      : AppColor.lightYellow,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        e.statBonus != 0
                                                            ? e.round.toString()
                                                            : (e.round - 1)
                                                                .toString(),
                                                        style: TextStyle(
                                                            height: 1,
                                                            fontFamily:
                                                                'Chaloops',
                                                            fontSize: 14.w,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                e.statBonus != 0
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black),
                                                      ),
                                                      Text(
                                                        '/${e.totalRound.toString()}',
                                                        style: TextStyle(
                                                            height: 1,
                                                            fontFamily:
                                                                'Chaloops',
                                                            fontSize: 14.w,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                e.statBonus != 0
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              TextSpan(
                                                text: e.statBonus != 0
                                                    ? 'Perfect Loss'
                                                    : 'Rounds Lost',
                                                style: TextStyle(
                                                  height: 1.2,
                                                  color: e.statBonus != 0
                                                      ? AppColor.lightRed
                                                      : Colors.black,
                                                  fontSize: 14.w,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Chaloops',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.w,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              WidgetSpan(
                                                  child: Image.asset(
                                                'assets/images/home/defense/lost_icon.png',
                                                width: 14.w,
                                                height: 14.w,
                                              )),
                                              TextSpan(
                                                text: 'Lost',
                                                style: TextStyle(
                                                  height: 1.2,
                                                  color: AppColor.darkGrey1,
                                                  fontSize: 14.w,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'ProximaSoft',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.w),
                                          child: Mzp(
                                            mzpfontFamily: 'ProximaSoft',
                                            mzp: e.lostAmount,
                                            mzpSize: 14.w,
                                            mzpSmallSize: 12.w,
                                            mzpColor: Colors.black,
                                            mzpSmallColor: AppColor.darkGrey,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          if (!e.readed)
                            Positioned(
                              top: 2.w,
                              right: 0,
                              child: SvgPicture.asset(
                                height: 12.h,
                                'assets/images/home/icn_new.svg',
                                fit: BoxFit.fitHeight,
                              ),
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
