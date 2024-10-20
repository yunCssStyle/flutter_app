import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class AppBarMzp extends ConsumerStatefulWidget {
  final VoidCallback? onPressed;
  final bool isTooltip;
  const AppBarMzp({
    super.key,
    this.isTooltip = false,
    this.onPressed,
  });

  @override
  ConsumerState<AppBarMzp> createState() => _AppBarMzpState();
}

class _AppBarMzpState extends ConsumerState<AppBarMzp> {
  final mzpTooltop = SuperTooltipController();

  void tradingPostCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  void dispose() {
    mzpTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myInfo = ref.watch(myInfoProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.isTooltip)
          SuperTooltip(
            controller: mzpTooltop,
            left: 220.w,
            right: 16.w,
            barrierColor: Colors.black.withOpacity(0),
            content: Mzp(
              mzp: myInfo is MyInfoModel ? myInfo.balance.gold : 0,
              mzpSize: 12.w,
              mzpColor: AppColor.lightYellow,
              mzpSmallSize: 10.w,
              mzpSmallColor: AppColor.darkYellow,
              mzpfontFamily: 'ProximaSoft',
              align: MainAxisAlignment.center,
            ),
            child: _AppBarMzp(
              mzp: myInfo is MyInfoModel ? myInfo.balance.gold : 0,
            ),
          ),
        if (!widget.isTooltip)
          MotionButton(
            scale: 0.1,
            child: FullPage(
              transitionType: ContainerTransitionType.fade,
              closedBuilder: (BuildContext _, VoidCallback tradingPostOpens) {
                return FullPageOpen(
                  openContainer: () async {
                    tradingPostOpens();
                  },
                  isProvider: false,
                  height: 31.w,
                  child: _AppBarMzp(
                    mzp: myInfo is MyInfoModel ? myInfo.balance.gold : 0,
                  ),
                );
              },
              onClosed: tradingPostCle,
              child: AppWidget.fullPageLayout,
            ),
          ),
      ],
    );
  }
}

class _AppBarMzp extends StatelessWidget {
  final num mzp;
  const _AppBarMzp({required this.mzp});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 23.w, top: 7.w),
          width: 86.w,
          height: 24.w,
          padding: EdgeInsets.only(left: 1.0.w, right: 4.0.w),
          color: Colors.black,
          child: Align(
            alignment: Alignment.centerRight,
            child: Mzp(
              mzp: mzp,
              mzpSize: 12.w,
              mzpColor: Colors.white,
              mzpSmallSize: 10.w,
              mzpSmallColor: AppColor.lightGrey,
              align: MainAxisAlignment.end,
              formatter: true,
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            width: 38.w,
            height: 38.w,
            'assets/images/appbar/icn_mzp.png',
          ),
        ),
      ],
    );
  }
}
