import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/login/model/login_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_service.g.dart';

final loginServicesProvider = Provider<LoginServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = LoginServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class LoginServices {
  factory LoginServices(Dio dio, {String baseUrl}) = _LoginServices;

  @POST('/sessions/logout')
  @Headers({'accessToken': 'true'})
  Future<void> postLogout();

  @PUT('/sessions/push')
  @Headers({
    'accessToken': 'true',
    'Content-Type': 'application/json',
  })
  Future<void> putPush({
    @Body() required PushPutModel body, // {"push": string}
  });
}
