import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';

class DefenseAppbarWidget extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  final int level;
  const DefenseAppbarWidget({
    Key? key,
    required this.level,
    required this.title,
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
  ConsumerState<DefenseAppbarWidget> createState() =>
      _ScheduleViewScreenState();
}

class _ScheduleViewScreenState extends ConsumerState<DefenseAppbarWidget> {
  final defenseTooltop = SuperTooltipController();

  @override
  void dispose() {
    defenseTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 0, // AppBar의 높이를 0으로 설정하여 보이지 않게 함
      floating: true, // 스크롤 시 AppBar 고정 여부
      pinned: true, // 스크롤 시 AppBar 핀 여부
      collapsedHeight: DeviceHeight().ectAppBarHeight1(200.w),
      shadowColor: Colors.transparent, // AppBar 배경색 투명
      backgroundColor: Colors.transparent, // AppBar 배경색 투명
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(
                  'assets/images/home/defense/defense_top_bg${widget.level == 0 ? 1 : widget.level}.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  constraints: const BoxConstraints(
                    maxHeight: 204,
                  ),
                  // color: Colors.amber,
                  child: Lottie.asset(
                    'assets/images/home/lottie/defence1.json',
                    width: 375.w,
                    height: 204.w,
                    fit: BoxFit.fitWidth,
                  ),
                  // child: DotLottieLoader.fromAsset(
                  //   "assets/images/home/lottie/defence.lottie",
                  //   frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                  //     if (dotlottie != null) {
                  //       return Lottie.memory(
                  //         width: 375.w,
                  //         height: 204.w,
                  //         dotlottie.animations.values.single,
                  //         fit: BoxFit.fitWidth,
                  //       );
                  //     } else {
                  //       return Container();
                  //     }
                  //   },
                  // ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceHeight().defaultAppBarSize(25.w),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                          top: 5.w,
                          right: 16.w,
                          child: SuperTooltip(
                            controller: defenseTooltop,
                            barrierColor: Colors.black.withOpacity(0),
                            content: Text(
                              "The defense round is automatically\ndetermined based on the level of\nactivated Mining Rights.\nThe attacker can plunder resources until\nthe round they achieve victory.",
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 12.w,
                                color: Colors.white,
                                height: 1.2,
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/common/icn_tip.png',
                              width: 24.w,
                              height: 24.w,
                              fit: BoxFit.fitWidth,
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
