import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/home/model/defense_model.dart';
import 'package:retrofit/retrofit.dart';

part 'defence_service.g.dart';

final defenceServicesProvider = Provider<DefenceServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = DefenceServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class DefenceServices {
  factory DefenceServices(Dio dio, {String baseUrl}) = _DefenceServices;
  // 탐사 (탐사 상황)
  @GET('/home/defence/history')
  @Headers({'accessToken': 'true'})
  Future<DefenseModel> getDefence();
  // 탐사 시간 단축 ( 탭 요청 )
  @PUT('/home/defence/read')
  @Headers({
    'accessToken': 'true',
  })
  // Future<void> putRead({
  //   @Body() required DefenseIdsModel body, // {"defenceId": [0]}
  // });
  Future<void> putRead(
    @Query('ids') List<int> ids,
  );
}
