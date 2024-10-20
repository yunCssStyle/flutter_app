import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final rankingProvider =
    StateNotifierProvider<RankingProvider, RankingBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return RankingProvider(
    reportsServices: reportsServices,
  );
});

class RankingProvider extends StateNotifier<RankingBase?> {
  final ReportsServices reportsServices;
  RankingProvider({
    required this.reportsServices,
  }) : super(RankingLoading()) {
    // setRankingData(zone: 'PUBLIC', type: 'MINING');
  }

  void setRankingData({required String zone, required String type}) async {
    // state = RankingLoading();
    try {
      final rankingData = await reportsServices.getRankings(zone, type);
      state = rankingData;
    } catch (e) {
      state = RankingError();
      // error exception catch
    }
  }
}
