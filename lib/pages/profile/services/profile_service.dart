import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/profile/model/new_pioneers_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

final profileServicesProvider = Provider<ProfileServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = ProfileServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class ProfileServices {
  factory ProfileServices(Dio dio, {String baseUrl}) = _ProfileServices;
  // 프로필 메인 화면 조회
  @GET('/profiles')
  @Headers({'accessToken': 'true'})
  Future<ProfileModel> getProfile();
  // 프로필 리스트 조회 - type: all | endstat | newstat
  @GET('/profiles/list')
  @Headers({'accessToken': 'true'})
  Future<ProfileListModel> getProfileList(
    @Query('type') String type, // {"type": "string"}
    @Query('page') int page,
    @Query('size') int size,
  );
  // 프로필 장착
  @PUT('/profiles/equip')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putProfileEquip({
    @Body() required ProfileEquipModel body, // {"id": 0, "equip": true}
  });
  // 프로필 읽음 처리
  @PUT('/profiles/read')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putProfileRead({
    @Body() required ProfileReadModel body, // {"ids": [0]}
  });
  // 스탯부여
  @POST('/profiles/stat')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<NewStatModel> postProfileStat({
    @Body() required PostStat body, // {"id": 0}
  });
}
