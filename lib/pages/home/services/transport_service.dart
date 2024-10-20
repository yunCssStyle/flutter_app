import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';
import 'package:retrofit/retrofit.dart';

part 'transport_service.g.dart';

final transportServicesProvider = Provider<TransportServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = TransportServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class TransportServices {
  factory TransportServices(Dio dio, {String baseUrl}) = _TransportServices;
  // 수송 페이지 정보 조회
  @GET('/home/transport')
  @Headers({'accessToken': 'true'})
  Future<TransportModel> getTransport();
  // 수송 페이지 히스토리 정보 조회
  @GET('/home/transport/history')
  @Headers({'accessToken': 'true'})
  Future<TransportHistoryModel> getTransportHistory();
  // 수송 TOMORROW
  @GET('/home/transport/tomorrow')
  @Headers({'accessToken': 'true'})
  Future<ScheduleModel> getTomorrow();
  // 수송 TOMORROW CONFIRM
  @PUT('/home/transport/tomorrow/confirm')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putConfirm({
    @Body() required ConfirmModel body, // {  "reservedDepartureTimes": [0]}
  });
}
