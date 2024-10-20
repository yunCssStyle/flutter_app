import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';

import '../services/reports_service.dart';

final reportsProvider =
    StateNotifierProvider<ReportsProvider, ReportsBase>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return ReportsProvider(
    reportsServices: reportsServices,
  );
});

class ReportsProvider extends StateNotifier<ReportsBase> {
  final ReportsServices reportsServices;
  ReportsProvider({
    required this.reportsServices,
  }) : super(const ReportsModel(data: false));

  Future<ReportsModel?> setReportData() async {
    // state = ReportsLoading();
    try {
      final totalData = await reportsServices.getReports(); // 정보 조회 api 호출
      state = totalData; // 프로필 정보 저장
      return totalData;
    } catch (e) {
      state = ReportsError(); // 에러 상태로 변경
      // error exception catch
      return null;
    }
  }
}
