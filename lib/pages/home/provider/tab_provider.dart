import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/services/exploration_service.dart';

final tabProvider =
    StateNotifierProvider<TabProvider, ExplorationTabModel?>((ref) {
  final explorationServices =
      ref.watch(explorationServicesProvider); // 홈 정보 조회 api
  return TabProvider(
    explorationServices: explorationServices,
  );
});

class TabProvider extends StateNotifier<ExplorationTabModel?> {
  final ExplorationServices explorationServices;
  TabProvider({
    required this.explorationServices,
  }) : super(null);

  Future<void> postTab() async {
    // 탐사 시간 단축 ( 탭 요청 )
    try {
      final tab = await explorationServices.postTab();
      state = tab;
    } catch (e) {
      // error exception catch
    }
  }

  void tabClear() async {
    state = null;
  }
}
