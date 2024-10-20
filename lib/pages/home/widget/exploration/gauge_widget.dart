import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/home/provider/gauge_provider.dart';

class GaugeWidget extends ConsumerWidget {
  final int count;
  const GaugeWidget({super.key, required this.count});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gauge = ref.watch(gaugeProvider);
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Opacity(
          opacity: count > 0 ? 1 : 0.3,
          child: Container(
            width: 274.w,
            height: 18.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                image:
                    AssetImage('assets/images/home/exploration/gauge_bg.png'),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Positioned(
                  top: 2.5.w,
                  left: 3.w,
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: gauge == 260 ? 264.w : gauge.w,
                      height: 12.5.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          alignment: Alignment.center,
                          image: AssetImage(
                              'assets/images/home/exploration/gauge.png'),
                        ),
                      ),
                      // child: Stack(
                      //     clipBehavior: Clip.none,
                      //     alignment: Alignment.centerLeft,
                      //     children: [
                      //       if (gauge > 0)
                      //         Positioned(
                      //           right: -2.w,
                      //           top: 0,
                      //           child: Image.asset(
                      //             'assets/images/home/exploration/gauge1.png',
                      //             width: 2.w,
                      //             fit: BoxFit.fill,
                      //           ),
                      //         ),
                      //     ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -30.w,
          right: -20.w,
          child: Image.asset(
            width: 44.w,
            height: 66.h,
            fit: BoxFit.fitWidth,
            'assets/images/home/exploration/cola$count.png',
          ),
        ),
        if (count > 0)
          Positioned(
            top: -2.w,
            right: -30.w,
            child: Center(
              child: Container(
                height: 24.w,
                width: 24.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.lightYellow,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Colors.black,
                      width: 2.w,
                    ),
                  ),
                ),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.w,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ),
        if (count > 0)
          Positioned(
            top: 20.w,
            child: Text(
              'Tap to speed up!',
              style: TextStyle(
                fontFamily: 'Chaloops',
                fontSize: 16.w,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}
