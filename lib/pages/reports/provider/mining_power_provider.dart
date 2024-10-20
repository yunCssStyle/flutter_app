import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final miningPowerProvider =
    StateNotifierProvider<MiningPowerProvider, MiningBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return MiningPowerProvider(
    reportsServices: reportsServices,
  );
});

class MiningPowerProvider extends StateNotifier<MiningBase?> {
  final ReportsServices reportsServices;
  MiningPowerProvider({
    required this.reportsServices,
  }) : super(MiningLoading()) {
    // setReportMpData(
    //     "${DateTime.now().year}-${DateTime.now().month < 10 ? 0 + DateTime.now().month : DateTime.now().month}-${DateTime.now().day < 10 ? 0 + DateTime.now().day : DateTime.now().day}");
  }

  Future<void> setReportMpData(String data) async {
    // state = MiningLoading();
    try {
      final mpData = await reportsServices.getGlobalMp(data); // 정보 조회 api 호출
      state = mpData; // 프로필 정보 저장
    } catch (e) {
      state = MiningError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
