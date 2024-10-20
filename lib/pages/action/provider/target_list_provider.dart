import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

final targetListProvider =
    StateNotifierProvider.autoDispose<TargetListProvider, TargetBase?>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return TargetListProvider(
    actionServices: actionServices,
    ref: ref,
  );
});

class TargetListProvider extends StateNotifier<TargetBase?> {
  final ActionServices actionServices;
  final Ref ref;
  TargetListProvider({
    required this.actionServices,
    required this.ref,
  }) : super(null);
  bool isLoadList = false;

  Future<bool> setTargetListData() async {
    try {
      isLoadList = true;
      state = TargetLoading();
      final targets = await actionServices.getTargets(); // 정보 조회 api 호출
      await Future.delayed(const Duration(milliseconds: 500));
      state = targets; // 정보 저장
      ref.read(isLoadListProvider.notifier).state = false;
      isLoadList = false;
      return true;
    } catch (e) {
      // error exception catch
      return false;
    }
  }

  Future<void> reset() async {
    if (mounted) {
      final isLoadList = ref.read(isLoadListProvider.notifier).state;
      if (!isLoadList) {
        ref.read(isLoadListProvider.notifier).state = true;
        if (!isLoadList) {
          state = TargetLoading();
          await Future.delayed(const Duration(milliseconds: 500));
          await setTargetListData();
        }
      }
    }
  }

  Future<TargetModel?> getList() async {
    state = TargetLoading();
    if (state is TargetModel) {
      return state as TargetModel;
    } else {
      return null;
    }
  }

  Future<void> refresh() async {
    if (!isLoadList) {
      try {
        await actionServices.postReset();
        setTargetListData();
        final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
        await FirebaseAnalytics.instance.logEvent(
          name: "reset_attacklist",
          parameters: {"nickname": nickname},
        );
      } catch (e) {
        // error exception catch
      }
    }
  }

  void srateNull() async {
    state = TargetLoading();
    await Future.delayed(const Duration(milliseconds: 500));
    state = const TargetModel(
      ticketCount: 0,
      ticketRemainingTime: 100,
      data: null,
    );
  }
}
