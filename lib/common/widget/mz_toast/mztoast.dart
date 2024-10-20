import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:simple_animations/simple_animations.dart';

enum MZType { success, error }

class FToastShow {
  static ftoast({
    String? text,
    String? type,
    Widget? toast,
  }) {
    final context = GetIt.I<NavigationService>().getContext();
    FToast.toast(
      context,
      type: type == 'error' ? MZType.error : MZType.success,
      text: text,
      toast: toast,
    );
  }
}

class FToast {
  static Queue<_ToastData>? _entryQueue;
  static _ToastData? _current;

  static toast(
    final BuildContext context, {
    final MZType type = MZType.success,
    final Widget? toast,
    final int duration = 2800,
    final double height = 56,
    final String? text,
  }) {
    // Widget buildToast() {
    //   List<Widget> children = [];

    //   return ConstrainedBox(
    //     constraints: BoxConstraints(
    //         minWidth: 80.0,
    //         minHeight: 38.0,
    //         // ignore: deprecated_member_use
    //         maxWidth: MediaQueryData.fromView(window).size.width - 48.0),
    //     child: Container(
    //       decoration: const BoxDecoration(
    //         color: Colors.transparent,
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: children,
    //       ),
    //     ),
    //   );
    // }

    _entryQueue ??= Queue();
    final context = GetIt.I<NavigationService>().getContext();
    OverlayEntry entry = OverlayEntry(builder: (context) {
      final tween = MovieTween();

      tween
          .tween('pos', Tween(begin: 80.h, end: -20.h),
              duration: const Duration(milliseconds: 500))
          .thenFor(
            delay: const Duration(milliseconds: 2000),
            duration: const Duration(milliseconds: 200),
          )
          .tween('op', Tween(begin: 1.0, end: 0.0));

      return Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        child: PlayAnimationBuilder<Movie>(
          tween: tween, // 100.0 to 200.0
          duration: tween.duration, // for 1 second
          onCompleted: () {},
          curve: Curves.easeOut, // using the curve value
          builder: (context, value, _) {
            return Transform.translate(
              offset: Offset(0, value.get('pos')),
              child: Opacity(
                opacity: value.get('op'),
                child: Container(
                  width: MediaQuery.of(context).size.width - 32.w,
                  height: height.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: type == MZType.success
                        ? AppColor.lightYellow
                        : AppColor.darkRed,
                    border: Border.all(
                      color: type == MZType.success
                          ? AppColor.darkYellow
                          : AppColor.darkRed,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -10,
                        top: -12,
                        child: Transform.rotate(
                          angle: 50 * math.pi / 180,
                          child: Container(
                            width: 15,
                            height: 25,
                            color: type == MZType.success
                                ? AppColor.darkYellow
                                : AppColor.darkRed,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -10,
                        bottom: -10,
                        child: Opacity(
                          opacity: 0.7,
                          child: SvgPicture.asset(
                            height: 57,
                            width: 70,
                            'assets/images/modal/toast_icon.svg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // if (toast != null) toast ?? buildToast(),
                            if (text != null)
                              Text(
                                text,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: type == MZType.success
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'ProximaSoft'),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
    _ToastData toastData = _ToastData()
      ..context = context
      ..entry = entry
      ..duration = duration;
    _entryQueue?.addLast(toastData);
    _show();
  }

  static _show() {
    if (_current == null) {
      final _ToastData? first = (_entryQueue?.isNotEmpty ?? false)
          ? _entryQueue?.removeFirst()
          : null;
      _current = first;
      if (first != null) {
        try {
          if (first.context != null &&
              (first.context!.findRenderObject()?.attached ?? false) &&
              first.entry != null) {
            final overlayState = GetIt.I<NavigationService>().getOverlay();
            overlayState.insert(first.entry!);
            first.showed = true;
            Timer(
              Duration(milliseconds: first.duration),
              () {
                first.dispose();
                _current = null;
                _show();
              },
            );
          } else {
            first.dispose();
            _current = null;
          }
        } catch (e) {
          _current = null;
        }
      }
    }
  }
}

class _ToastData {
  OverlayEntry? entry;
  int duration = 1800;
  BuildContext? context;
  bool showed = false;

  dispose() {
    if (showed) entry?.remove();
    entry = null;
    context = null;
  }
}
