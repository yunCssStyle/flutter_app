import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/provider/tab_provider.dart';
import 'package:minewarz_app/pages/home/services/exploration_service.dart';

final explorationProvider =
    StateNotifierProvider<ExplorationProvider, ExplorationBase>((ref) {
  final explorationServices =
      ref.watch(explorationServicesProvider); // 홈 정보 조회 api
  return ExplorationProvider(
    explorationServices: explorationServices,
    ref: ref,
  );
});

class ExplorationProvider extends StateNotifier<ExplorationBase> {
  final ExplorationServices explorationServices;
  final Ref ref;
  ExplorationProvider({
    required this.explorationServices,
    required this.ref,
  }) : super(ExplorationLoading()) {
    // setExplorationData();
  }

  Future<void> setExplorationData() async {
    state = ExplorationLoading();
    try {
      final exploration = await explorationServices.getExploration();
      state = exploration;
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> timeEnd(BuildContext context) async {
    if (context.mounted) {
      state = ExplorationLoading();
      await Future.delayed(const Duration(microseconds: 5000));
      setExplorationData();
    }
  }

  Future<void> postDeploy() async {
    // 탐사 시작
    try {
      final exploration = await explorationServices.postDeploy();
      state = exploration;
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> postTab() async {
    // 탐사 시간 단축 ( 탭 요청 )
    try {
      state = ExplorationLoading();
      await ref.read(tabProvider.notifier).postTab();
      // await Future.delayed(const Duration(microseconds: 5000));
      setExplorationData();
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> postClaim() async {
    // 탐사 리워드 클레임
    try {
      state = const ExplorationModel(
          status: 'WAITED', data: ExplorationDataModel(time: 10800));
      await explorationServices.postClaim();
      setExplorationData();
    } catch (e) {
      // error exception catch
    }
  }
}
