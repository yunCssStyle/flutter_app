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
    setHomeData();
  }

  Future<void> setHomeData() async {
    try {
      state = const HomeModel(
        isDivision: true,
        nextReferenceTime: 38120,
        data: HomeDataModel(
          mysteryBox: false,
          mineLevel: 1,
          distribute: HomeDistributeModel(
            dividends: 475806.974858,
            miningPower: 0,
          ),
          storage: HomeStorageModel(
            dividendsCycle: 10,
            dividendsCycleGold: 55.07025,
            accumulateGold: 8095.32675,
            transportGold: 218078.19,
            nowDateTime: 1696512279,
            previousTransportTime: 1696510800,
            nextTransportTime: 1696550400,
          ),
        ),
        newBadge: HomeNewBadgeModel(
          defence: false,
          explore: false,
          inventory: false,
          tradingPost: false,
        ),
      );
      // state = home; // 홈 정보 저장
    } catch (e) {
      // error exception catch
      state = HomeError();
    }
  }

  Future<void> reset() async {
    state = HomeLoading();
    await Future.delayed(const Duration(milliseconds: 500));
    await setHomeData();
  }

  Future<bool> resetBool() async {
    await reset();
    return true;
  }

  void loading() async {
    state = HomeLoading();
  }
}
