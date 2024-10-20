import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';

class DefaultAppbar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  final String? titles;
  final String topBg;
  final Color color;
  const DefaultAppbar({
    Key? key,
    required this.title,
    this.titles,
    required this.topBg,
    this.color = Colors.black,
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
  ConsumerState<DefaultAppbar> createState() => _DefaultAppbarState();
}

class _DefaultAppbarState extends ConsumerState<DefaultAppbar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 0, // AppBar의 높이를 0으로 설정하여 보이지 않게 함
      floating: true, // 스크롤 시 AppBar 고정 여부
      pinned: true, // 스크롤 시 AppBar 핀 여부
      collapsedHeight: DeviceHeight().defaultAppBarHeight(96.w),
      shadowColor: Colors.transparent, // AppBar 배경색 투명
      backgroundColor: Colors.transparent, // AppBar 배경색 투명
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(widget.topBg),
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
                    height: 10.w,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        if (widget.titles != null)
                          Positioned(
                            top: -15.w,
                            child: Text(
                              widget.titles!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 14.w,
                                color: widget.color,
                                fontFamily: 'Chaloops',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        Text(
                          widget.titles != null &&
                                  widget.title != 'Select Pioneer'
                              ? '#${widget.title}'
                              : widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 26.w,
                            color: widget.color,
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
