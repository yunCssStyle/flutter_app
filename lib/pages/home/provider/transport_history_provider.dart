import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';
import 'package:minewarz_app/pages/home/services/transport_service.dart';

final transportHistoryProvider =
    StateNotifierProvider<TransportHistoryProvider, TransportHistoryBase>(
        (ref) {
  final transportServices = ref.watch(transportServicesProvider);
  return TransportHistoryProvider(
    transportServices: transportServices,
  );
});

class TransportHistoryProvider extends StateNotifier<TransportHistoryBase> {
  final TransportServices transportServices;
  TransportHistoryProvider({
    required this.transportServices,
  }) : super(TransportHistoryLoading()) {
    // setTransportData();
  }

  Future<void> setTransportData() async {
    try {
      final response = await transportServices.getTransportHistory();
      state = response;
    } catch (e) {
      // error exception catch
    }
  }
}
