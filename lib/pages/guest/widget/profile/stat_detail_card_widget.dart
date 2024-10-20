import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/profile/modal/stat_details_modal.dart';

class StatDetailCardWidget extends ConsumerWidget {
  final String stat;
  final int value;
  final String statBonus;
  final int valueBonus;
  const StatDetailCardWidget({
    super.key,
    required this.stat,
    required this.value,
    required this.statBonus,
    required this.valueBonus,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.w),
      padding: EdgeInsets.all(4.w),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Image(
              width: 41.4.w,
              fit: BoxFit.fitWidth,
              image: AssetImage(statDetails
                  .firstWhere((element) => element['stat'] == stat)['img']
                  .toString()),
            ),
          ),
          Expanded(
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 7.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
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
                          Row(
                            children: [
                              Text(
                                statDetails
                                    .firstWhere((element) =>
                                        element['stat'] == stat)['title']
                                    .toString(),
                                style: TextStyle(
                                  fontFamily: 'Chaloops',
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Container(
                                height: 17.w,
                                color: AppColor.lightYellow,
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Center(
                                  child: Text(
                                    (value + valueBonus).toString(),
                                    style: TextStyle(
                                      height: 1.2,
                                      fontFamily: 'Chaloops',
                                      fontSize: 16.w,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '(${value.toString()}+',
                                      style: TextStyle(
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Chaloops',
                                        color: AppColor.darkBule,
                                      ),
                                    ),
                                    TextSpan(
                                      text: valueBonus.toString(),
                                      style: TextStyle(
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Chaloops',
                                        color: AppColor.darkRed,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ')',
                                      style: TextStyle(
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Chaloops',
                                        color: AppColor.darkBule,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.w,
                          ),
                          Text(
                            statDetails
                                .firstWhere((element) =>
                                    element['stat'] == stat)['text']
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'Proxima Soft',
                              fontSize: 12.w,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5.w,
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
