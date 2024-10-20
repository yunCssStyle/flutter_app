import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/attack_history_model.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';

final attackHistoryProvider =
    StateNotifierProvider<AttackHistoryProvider, AttackHistoryBase>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return AttackHistoryProvider(
    actionServices: actionServices,
  );
});

class AttackHistoryProvider extends StateNotifier<AttackHistoryBase> {
  final ActionServices actionServices;
  AttackHistoryProvider({
    required this.actionServices,
  }) : super(AttackHistoryLoading());

  Future<void> setHistoryData() async {
    try {
      final action = await actionServices.getHistory(); // 정보 조회 api 호출
      state = action; //  정보 저장
    } catch (e) {
      state = AttackHistoryError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
