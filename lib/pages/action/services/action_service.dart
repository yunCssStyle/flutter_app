import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';
import 'package:minewarz_app/pages/action/model/attack_history_model.dart';
import 'package:minewarz_app/pages/action/model/attack_model.dart';
import 'package:minewarz_app/pages/action/model/revenge_list_model.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/model/weapon_model.dart';
import 'package:retrofit/retrofit.dart';

part 'action_service.g.dart';

final actionServicesProvider = Provider<ActionServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = ActionServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class ActionServices {
  factory ActionServices(Dio dio, {String baseUrl}) = _ActionServices;
  // 액션 화면 조회
  @GET('/actions')
  @Headers({'accessToken': 'true'})
  Future<ActionModel> getAction();
  // ATTACK 히스토리 조회
  @GET('/actions/attack/history')
  @Headers({'accessToken': 'true'})
  Future<AttackHistoryModel> getHistory();
  // 타겟리스트 조회
  @GET('/actions/attack/targets')
  @Headers({'accessToken': 'true'})
  Future<TargetModel> getTargets();
  // ACTION / ATTACK / 타겟 리스트 리셋
  @POST('/actions/attack/targets/refresh')
  @Headers({'accessToken': 'true'})
  Future<void> postReset();
  // ACTION / ATTACK / 타겟 공격 시작
  @POST('/actions/attack')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<AttackIdModel> postAttack(
    @Query('targetId') int targetId, // {"targetId": "iint"}
  );
  //ACTION / ATTACK / 타겟 공격 라운드 정보 가져오기
  @GET('/actions/attack/round')
  @Headers({'accessToken': 'true'})
  Future<AttackModel> getRound(
    @Query('attackId') int attackId, // {"attackId": "int"}
  );
  //ACTION / ATTACK / 현재 라운드 무기선택(공격)
  @GET('/actions/attack/weapon')
  @Headers({'accessToken': 'true'})
  Future<WeaponModel> getWeaponn(
    @Query('attackId') int attackId, // "attackId" 쿼리 파라미터 추가
    @Query('weaponId') int weaponId, // "weaponId" 쿼리 파라미터 추가
  );
  //ACTION / ATTACK / 무조건 패배
  @PUT('/actions/attack/lose')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<WeaponModel> putLose(
    @Query('attackId') int attackId, // "attackId" 쿼리 파라미터 추가
  );
  // ACTION / REVENGE / 타겟 리스트 조회
  @GET('/actions/revenges/targets')
  @Headers({'accessToken': 'true'})
  Future<RevengeModel> getRevengesTargets();
  // ACTION / REVENGE / 타겟 공격 시작
  @POST('/actions/revenges/attack')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<AttackIdModel> postRevengesAttack(
    @Query('refAttackId') int refAttackId, // {"refAttackId": "int"}
    @Query('targetId') int targetId, // {"targetId": "int"}
  );
}
