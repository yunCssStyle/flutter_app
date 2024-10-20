import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';

class TransportScheduleWidget extends StatelessWidget {
  final List<TransportDataModel> transportSchedules;
  final num transportFeeRate;
  const TransportScheduleWidget(
      {super.key,
      required this.transportSchedules,
      required this.transportFeeRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/home/transport/transport_img_bottom.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 306.w,
            height: 41.w,
          ),
          Text(
            'Today’s Transport Schedule',
            style: TextStyle(
              height: 1.2,
              fontSize: 16.w,
              color: AppColor.darkBrown,
              fontFamily: 'Chaloops',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 306.w,
            height: 5.w,
          ),
          Container(
            width: 196.w,
            height: 58.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/home/transport/schedule_day_box.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              childAspectRatio: 1.7,
              crossAxisSpacing: 3,
              children: transportSchedules.map((e) {
                return SizedBox(
                  width: 44.w,
                  height: 26.w,
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          e.departureTime.toString().split(':')[0],
                          style: TextStyle(
                            height: 1.4.w,
                            fontSize: 18.w,
                            color: e.completed
                                ? AppColor.lightBrown
                                : AppColor.darkBrown,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      if (e.completed)
                        Center(
                          child: SvgPicture.asset(
                            'assets/images/home/transport/schedule_day.svg',
                          ),
                        )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            width: 306.w,
            height: 5.w,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Fee for',
                  style: TextStyle(
                    fontSize: 16.w,
                    height: 1.2,
                    color: AppColor.darkBrown,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' ${transportSchedules.length.toString()} ',
                  style: TextStyle(
                    fontSize: 16.w,
                    height: 1.2,
                    color: AppColor.darkBrown,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                TextSpan(
                  text: 'shipment(s) :',
                  style: TextStyle(
                    fontSize: 16.w,
                    height: 1.2,
                    color: AppColor.darkBrown,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text:
                      ' ${(transportFeeRate * 100).toStringAsFixed(1).toString()}',
                  style: TextStyle(
                    fontSize: 16.w,
                    height: 1.2,
                    color: AppColor.darkBrown,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
                TextSpan(
                  text: '%',
                  style: TextStyle(
                    fontSize: 14.w,
                    height: 1.2,
                    color: AppColor.lightBrown,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'ProximaSoft',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
