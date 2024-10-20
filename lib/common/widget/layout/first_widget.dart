import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/routes/routes.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';

class FirstWidget extends ConsumerStatefulWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends ConsumerState<FirstWidget> {
  bool showFirst = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showIsFuture();
    });
  }

  Future<void> showIsFuture() async {
    final storage = ref.read(secureStorageProvider);
    final showIs = await storage.read(key: 'FIRST');
    if (showIs == 'FIRST') {
      setState(() {
        showFirst = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final storage = ref.watch(secureStorageProvider);
    GoRouter router = GoRouter.of(context);
    if (router.location() == '/home') {
      if (showFirst) {
        return Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
              color: Colors.black.withOpacity(0.75),
              child: Stack(
                children: [
                  Positioned(
                    top: DeviceHeight().firstTop(16.w),
                    right: 12.w,
                    child: Image.asset(
                      'assets/images/login/first_img1.png',
                      width: 342.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    bottom: DeviceHeight().firstBotton(14.w),
                    left: 4.w,
                    child: Image.asset(
                      'assets/images/login/first_img2.png',
                      width: 229.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    bottom: DeviceHeight().firstBotton(14.w),
                    left: 0,
                    right: 0,
                    child: Center(
                      child: MotionButton(
                        onPressed: () async {
                          await storage.delete(key: 'FIRST');
                          setState(() {
                            showFirst = false;
                          });
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
                ],
              )),
        );
      }
    }
    return Container();
  }
}
