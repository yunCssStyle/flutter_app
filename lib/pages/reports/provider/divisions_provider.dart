import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final divisionsProvider =
    StateNotifierProvider<DivisionsProvider, DivisionsBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return DivisionsProvider(
    reportsServices: reportsServices,
  );
});

class DivisionsProvider extends StateNotifier<DivisionsBase?> {
  final ReportsServices reportsServices;
  DivisionsProvider({
    required this.reportsServices,
  }) : super(DivisionsLoading());

  Future<void> setReportDiData(String data) async {
    // state = DivisionsLoading();
    try {
      final mpData = await reportsServices.getGlobalDivisions(data);
      state = mpData; // 정보 저장
    } catch (e) {
      state = DivisionsError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
