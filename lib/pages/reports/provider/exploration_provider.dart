import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final explorationProvider =
    StateNotifierProvider<ExplorationProvider, ExplorationBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return ExplorationProvider(
    reportsServices: reportsServices,
  );
});

class ExplorationProvider extends StateNotifier<ExplorationBase?> {
  final ReportsServices reportsServices;
  ExplorationProvider({
    required this.reportsServices,
  }) : super(ExplorationLoading()) {
    // setReportExData();
  }

  Future<void> setReportExData() async {
    // state = ExplorationLoading();
    try {
      final exData =
          await reportsServices.getGlobalExploration(); // 정보 조회 api 호출
      state = exData; // 정보 저장
    } catch (e) {
      state = ExplorationError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
