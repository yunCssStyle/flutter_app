import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/chart_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final chartProvider = StateNotifierProvider<ChartProvider, ChartBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return ChartProvider(
    reportsServices: reportsServices,
  );
});

class ChartProvider extends StateNotifier<ChartBase?> {
  final ReportsServices reportsServices;
  ChartProvider({
    required this.reportsServices,
  }) : super(ChartLoading()) {
    setChartData(zone: 'PUBLIC', type: 'TRANSIT');
  }

  Future<ChartBase?> setChartData(
      {required String zone, required String type}) async {
    // state = ChartLoading();
    try {
      final chart = await reportsServices.getCharts(zone, type);

      state = chart;
      return state;
    } catch (e) {
      state = ChartError();
      // error exception catch
      return null;
    }
  }
}
