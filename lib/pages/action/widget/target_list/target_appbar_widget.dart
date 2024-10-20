import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/action/modal/refresh_modal.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'dart:math' as math;

import 'package:minewarz_app/pages/home/provider/home_provider.dart';

class TargetAppbarWidget extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  final int target;
  final num refreshCost;
  final Function() callback;
  const TargetAppbarWidget({
    Key? key,
    required this.title,
    required this.refreshCost,
    required this.callback,
    this.target = 0,
  }) : super(key: key);

  @override
  Size get preferredSize {
    if (Platform.isAndroid) {
      return const Size.fromHeight(280);
    } else {
      return const Size.fromHeight(190);
    }
  }

  @override
  ConsumerState<TargetAppbarWidget> createState() => _TargetAppbarWidgetState();
}

class _TargetAppbarWidgetState extends ConsumerState<TargetAppbarWidget> {
  final defenseTooltop = SuperTooltipController();
  bool isImg = false;

  @override
  void dispose() {
    defenseTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    final targetList = ref.watch(targetListProvider);
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 0, // AppBar의 높이를 0으로 설정하여 보이지 않게 함
      floating: true, // 스크롤 시 AppBar 고정 여부
      pinned: true, // 스크롤 시 AppBar 핀 여부
      collapsedHeight: DeviceHeight().ectAppBarHeight(170.w),
      shadowColor: Colors.transparent, // AppBar 배경색 투명
      backgroundColor: Colors.transparent, // AppBar 배경색 투명
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/action/attack_top_bg.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // if (isImg)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: const BoxConstraints(
                    maxHeight: 204,
                  ),
                  child: Lottie.asset(
                    'assets/images/action/lottie/attack_character.json',
                    width: 375.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceHeight().defaultAppBarSize(35.w),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                            ),
                            if (targetList is TargetModel &&
                                home is HomeModel &&
                                home.isDivision == true &&
                                targetList.data != null)
                              GestureDetector(
                                onTap: () {
                                  modalContent(
                                    title: 'Refresh List',
                                    isMzp: true,
                                    widget: RefreshModal(
                                      refreshCost: widget.refreshCost,
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 74.w,
                                  color: Colors.white.withOpacity(0.01),
                                  child: CountdownTimerWidget(
                                    endTime: targetList.data!.targetResetTime,
                                    timeType: 'mm:ss',
                                    fontSize: 24,
                                    fontFamily: 'Chaloops',
                                    fontWeight: FontWeight.w700,
                                    fontColor: Colors.black,
                                    callback: widget.callback,
                                  ),
                                ),
                              ),
                            // if (targetList is TargetLoading)
                            //   SizedBox(
                            //     width: 66.w,
                            //     child: const Text(
                            //       '00:00',
                            //       style: TextStyle(
                            //         fontSize: 24,
                            //         fontFamily: 'Chaloops',
                            //         fontWeight: FontWeight.w700,
                            //         color: Colors.black,
                            //       ),
                            //     ),
                            //   ),
                            if (targetList is TargetModel &&
                                home is HomeModel &&
                                home.isDivision == true)
                              MotionButton(
                                onPressed: () {
                                  modalContent(
                                    title: 'Refresh List',
                                    isMzp: true,
                                    widget: RefreshModal(
                                      refreshCost: widget.refreshCost,
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/action/time_refresh.png',
                                  width: 28.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              )
                          ],
                        ),
                      ),
                      const AppBarMzp(
                        isTooltip: true,
                      ),
                      SizedBox(
                        width: 16.w,
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 26.w,
                            color: Colors.black,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Positioned(
                          top: 10.w,
                          right: 16.w,
                          child: SuperTooltip(
                            controller: defenseTooltop,
                            barrierColor: Colors.black.withOpacity(0),
                            content: Text(
                              "Attack Tickets: \n5 will be granted at UTC 00:00.\nAny unused Attack Tickets will expire.",
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 12.w,
                                color: Colors.white,
                              ),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                SizedBox(
                                  width: 52.w,
                                  height: 30.w,
                                ),
                                Positioned(
                                  top: 15.w,
                                  right: 0,
                                  left: 0,
                                  child: Stack(
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          left: 15.w,
                                          top: 2.w,
                                          child: Transform.rotate(
                                            angle: 8 * math.pi / 180,
                                            child: Container(
                                              width: 5.w,
                                              height: 16.w,
                                              color: Colors.black,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w,
                                                  vertical: 1.w),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 15.w,
                                          top: 2.w,
                                          child: Transform.rotate(
                                            angle: -8 * math.pi / 180,
                                            child: Container(
                                              width: 5.w,
                                              height: 16.w,
                                              color: Colors.black,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w,
                                                  vertical: 1.w),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.black,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w, vertical: 1.w),
                                          child: Text(
                                            'X ${widget.target}',
                                            style: TextStyle(
                                              fontFamily: 'Chaloops',
                                              fontSize: 10.w,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                Positioned(
                                  top: -20.w,
                                  right: 0,
                                  left: 0,
                                  child: Image.asset(
                                    'assets/images/action/icn_target.png',
                                    width: 52.w,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ), // 확장 영역에 배경 위젯 설정
      ),
    );
  }
}
