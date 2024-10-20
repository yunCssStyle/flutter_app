import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/services/home_service.dart';

final homeProvider = StateNotifierProvider<HomeProvider, HomeBase?>((ref) {
  final homeServices = ref.watch(homeServicesProvider); // 홈 정보 조회 api
  return HomeProvider(
    homeServices: homeServices,
  );
});

class HomeProvider extends StateNotifier<HomeBase?> {
  final HomeServices homeServices;
  HomeProvider({
    required this.homeServices,
  }) : super(HomeLoading()) {
    // setHomeData();
  }

  Future<void> setHomeData() async {
    try {
      final home = await homeServices.getHome(); // 홈 정보 조회 api 호출
      state = home; // 홈 정보 저장
    } catch (e) {
      // error exception catch
      state = HomeError();
    }
  }

  Future<void> reset() async {
    await Future.delayed(const Duration(milliseconds: 500));
    await setHomeData();
  }

  Future<void> cartreset() async {
    state = HomeLoading();
    reset();
  }

  Future<bool> resetBool() async {
    await reset();
    return true;
  }

  Future<void> mysteryBoxFalse() async {
    final mysteryBoxFalse = state;
    if (mysteryBoxFalse is HomeModel && mysteryBoxFalse.isDivision) {
      // ignore: unused_result
      mysteryBoxFalse.copyWith(
          data: mysteryBoxFalse.data.copyWith(mysteryBox: false));
      state = mysteryBoxFalse;
    }
    setHomeData();
  }

  void loading() async {
    state = HomeLoading();
  }
}
