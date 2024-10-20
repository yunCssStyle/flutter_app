import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/provider/rolling_message_model.dart';
import 'package:simple_animations/simple_animations.dart';

class RollingMessage extends ConsumerStatefulWidget {
  const RollingMessage({super.key});

  @override
  ConsumerState<RollingMessage> createState() => _RollingMessageState();
}

class _RollingMessageState extends ConsumerState<RollingMessage> {
  List foods = [];
  late Control control;
  @override
  void initState() {
    super.initState();
  }

  void setMessage(msg) {
    try {
      setState(() {
        foods = [...foods, msg];
        control = Control.play;
      });
    } catch (e) {
      // print(e);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final layoutState = ref.watch(layoutProvider);
    ref.listen<String>(rollingMessageProvider,
        (String? previousStr, String newCountStr) {
      setMessage(newCountStr);
    });
    return Opacity(
      opacity: layoutState.isMyAppBar ? 1 : 0,
      child: Container(
          margin: EdgeInsets.only(top: 5.h),
          child: foods.isNotEmpty
              ? IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        width: 5.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            alignment: AlignmentDirectional.topStart,
                            repeat: ImageRepeat.repeat,
                            image: AssetImage(
                                'assets/images/common/snackbar_bg1.png'), // 배경 이미지
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30.h,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(0)),
                          // margin: EdgeInsets.only(bottom: 464.h),
                          child: CustomAnimationBuilder<double>(
                            control:
                                control, // bind variable with control instruction
                            tween: Tween<double>(begin: 280.0, end: -360.0),
                            duration: const Duration(seconds: 5),
                            onStarted: () {},
                            onCompleted: () async {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  foods = List.from(foods)..removeAt(0);
                                });
                                if (foods.isNotEmpty) {
                                  setState(() {
                                    control = Control.playFromStart;
                                  });
                                }
                              });
                            },
                            builder: (context, value, child) {
                              return Transform.translate(
                                offset: Offset(value, 0),
                                child: child,
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                foods.first,
                                maxLines: 1,
                                style: TextStyle(
                                  textBaseline: TextBaseline.alphabetic,
                                  height: 1.4.w,
                                  fontSize: 14.w,
                                  color: Colors.white,
                                  fontFamily: 'ProximaSoft',
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 5.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            alignment: AlignmentDirectional.topEnd,
                            repeat: ImageRepeat.repeat,
                            image: AssetImage(
                                'assets/images/common/snackbar_bg2.png'), // 배경 이미지
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox()),
    );
  }
}
