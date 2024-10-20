import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/provider/schedule_provider.dart';
import 'package:minewarz_app/pages/home/widget/transport/schedule_card_widget.dart';
import 'package:minewarz_app/pages/home/widget/transport/schedule_widget.dart';

class ScheduleViewScreen extends ConsumerStatefulWidget {
  const ScheduleViewScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ScheduleViewScreen> createState() => _ScheduleViewScreenState();
}

class _ScheduleViewScreenState extends ConsumerState<ScheduleViewScreen> {
  final transportTooltop = SuperTooltipController();

  @override
  void dispose() {
    transportTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheduleData = ref.watch(scheduleProvider);
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: AppColor.lightSky1,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  'assets/images/home/transport/tomorrow_bg.png',
                ),
                fit: BoxFit.fitWidth,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ),
        ),
        CustomScrollView(
          slivers: <Widget>[
            const DefaultAppbar(
              title: 'Tomorrow\'s Schedule',
              topBg: 'assets/images/home/transport/tomorrow_top_bg.png',
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reserve trains for tomorrow.\nPlease select one or more time slots. (UTC)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBule,
                    ),
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                  if (scheduleData is ScheduleModel)
                    SizedBox(
                      width: 332.w,
                      height: 210.w,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 24, //item 개수
                        padding: EdgeInsets.symmetric(
                            vertical: 6.w, horizontal: 6.w),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6, //1 개의 행에 보여줄 item 개수
                          childAspectRatio: 1, //item 의 가로 1, 세로 2 의 비율
                          crossAxisSpacing: 8, //수직 Padding
                          mainAxisSpacing: 4,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          // 시간표 출력
                          return ScheduleWidget(
                            index: index,
                            scheduleModel: scheduleData,
                          );
                        },
                      ),
                    ),
                  SizedBox(
                    height: 15.w,
                  ),
                  // 수송 수수료 및 예약 버튼
                  const ScheduleCardWidget(),
                  SizedBox(
                    height: 8.w,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Reservation can be changed until',
                          style: TextStyle(
                            fontSize: 14.w,
                            height: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ProximaSoft',
                          ),
                        ),
                        TextSpan(
                          text: ' UTC 00:00.',
                          style: TextStyle(
                            fontSize: 14.w,
                            height: 1.2,
                            color: Colors.white,
                            fontFamily: 'ProximaSoft',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Time Remaining ',
                        style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 106.w,
                  ),
                ],
              ),
            ),
          ],
        ),
        if (scheduleData is ScheduleLoading) const LoadingWidget()
      ],
    );
  }
}
