import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/attack_model.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

final attackProvider =
    StateNotifierProvider<AttackProvider, AttackBase?>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return AttackProvider(
    actionServices: actionServices,
    ref: ref,
  );
});

class AttackProvider extends StateNotifier<AttackBase?> {
  final ActionServices actionServices;
  final Ref ref;
  AttackProvider({
    required this.actionServices,
    required this.ref,
  }) : super(null);

  Future<bool> getAttack({int? targetId, int? attackId, bool? isGold}) async {
    state = AttackLoading();
    try {
      if (targetId != null) {
        final attackIds =
            await actionServices.postAttack(targetId); // 정보 조회 api 호출
        final resAttackid = attackIds.attackId;
        final attack = await actionServices.getRound(resAttackid);
        state = attack;
        final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
        if (isGold != null) {
          await FirebaseAnalytics.instance.logEvent(
            name: isGold ? "start_attack_paid" : "start_attack_free",
            parameters: {"nickname": nickname},
          );
        }
      }
      if (attackId != null) {
        final attack = await actionServices.getRound(attackId);
        state = attack;
      }
      return true;
    } catch (e) {
      ref.read(isAttackProvider.notifier).state = false;
      // error exception catch
      return false;
    }
  }

  Future<bool> getAttackRevenge(
      {int? targetId, int? refAttackId, int? attackId}) async {
    try {
      if (targetId != null && refAttackId != null) {
        final attackIds = await actionServices.postRevengesAttack(
            refAttackId, targetId); // 정보 조회 api 호출
        final attack = attackIds.attackId;
        await Future.delayed(const Duration(seconds: 1));
        state = await actionServices.getRound(attack);
        final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
        await FirebaseAnalytics.instance.logEvent(
          name: "start_revenge",
          parameters: {"nickname": nickname},
        );
      }
      if (attackId != null) {
        state = await actionServices.getRound(attackId);
      }
      return true;
    } catch (e) {
      ref.read(isAttackProvider.notifier).state = false;
      // error exception catch
      return false;
    }
  }
}

final targetNicknameProvider = StateProvider<String>((ref) => "");
final isAttackProvider = StateProvider<bool>((ref) => false);
final isRoundProvider = StateProvider<int>((ref) => 0);
final isLoadListProvider = StateProvider<bool>((ref) => false);
