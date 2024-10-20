import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:retrofit/retrofit.dart';

part 'my_info_service.g.dart';

final myInfoServicesProvider = Provider<MyInfoServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = MyInfoServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class MyInfoServices {
  factory MyInfoServices(Dio dio, {String baseUrl}) = _MyInfoServices;
  // 처음 접속시 정보 조회
  @POST('/init')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<void> postMyInfo();
  // 처음 접속시 정보 조회
  @GET('/init')
  @Headers({'accessToken': 'true'})
  Future<MyInfoModel> getMyInfo();
  // 닉네임 중복 체크
  @GET('/members/nickname/check')
  @Headers({'accessToken': 'true'})
  Future<NicknameCheck> getInitNickNameCheck(
    @Query('nickname') String nickname, // {"nickname": "string"}
  );
  // 처음 닉네임 설정
  @POST('/members/nickname')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<void> postInitNickName({
    @Body() required Nickname body, // {"nickname": "string"}
  });
  // 닉네임 변경
  @PUT('/members/nickname')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<void> putInitNickName({
    @Body() required Nickname body, // {"nickname": "string"}
  });

  // 회원탈퇴
  @PUT('/members/withdrawal')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putWithdrawal();
}
