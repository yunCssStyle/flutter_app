import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/services/home_service.dart';

final progressBarProvider =
    StateNotifierProvider<ProgressBarProvider, int>((ref) {
  final homeServices = ref.watch(homeServicesProvider); // 홈 정보 조회 api
  return ProgressBarProvider(
    homeServices: homeServices,
  );
});

class ProgressBarProvider extends StateNotifier<int> {
  final HomeServices homeServices;
  ProgressBarProvider({
    required this.homeServices,
  }) : super(0) {
    _startTimer();
  }
  late Timer timer;

  Future<void> _startTimer() async {
    try {
      final home = await homeServices.getHome(); // 홈 정보 조회 api 호출
      if (home.isDivision && state == 0) {
        timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (state == home.data.storage.dividendsCycle) {
            state = 0;
          } else {
            state = state + 1;
          }
        });
      }
    } catch (e) {
      // print(e);
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
