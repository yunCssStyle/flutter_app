import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';

class InvertoryAppbarWidget extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  const InvertoryAppbarWidget({
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
  ConsumerState<InvertoryAppbarWidget> createState() =>
      _InvertoryAppbarWidgetState();
}

class _InvertoryAppbarWidgetState extends ConsumerState<InvertoryAppbarWidget> {
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
      collapsedHeight: Platform.isAndroid
          ? 170.w
          : IphoneHasNotch.hasNotch
              ? 90.w
              : 96.w,
      shadowColor: Colors.transparent, // AppBar 배경색 투명
      backgroundColor: Colors.transparent, // AppBar 배경색 투명
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/home/inventory/top_bg.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Platform.isAndroid
                        ? 25.w
                        : IphoneHasNotch.hasNotch
                            ? 25.w
                            : 40.w,
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
                    height: 3.w,
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
