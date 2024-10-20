import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';

class RevengeAppbarWidget extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  const RevengeAppbarWidget({
    Key? key,
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
  ConsumerState<RevengeAppbarWidget> createState() =>
      _RevengeAppbarWidgetState();
}

class _RevengeAppbarWidgetState extends ConsumerState<RevengeAppbarWidget> {
  final defenseTooltop = SuperTooltipController();

  bool isImg = false;

  @override
  void initState() {
    super.initState();
  }

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
      collapsedHeight: DeviceHeight().ectAppBarHeight(170.w),
      shadowColor: Colors.transparent, // AppBar 배경색 투명
      backgroundColor: Colors.transparent, // AppBar 배경색 투명
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/action/revenge_top_bg.png'),
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
                // child: DotLottieLoader.fromAsset(
                //   "assets/images/action/lottie/revenge.lottie",
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceHeight().defaultAppBarSize(35.w),
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
                            color: Colors.white,
                            fontFamily: 'Chaloops',
                            fontWeight: FontWeight.w700,
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
