import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';
import 'package:minewarz_app/pages/home/services/transport_service.dart';

final transportProvider =
    StateNotifierProvider<TransportProvider, TransportBase?>((ref) {
  final transportServices = ref.watch(transportServicesProvider);
  return TransportProvider(
    transportServices: transportServices,
  );
});

class TransportProvider extends StateNotifier<TransportBase?> {
  final TransportServices transportServices;
  TransportProvider({
    required this.transportServices,
  }) : super(TransportLoading());

  Future<void> setTransportData() async {
    try {
      final response = await transportServices.getTransport();
      final responseSort = response.transportSchedules.toList()
        ..sort((a, b) => a.departureTime.compareTo(b.departureTime));
      final sortedTransportModel = TransportModel(
        transportedGold: response.transportedGold,
        transportFeeRate: response.transportFeeRate,
        transportSchedules: responseSort,
      );
      state = sortedTransportModel;
    } catch (e) {
      // error exception catch
    }
  }
}
