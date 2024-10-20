// import 'dart:async';
// ignore_for_file: file_names

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:simple_animations/simple_animations.dart';

enum PersistentToastType { notification }

class PersistentToastShow {
  static show({
    String? text,
    PersistentToastType? type,
    Widget? toast,
  }) {
    final context = GetIt.I<NavigationService>().getContext();
    PersistentToast.persistentToast(
      context,
      type: type ?? PersistentToastType.notification,
      text: text,
      toast: toast,
    );
  }
}

class PersistentToast {
  static final Queue<_ToastData> _entryQueue = Queue();
  static _ToastData? _current;

  static persistentToast(
    final BuildContext context, {
    final PersistentToastType? type,
    final Widget? toast,
    final int duration = 2800,
    final double height = 71,
    final String? text,
  }) {
    final context = GetIt.I<NavigationService>().getContext();

    OverlayEntry entry = OverlayEntry(builder: (context) {
      final tween = MovieTween();
      tween
          .tween('pos', Tween(begin: 80.h, end: -20.h),
              duration: const Duration(milliseconds: 500))
          .thenFor(
            delay: const Duration(milliseconds: 2000),
            duration: const Duration(milliseconds: 200),
          );
      // .tween('op', Tween(begin: 1.0, end: 1.0));

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
              child: Container(
                // width: MediaQuery.of(context).size.width - 32.w,
                width: MediaQuery.of(context).size.width - 16.w,
                height: height.h,
                // clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8.w,
                      bottom: 0,
                      child: Column(
                        children: [
                          SizedBox(height: 15.h),
                          Container(
                            width: MediaQuery.of(context).size.width - 32.w,
                            height: (height - 15).h,
                            decoration: BoxDecoration(
                              color: AppColor.darkYellow,
                              border: Border.all(
                                color: AppColor.lightYellow1,
                                width: 3,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child:
                                    //! max text length 110
                                    Text(
                                  //110자 이상이면 + ...

                                  text != null
                                      ? text.length > 105
                                          ? '${text.substring(0, 105)}...'
                                          : text
                                      : '',
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'ProximaSoft'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -5,
                      top: -5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(38, 38),
                          maximumSize: const Size(38, 38),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          // code to execute when button is pressed
                          _current!.dispose();
                          _current = null;
                          _show();
                        },
                        child: Image.asset(
                          'assets/images/common/icon/close.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });

    _ToastData toastData = _ToastData()
      ..context = context
      ..entry = entry;
    // ..duration = duration;

    _entryQueue.addLast(toastData);
    _show();
  }

  static _show() {
    if (_current == null) {
      final _ToastData? first =
          (_entryQueue.isNotEmpty) ? _entryQueue.removeFirst() : null;
      _current = first;
      if (first != null) {
        try {
          if (first.context != null &&
              (first.context!.findRenderObject()?.attached ?? false) &&
              first.entry != null) {
            final overlayState = GetIt.I<NavigationService>().getOverlay();
            overlayState.insert(first.entry!);
            first.showed = true;

            _show();
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
  // int duration = 18000;
  BuildContext? context;
  bool showed = false;

  dispose() {
    if (showed) entry?.remove();
    entry = null;
    context = null;
  }
}
