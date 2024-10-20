import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/reports/model/chart_model.dart';
import 'package:minewarz_app/pages/reports/model/information_model.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:retrofit/retrofit.dart';

part 'reports_service.g.dart';

final reportsServicesProvider = Provider<ReportsServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = ReportsServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class ReportsServices {
  factory ReportsServices(Dio dio, {String baseUrl}) = _ReportsServices;
  // REPORT 진입 시 최초 호출 ( my data 여부 )
  @GET('/reports')
  @Headers({'accessToken': 'true'})
  Future<ReportsModel> getReports();
  // REPORT / 총 누적 금액 조회
  @GET('/reports/global/fund')
  @Headers({'accessToken': 'true'})
  Future<TotalModel> getGlobalFund();
  // REPORT / global mp 조회
  @GET('/reports/global/mp')
  @Headers({'accessToken': 'true'})
  Future<MiningModel> getGlobalMp(
    @Query('date') String date, // {"date": "2023-10-11"}
  );
  // REPORT / global divisions 조회
  @GET('/reports/global/divisions')
  @Headers({'accessToken': 'true'})
  Future<DivisionsModel> getGlobalDivisions(
    @Query('date') String date, // {"date": "2023-10-11"}
  );
  // REPORT / global exploration 조회
  @GET('/reports/global/exploration')
  @Headers({'accessToken': 'true'})
  Future<ExplorationModel> getGlobalExploration();
  // REPORT / my information 조회
  @GET('/reports/charts')
  @Headers({'accessToken': 'true'})
  Future<ChartModel> getCharts(
    @Query('zone') String zone, // {"zone": "string"}
    @Query('type') String type,
  );
  //REPORT / rankings 조회
  @GET('/reports/rankings')
  @Headers({'accessToken': 'true'})
  Future<RankingModel> getRankings(
    @Query('zone') String zone, // {"zone": "string"}
    @Query('type') String type,
  );
  // REPORT / my information 조회
  @GET('/reports/my-information')
  @Headers({'accessToken': 'true'})
  Future<InformationModel> getMyInformation();
}
