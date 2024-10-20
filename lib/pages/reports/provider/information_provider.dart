import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/reports/model/information_model.dart';
import 'package:minewarz_app/pages/reports/services/reports_service.dart';

final informationProvider =
    StateNotifierProvider<InformationProvider, InformationBase?>((ref) {
  final reportsServices = ref.watch(reportsServicesProvider); // 정보 조회 api
  return InformationProvider(
    reportsServices: reportsServices,
  );
});

class InformationProvider extends StateNotifier<InformationBase?> {
  final ReportsServices reportsServices;
  InformationProvider({
    required this.reportsServices,
  }) : super(InformationLoading()) {
    // setMyInformationData();
  }

  Future<void> setMyInformationData() async {
    // state = InformationLoading();
    try {
      final myInformation =
          await reportsServices.getMyInformation(); // 정보 조회 api 호출
      state = myInformation; // 프로필 정보 저장
    } catch (e) {
      state = InformationError(); // 에러 상태로 변경
      // error exception catch
    }
  }
}
