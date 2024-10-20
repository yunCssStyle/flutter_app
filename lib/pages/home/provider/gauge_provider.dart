import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final gaugeProvider = StateNotifierProvider<GaugeProvider, double>((ref) {
  return GaugeProvider();
});

class GaugeProvider extends StateNotifier<double> {
  GaugeProvider() : super(0) {
    _startTimer();
  }

  final double _gaugeFull = 260;
  final double _clickHit = 30;
  late Timer _timer;

  void reset() {
    state = 0;
    _startTimer();
  }

  void clickGauge() {
    if (state + _gaugeFull / _clickHit > _gaugeFull) {
      state = _gaugeFull;
      return;
    }
    state = state + _gaugeFull / _clickHit;
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state + _gaugeFull / _clickHit > _gaugeFull) {
        _timer.cancel();
      } else {
        if (state > 0) {
          state = state - _gaugeFull / _clickHit > 0
              ? state - _gaugeFull / _clickHit
              : 0;
        }
      }
    });
  }
}
