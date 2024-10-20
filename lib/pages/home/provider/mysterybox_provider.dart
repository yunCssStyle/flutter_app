import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/services/home_service.dart';

final mysteryboxProvider =
    StateNotifierProvider<MysteryboxProvider, MysteryboxBase?>((ref) {
  final homeServices = ref.watch(homeServicesProvider); // 홈 정보 조회 api
  return MysteryboxProvider(
    homeServices: homeServices,
  );
});

class MysteryboxProvider extends StateNotifier<MysteryboxBase?> {
  final HomeServices homeServices;
  MysteryboxProvider({
    required this.homeServices,
  }) : super(MysteryboxLoading()) {
    // setHomeData();
  }

  Future<void> setMysteryboxData() async {
    try {
      final mysterybox =
          await homeServices.postMysteryboxOpen(); // 정보 조회 api 호출
      state = mysterybox; // 정보 저장
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> resetMysterybox() async {
    state = null;
  }
}
