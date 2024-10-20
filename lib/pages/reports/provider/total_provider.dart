import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';

import '../services/reports_service.dart';

final totalProvider = StateNotifierProvider<TotalProvider, TotalBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return TotalProvider(
    reportsServices: reportsServices,
  );
});

class TotalProvider extends StateNotifier<TotalBase?> {
  final ReportsServices reportsServices;
  TotalProvider({
    required this.reportsServices,
  }) : super(TotalLoading()) {
    // setReportTotalData();
  }

  Future<void> setReportTotalData() async {
    // state = TotalLoading();
    try {
      final totalData = await reportsServices.getGlobalFund(); // 정보 조회 api 호출
      state = totalData; // 프로필 정보 저장
    } catch (e) {
      state = TotalError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
