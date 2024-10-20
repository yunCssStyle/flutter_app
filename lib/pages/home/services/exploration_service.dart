import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:retrofit/retrofit.dart';

part 'exploration_service.g.dart';

final explorationServicesProvider = Provider<ExplorationServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = ExplorationServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class ExplorationServices {
  factory ExplorationServices(Dio dio, {String baseUrl}) = _ExplorationServices;
  // 탐사 (탐사 상황)
  @GET('/home/exploration')
  @Headers({'accessToken': 'true'})
  Future<ExplorationModel> getExploration();
  // 탐사 시작
  @POST('/home/exploration/deploy')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<ExplorationModel> postDeploy();
  // 탐사 시간 단축 ( 탭 요청 )
  @POST('/home/exploration/tab')
  @Headers({'accessToken': 'true'})
  Future<ExplorationTabModel?> postTab();
  // 탐사 리워드 클레임
  @POST('/home/exploration/claim')
  @Headers({'accessToken': 'true'})
  Future<void> postClaim();
}
