import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/services/inventory_service.dart';

final mapProvider =
    StateNotifierProvider<SelectedProvider, InventoryMapBase>((ref) {
  final inventoryServices = ref.watch(inventoryServicesProvider);
  return SelectedProvider(inventoryServices: inventoryServices);
});

class SelectedProvider extends StateNotifier<InventoryMapBase> {
  final InventoryServices inventoryServices;
  SelectedProvider({
    required this.inventoryServices,
  }) : super(InventoryMapLoading()) {
    // setMapData();
  }
  Future<void> setMapData() async {
    try {
      final response = await inventoryServices.getInventoryMap();
      state = response;
    } catch (e) {
      // error exception catch
    }
  }
}
