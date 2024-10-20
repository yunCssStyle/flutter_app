import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';

class FullPageBack extends ConsumerWidget {
  final bool isProvider;
  final Function? callback;
  const FullPageBack({super.key, this.isProvider = true, this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MotionButton(
      onPressed: () {
        callback?.call();
        Navigator.pop(context, true);
        if (isProvider) {
          ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
          ref.read(layoutProvider.notifier).setMyAppBar(true);
        }
      },
      child: SvgPicture.asset(
        'assets/images/common/full_page_back.svg',
        height: 44.w,
        width: 44.w,
      ),
    );
  }
}
