import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/services/inventory_service.dart';

final inventoryProvider =
    StateNotifierProvider<InventoryProvider, InventoryBase?>((ref) {
  final inventoryServices = ref.watch(inventoryServicesProvider);
  return InventoryProvider(
    inventoryServices: inventoryServices,
    ref: ref,
  );
});

class InventoryProvider extends StateNotifier<InventoryBase?> {
  final InventoryServices inventoryServices;
  final Ref ref;
  InventoryProvider({
    required this.inventoryServices,
    required this.ref,
  }) : super(InventoryLoading()) {
    // setInventoryData();
  }

  Future<void> setInventoryData() async {
    try {
      state = InventoryLoading();
      final response = await inventoryServices.getInventory();
      state = response;
    } catch (e) {
      // error exception catch
    }
  }

  void reset() async {
    await setInventoryData();
  }

  Future<bool> putActive(ActivateModel active) async {
    try {
      await inventoryServices.putActivate(body: active);
      await setInventoryData();
      final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
      await FirebaseAnalytics.instance.logEvent(
        name: "equipped_MR",
        parameters: {"nickname": nickname},
      );
      return true;
    } catch (e) {
      // error exception catch
      return false;
    }
  }

  Future<bool> putRead(
      {required InventoryIdsModel read, required bool ticketRead}) async {
    if (read.ids.isEmpty && ticketRead) return false;
    try {
      if (read.ids.isNotEmpty) {
        await inventoryServices.putRead(body: read);
      }
      if (!ticketRead) {
        await inventoryServices.putTickeRead();
      }
      await setInventoryData();
      return true;
    } catch (e) {
      // error exception catch
      return false;
    }
  }
}

final upgradeProvider =
    StateNotifierProvider<UpgradeProvider, UpgradeBase?>((ref) {
  final inventoryServices = ref.watch(inventoryServicesProvider);
  return UpgradeProvider(
    inventoryServices: inventoryServices,
    ref: ref,
  );
});

class UpgradeProvider extends StateNotifier<UpgradeBase?> {
  final InventoryServices inventoryServices;
  final Ref ref;
  UpgradeProvider({
    required this.inventoryServices,
    required this.ref,
  }) : super(null);

  Future<void> setUpgradeData(List<int> upgradeQuery) async {
    try {
      final upgrade = await inventoryServices.getUpgrade(upgradeQuery);
      state = upgrade;
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> postUpgrade(InventoryIdsModel upgradedata) async {
    try {
      state = UpgradeLoading();
      await Future.delayed(const Duration(seconds: 3));
      final upgrade = await inventoryServices.postUpgrade(body: upgradedata);
      ref.read(inventoryProvider.notifier).reset();
      ref.read(myInfoProvider.notifier).setMyInfoData();
      state = upgrade;
      final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
      await FirebaseAnalytics.instance.logEvent(
        name: "upgrade_MR",
        parameters: {"nickname": nickname},
      );
    } catch (e) {
      // error exception catch
    }
  }
}
