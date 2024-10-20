import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/revenge_list_model.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';

final revengeListProvider =
    StateNotifierProvider<RevengeListProvider, RevengeBase?>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return RevengeListProvider(
    actionServices: actionServices,
  );
});

class RevengeListProvider extends StateNotifier<RevengeBase?> {
  final ActionServices actionServices;
  RevengeListProvider({
    required this.actionServices,
  }) : super(null);

  Future<void> setRevengeListData() async {
    state = RevengeLoading();
    try {
      final revenges =
          await actionServices.getRevengesTargets(); // 정보 조회 api 호출
      await Future.delayed(const Duration(milliseconds: 500));
      state = revenges; // 정보 저장
      // state = const RevengeModel(revengeTargets: [
      //   RevengeListModel(
      //     refAttackId: 1,
      //     targetId: 1,
      //     targetNickname: 'test',
      //     totalRound: 1,
      //     maxProfit: 1,
      //     expectedProfit: 1,
      //     revengeExpiredTime: 1,
      //     cost: TargetCostModel(
      //       type: 'aaaa',
      //       amount: 1,
      //     ),
      //     profile: ProfileModel(
      //       url: 'aaaa',
      //       type: 'aaaa',
      //     ),
      //     statBonus: 1,
      //     isExecute: false,
      //   )
      // ]);
    } catch (e) {
      state = RevengeError(); // 에러 상태로 변경
      // error exception catch
    }
  }

  Future<void> reset() async {
    state = RevengeLoading();
    await Future.delayed(const Duration(milliseconds: 1000));
    setRevengeListData();
  }
}
