import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';
import 'package:minewarz_app/pages/action/widget/action/zone_btn_widget.dart';
import 'package:minewarz_app/pages/action/widget/action/zone_swiper_widget.dart';

class ZoneSwiper extends ConsumerStatefulWidget {
  final ActionModel actionData;
  const ZoneSwiper({
    Key? key,
    required this.actionData,
  }) : super(key: key);
  @override
  ConsumerState<ZoneSwiper> createState() => _ZoneSwiperState();
}

class _ZoneSwiperState extends ConsumerState<ZoneSwiper> {
  final controller = SwiperController();
  int swiperIndex = 0;

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // initState async 함수
  _asyncMethod() async {
    if (!mounted) return;
    // 아래 코드 주석 풀면 Profile, Action 메뉴 연속 전환시 에러 발생
    // await Future.delayed(const Duration(milliseconds: 300));
    int firstTrueIndex =
        widget.actionData.zones!.indexWhere((zone) => zone.assigned == true);
    // ignore: unnecessary_null_comparison
    if (firstTrueIndex != -1 && controller != null) {
      controller.move(firstTrueIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ZoneSwiperWidget(
          callback: (int idx) {
            setState(() {
              swiperIndex = idx;
            });
          },
          controller: controller,
          actionData: widget.actionData,
        ),
        Positioned(
          top: 220.w,
          left: 0,
          child: MotionButton(
            scale: swiperIndex == 0 ? 0 : 1,
            onPressed: () {
              if (0 < swiperIndex) {
                controller.previous();
                setState(() {
                  swiperIndex = swiperIndex - 1;
                });
              }
            },
            child: Opacity(
              opacity: swiperIndex == 0 ? 0.5 : 1,
              child: Container(
                color: Colors.red.withOpacity(0),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 30.w, top: 50.w, bottom: 50.w, left: 16.w),
                  child: SvgPicture.asset(
                    'assets/images/action/zone/arrow_left.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 220.w,
          right: 0,
          child: MotionButton(
            scale: swiperIndex == widget.actionData.zones!.length - 1 ? 0 : 1,
            onPressed: () {
              if (widget.actionData.zones!.length - 1 != swiperIndex) {
                controller.next();
                setState(() {
                  swiperIndex = swiperIndex + 1;
                });
              }
            },
            child: Opacity(
              opacity:
                  swiperIndex == widget.actionData.zones!.length - 1 ? 0.5 : 1,
              child: Container(
                color: Colors.red.withOpacity(0),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 16.w, top: 50.w, bottom: 50.w, left: 30.w),
                  child: SvgPicture.asset(
                    'assets/images/action/zone/arrow_right.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        ZoneBtnWidget(
          inspection: widget.actionData.inspection,
          revengeTargetCount: widget.actionData.revengeTargetCount,
          assigned: widget.actionData.zones![swiperIndex].assigned,
        ),
      ],
    );
  }
}
