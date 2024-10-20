import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/services/transport_service.dart';

final scheduleCorrectionProvider =
    StateNotifierProvider<ScheduleCorrectionProvider, ScheduleBase?>((ref) {
  final transportServices = ref.watch(transportServicesProvider);
  return ScheduleCorrectionProvider(
    transportServices: transportServices,
  );
});

class ScheduleCorrectionProvider extends StateNotifier<ScheduleBase?> {
  final TransportServices transportServices;
  ScheduleCorrectionProvider({
    required this.transportServices,
  }) : super(ScheduleLoading()) {
    // setScheduleData();
  }

  Future<void> setScheduleData() async {
    state = ScheduleLoading();
    try {
      final response = await transportServices.getTomorrow();
      state = response;
    } catch (e) {
      // print(e);
    }
  }

  returnState() {
    return state;
  }

  void setTime(int time) {
    final currentState = state;
    if (currentState is ScheduleModel) {
      final schedules = currentState.transportSchedules.map((e) {
        if (e.departureTime == time) {
          if (e.reserved) {
            return e.copyWith(reserved: false);
          } else {
            int reservedTrueCount = currentState.transportSchedules
                .where((schedule) => schedule.reserved == true)
                .length;
            if (reservedTrueCount <= currentState.confirmStatus.maxCount - 1) {
              return e.copyWith(reserved: true);
            } else {
              return e.copyWith(reserved: false);
            }
          }
        } else {
          return e;
        }
      }).toList();
      state = currentState.copyWith(transportSchedules: schedules);
    }
  }
}
