import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/provider/schedule_correction_provider.dart';
import 'package:minewarz_app/pages/home/provider/schedule_provider.dart';

class ScheduleCardWidget extends ConsumerStatefulWidget {
  const ScheduleCardWidget({
    super.key,
  });

  @override
  ConsumerState<ScheduleCardWidget> createState() => _ScheduleCardWidgetState();
}

class _ScheduleCardWidgetState extends ConsumerState<ScheduleCardWidget> {
  final transportTooltop = SuperTooltipController();
  int count = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  _asyncMethod() async {
    await Future.delayed(const Duration(milliseconds: 300));
    // ref.read(scheduleCorrectionProvider.notifier).setScheduleData();
  }

  @override
  void dispose() {
    transportTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheduleData = ref.watch(scheduleProvider);
    final isSchedule = ref.watch(scheduleCorrectionProvider);
    return Container(
      width: 283.36.w,
      height: 133.78.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/images/home/transport/schedule_data_card.png'),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 25.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isSchedule is ScheduleModel)
                      Row(
                        children: [
                          SvgPicture.asset(
                            height: 28.w,
                            width: 28.w,
                            'assets/images/home/transport/icn_transport.svg',
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            isSchedule.transportSchedules
                                .where((schedule) => schedule.reserved == true)
                                .length
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 16.w,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '/${isSchedule.confirmStatus.maxCount}',
                            style: TextStyle(
                              fontFamily: 'ProximaSoft',
                              fontSize: 16.w,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    SuperTooltip(
                      controller: transportTooltop,
                      barrierColor: Colors.black.withOpacity(0),
                      content: Text(
                        "The transport fee is determined by the\nnumber of transports.\nA transport fee will be imposed on each\ntransport.\nYou can set up to 8 transports a day.",
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 12.w,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ), //tooltop_icon.svg

                      child: Image.asset(
                        'assets/images/common/icn_tip.png',
                        width: 24.w,
                        height: 24.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.w,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Fee for ',
                        style: TextStyle(
                          fontSize: 14.w,
                          height: 1.2,
                          color: AppColor.darkBule,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (isSchedule is ScheduleModel)
                        TextSpan(
                          text: isSchedule.transportSchedules
                              .where((schedule) => schedule.reserved == true)
                              .length
                              .toString(),
                          style: TextStyle(
                            fontSize: 14.w,
                            height: 1.2,
                            color: AppColor.darkBule,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'ProximaSoft',
                          ),
                        ),
                      TextSpan(
                        text: ' shipment(s):',
                        style: TextStyle(
                          fontSize: 14.w,
                          height: 1.2,
                          color: AppColor.darkBule,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: scheduleData is ScheduleModel &&
                                isSchedule is ScheduleModel
                            ? (scheduleData
                                        .confirmStatus
                                        .feeRates[isSchedule.transportSchedules
                                                .where((schedule) =>
                                                    schedule.reserved == true)
                                                .length -
                                            1]
                                        .feeRate *
                                    100)
                                .toStringAsFixed(1)
                                .toString()
                            : '0',
                        style: TextStyle(
                          fontSize: 16.w,
                          height: 1.2,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                      TextSpan(
                        text: ' %',
                        style: TextStyle(
                          fontSize: 12.w,
                          height: 1.2,
                          color: Colors.black,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
                Text(
                  'JJackShot Fund',
                  style: TextStyle(
                    fontSize: 14.w,
                    height: 1.2,
                    color: AppColor.darkBule,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: scheduleData is ScheduleModel
                            ? (scheduleData.confirmStatus.jackpotFundRate * 100)
                                .toInt()
                                .toString()
                            : '0',
                        style: TextStyle(
                          fontSize: 16.w,
                          height: 1.2,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                      // TextSpan(
                      //   text: scheduleData is ScheduleModel
                      //       ? '.${scheduleData.confirmStatus.jackpotFund.toString().split('.')[1]}'
                      //       : '.0',
                      //   style: TextStyle(
                      //     fontSize: 12.w,
                      //     height: 1.2,
                      //     color: AppColor.lightGrey,
                      //     fontWeight: FontWeight.w800,
                      //     fontFamily: 'ProximaSoft',
                      //   ),
                      // ),
                      TextSpan(
                        text: ' %',
                        style: TextStyle(
                          fontSize: 12.w,
                          height: 1.2,
                          color: Colors.black,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          if (scheduleData is ScheduleModel)
            Stack(
              children: [
                MotionButton(
                  onPressed: () {
                    if (isSchedule != scheduleData) {
                      ref.read(scheduleProvider.notifier).confirm(true);
                    }
                  },
                  child: Container(
                    width: 70.2.w,
                    height: 127.w,
                    color: Colors.transparent,
                    child: Opacity(
                      opacity: scheduleData.confirmStatus.locked
                          ? 0.3
                          : isSchedule != scheduleData
                              ? 1.0
                              : 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            height: 23.w,
                            width: 23.w,
                            'assets/images/home/transport/check_schedule.svg',
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 3.w,
                          ),
                          Text(
                            'confirm',
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 14.w,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (scheduleData.confirmStatus.locked)
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Image.asset(
                          'assets/images/home/inventory/lock_img.png',
                          height: 40.w,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
    );
  }
}
