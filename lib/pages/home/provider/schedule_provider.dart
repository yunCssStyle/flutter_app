import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/services/transport_service.dart';

import 'schedule_correction_provider.dart';

final scheduleProvider =
    StateNotifierProvider<ScheduleProvider, ScheduleBase?>((ref) {
  final transportServices = ref.watch(transportServicesProvider);

  return ScheduleProvider(
    transportServices: transportServices,
    ref: ref,
  );
});

class ScheduleProvider extends StateNotifier<ScheduleBase?> {
  final TransportServices transportServices;
  final Ref ref;
  ScheduleProvider({
    required this.transportServices,
    required this.ref,
  }) : super(ScheduleLoading());

  Future<void> setScheduleData() async {
    state = ScheduleLoading();
    try {
      final response = await transportServices.getTomorrow();
      state = response;
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> confirm(bool success) async {
    final scheduleCorrection =
        ref.read(scheduleCorrectionProvider.notifier).returnState();
    try {
      if (success) {
        if (scheduleCorrection is ScheduleModel) {
          final schedules = scheduleCorrection.transportSchedules
              .where((schedule) => schedule.reserved == true)
              .map<int>((schedule) => schedule.departureTime)
              .toList();
          await transportServices.putConfirm(
              body: ConfirmModel(reservedDepartureTimes: schedules));
          setScheduleData();
          ref.read(scheduleCorrectionProvider.notifier).setScheduleData();
          FToastShow.ftoast(text: 'Reservation Complete');
          final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
          await FirebaseAnalytics.instance.logEvent(
            name: "complete_transportbook",
            parameters: {"nickname": nickname},
          );
        }
      } else {
        FToastShow.ftoast(text: 'Changes not reflected.', type: 'error');
      }
    } catch (e) {
      // error exception catch
    }
  }

  returnState() {
    return state;
  }
}
