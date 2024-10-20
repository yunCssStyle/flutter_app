import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/home/modal/todays_transport_history.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';
import 'package:minewarz_app/pages/home/provider/transport_provider.dart';
import 'package:minewarz_app/pages/home/widget/transport/transport_img_widget.dart';
import 'package:minewarz_app/pages/home/widget/transport/transport_schedule_widget.dart';
import 'package:minewarz_app/pages/home/widget/transport/transported_today_widget.dart';

class TransportViewScreen extends ConsumerStatefulWidget {
  const TransportViewScreen({super.key});

  @override
  ConsumerState<TransportViewScreen> createState() =>
      _TransportViewScreenState();
}

class _TransportViewScreenState extends ConsumerState<TransportViewScreen> {
  @override
  Widget build(BuildContext context) {
    final transport = ref.watch(transportProvider);
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      // fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  'assets/images/home/transport/transport_bg.png',
                ),
                fit: BoxFit.fill,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
        CustomScrollView(
          slivers: <Widget>[
            const DefaultAppbar(
              title: 'Transport',
              topBg: 'assets/images/home/transport/transport_top_bg.png',
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: DeviceHeight().fullbackBtn(82.w),
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: 306.w,
                      height: 394.w,
                      child: Column(
                        children: [
                          // 화면 이미지 요소
                          const TransportImgWidget(),
                          if (transport is TransportModel)
                            // 수송 진행 상태
                            TransportScheduleWidget(
                              transportSchedules: transport.transportSchedules,
                              transportFeeRate: transport.transportFeeRate,
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (transport is TransportModel)
                    // 오늘 수송된 골드 표시
                    TransportedTodayWidget(
                      transportedGold: transport.transportedGold,
                    ),
                  //수송 내역 버튼
                  Positioned(
                    right: 16.w,
                    top: -5.w,
                    child: MotionButton(
                      onPressed: () {
                        modalContent(
                          title: 'Today’s Transport\nHistory',
                          widget: const TodaysTransportHistory(),
                          autoScroll: true,
                        );
                      },
                      child: SvgPicture.asset(
                        width: 51.w,
                        'assets/images/home/transport/history_icn.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  if (transport is TransportLoading) const LoadingWidget()
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
