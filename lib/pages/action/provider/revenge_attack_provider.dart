import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/attack_model.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';

final revengeAttackProvider =
    StateNotifierProvider<RevengeAttackProvider, AttackBase>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return RevengeAttackProvider(
    actionServices: actionServices,
  );
});

class RevengeAttackProvider extends StateNotifier<AttackBase> {
  final ActionServices actionServices;
  RevengeAttackProvider({
    required this.actionServices,
  }) : super(AttackLoading());

  Future<bool> getAttackRevenge(
      {int? targetId, int? refAttackId, int? attackId}) async {
    try {
      if (targetId != null && refAttackId != null) {
        final attackIds = await actionServices.postRevengesAttack(
            refAttackId, targetId); // 정보 조회 api 호출
        final attack = attackIds.attackId;
        await Future.delayed(const Duration(seconds: 1));
        state = await actionServices.getRound(attack);
      }
      if (attackId != null) {
        state = await actionServices.getRound(attackId);
      }
      return true;
    } catch (e) {
      // error exception catch
      return false;
    }
  }
}
