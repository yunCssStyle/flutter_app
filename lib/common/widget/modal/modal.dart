import 'dart:math' as math;

// import 'package:backdrop_modal_route/backdrop_modal_route.dart';
import 'package:backdrop_modal_route/backdrop_modal_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/provider/network.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';

class ModalContent extends ConsumerStatefulWidget {
  final Widget widget;
  final String? title;
  final bool autoScroll;
  final bool modalClose;
  final bool isMzp;
  final bool backClose;
  final bool scrollUpdate;
  const ModalContent({
    super.key,
    required this.widget,
    this.title,
    required this.autoScroll,
    required this.modalClose,
    this.isMzp = false,
    this.backClose = true,
    this.scrollUpdate = false,
  });

  @override
  ConsumerState<ModalContent> createState() => _ModalContentState();
}

class _ModalContentState extends ConsumerState<ModalContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isAttack = ref.watch(isAttackProvider);
    final network = ref.watch(networkProviders);
    final mheight = DeviceHeight().moaelHeight(180.w);
    if (network == NetworkStatus.isDisonnected) {
      Navigator.pop(context);
    }
    return PopScope(
      canPop: widget.backClose,
      child: Container(
        padding: EdgeInsets.fromLTRB(25.w, 0, 16.w, 0),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: DeviceHeight().moaelTopSizw(40.w),
            ),
            if (widget.isMzp)
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppBarMzp(
                    isTooltip: true,
                  ),
                ],
              ),
            if (widget.isMzp)
              SizedBox(
                height: 15.w,
              ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 3.h),
              child: Text(
                widget.title ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.2,
                  fontFamily: 'Chaloops',
                  fontWeight: FontWeight.w700,
                  fontSize: 30.w,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 5,
                      child: Transform.translate(
                        offset: const Offset(-5, 0),
                        child: Transform.rotate(
                          angle: 5 * math.pi / 180,
                          child: Container(
                            width: 330.w,
                            height: 100,
                            decoration: BoxDecoration(
                              color: AppColor.lightGrey,
                              border: Border.all(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          repeat: ImageRepeat.repeat,
                          image:
                              AssetImage('assets/images/common/bg_pattern.png'),
                        ),
                        color: AppColor.lightGrey1,
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                      child: widget.scrollUpdate
                          ? Container(
                              alignment: Alignment.topCenter,
                              padding:
                                  EdgeInsets.fromLTRB(16.w, 0.w, 16.w, 0.w),
                              child: widget.widget,
                            )
                          : GestureDetector(
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                FocusScope.of(context)
                                    .unfocus(); //배경 터치시 키보드 내리기
                              },
                              child: CustomScrollView(
                                slivers: [
                                  SliverToBoxAdapter(
                                    child: !widget.autoScroll
                                        ? Container(
                                            padding: EdgeInsets.fromLTRB(
                                                16.w, 16.w, 16.w, 16.w),
                                            height: MediaQuery.of(context)
                                                            .size
                                                            .height -
                                                        mheight <
                                                    380.w
                                                ? 380.w
                                                : widget.isMzp
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .height -
                                                        mheight -
                                                        55.w
                                                    : MediaQuery.of(context)
                                                            .size
                                                            .height -
                                                        mheight,
                                            child: widget.widget,
                                          )
                                        : Container(
                                            padding: EdgeInsets.fromLTRB(
                                                16.w, 16.w, 16.w, 16.w),
                                            child: widget.widget,
                                          ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                    Positioned(
                      top: 2,
                      left: 17.w,
                      child: SvgPicture.asset(
                        height: 6,
                        width: 2,
                        'assets/images/modal/modal_deco1.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      bottom: 21.w,
                      right: 2,
                      child: SvgPicture.asset(
                        height: 15,
                        width: 6,
                        'assets/images/modal/modal_deco2.svg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!widget.modalClose)
              Container(
                alignment: Alignment.center,
                height: 60.h,
              ),
            if (widget.modalClose && !isAttack)
              Container(
                alignment: Alignment.center,
                height: 60.h,
                child: Transform.translate(
                  offset: const Offset(0, 0),
                  child: MotionButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      height: 44.w,
                      width: 44.w,
                      'assets/images/modal/modal_close.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            if (isAttack)
              Container(
                alignment: Alignment.center,
                height: 60.h,
                width: MediaQuery.of(context).size.width,
              ),
            Container(
              height: DeviceHeight().moaelTopSizw(10.w),
            ),
          ],
        ),
      ),
    );
  }
}

void modalContent({
  String? title,
  Widget widget = const SizedBox(),
  bool autoScroll = false,
  bool modalClose = true,
  bool isMzp = false,
  bool backClose = true,
  bool scrollUpdate = false,
}) async {
  final context = GetIt.I<NavigationService>().getContext();
  await Navigator.push(
    context,
    BackdropModalRoute<String>(
      overlayContentBuilder: (context) => ModalContent(
        widget: widget,
        title: title,
        autoScroll: autoScroll,
        modalClose: modalClose,
        isMzp: isMzp,
        backClose: backClose,
        scrollUpdate: scrollUpdate,
      ),
      topPadding: 0,
      barrierOpacity: 0.8,
      safeAreaTop: false,
      safeAreaBottom: false,
      backgroundColor: Colors.transparent,
      backdropShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
    ),
  );
}
