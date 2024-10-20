import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/defense_model.dart';
import 'package:minewarz_app/pages/home/services/defence_service.dart';

final defenseProvider =
    StateNotifierProvider<DefenseProvider, DefenseBase?>((ref) {
  final defenceServices = ref.watch(defenceServicesProvider); // 홈 정보 조회 api
  return DefenseProvider(
    defenceServices: defenceServices,
  );
});

class DefenseProvider extends StateNotifier<DefenseBase?> {
  final DefenceServices defenceServices;
  DefenseProvider({
    required this.defenceServices,
  }) : super(DefenseLoading());

  Future<void> setDefensetData() async {
    try {
      final defence = await defenceServices.getDefence();
      state = defence;
    } catch (e) {
      // error exception catch
    }
  }

  Future<bool> putRead(List<int> read) async {
    if (read.isEmpty) return false;
    try {
      await defenceServices.putRead(read);
      await setDefensetData();
      return true;
    } catch (e) {
      // error exception catch
      return false;
    }
  }
}
