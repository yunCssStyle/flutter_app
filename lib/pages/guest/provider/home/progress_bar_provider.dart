import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressBarProvider =
    StateNotifierProvider<ProgressBarProvider, int>((ref) {
  return ProgressBarProvider();
});

class ProgressBarProvider extends StateNotifier<int> {
  ProgressBarProvider() : super(0) {
    _startTimer();
  }
  late Timer timer;

  void _startTimer() async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state == 10) {
        state = 0;
      } else {
        state = state + 1;
      }
    });
  }
}
