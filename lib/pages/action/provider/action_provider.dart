import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';

final actionProvider = StateNotifierProvider<ActionProvider, ActionBase>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return ActionProvider(
    actionServices: actionServices,
  );
});

class ActionProvider extends StateNotifier<ActionBase> {
  final ActionServices actionServices;
  ActionProvider({
    required this.actionServices,
  }) : super(ActionLoading()) {
    // setZoneData();
  }

  Future<void> setZoneData() async {
    try {
      final action = await actionServices.getAction(); // 정보 조회 api 호출
      state = action; //  정보 저장
    } catch (e) {
      // error exception catch
    }
  }

  void loading() async {
    state = ActionLoading();
  }
}
