import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';

class FullPageAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String image;
  final String title;
  final String? titles;
  final Color fontColor;
  const FullPageAppBar(
      {super.key,
      required this.image,
      required this.title,
      this.titles,
      this.fontColor = Colors.black});
  @override
  Size get preferredSize {
    if (Platform.isAndroid) {
      return const Size.fromHeight(108);
    } else {
      return const Size.fromHeight(98);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: preferredSize,
          child: Transform.translate(
            offset: Offset(0, -25.5.w),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.translate(
                    offset: Offset(0, titles != null ? 10.w : 0),
                    child: Row(
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
                  ),
                  if (titles != null)
                    Text(
                      titles!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1,
                        fontSize: 14.w,
                        color: fontColor,
                        fontFamily: 'Chaloops',
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  if (titles == null)
                    SizedBox(
                      height: 7.w,
                    ),
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 26.w,
                        color: fontColor,
                        fontFamily: 'Chaloops',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (titles != null)
                    SizedBox(
                      height: 3.w,
                    ),
                  // SizedBox(
                  //   height: 24.w,
                  // ),
                ],
              ),
            ),
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(image),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
