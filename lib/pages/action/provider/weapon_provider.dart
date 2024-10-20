import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/action/model/weapon_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/services/action_service.dart';

final weaponProvider = StateNotifierProvider<WeaponProvider, WeaponBase>((ref) {
  final actionServices = ref.watch(actionServicesProvider);
  return WeaponProvider(
    actionServices: actionServices,
    ref: ref,
  );
});

class WeaponProvider extends StateNotifier<WeaponBase> {
  final ActionServices actionServices;
  final Ref ref;
  WeaponProvider({
    required this.actionServices,
    required this.ref,
  }) : super(WeaponLoading());

  Future<bool> setWeaponData({
    int attackId = 0,
    int weaponId = 0,
  }) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    state = WeaponLoading();
    try {
      final weapon = await actionServices.getWeaponn(attackId, weaponId);
      // .timeout(connectTimeout);
      // ref.read(revengeListProvider.notifier).reset();
      ref.read(isRoundProvider.notifier).state = 0;
      state = weapon;
      return true;
    } on DioException catch (e) {
      Map<String, dynamic> json = jsonDecode(e.response.toString());
      if (json['client_code'].toString() == 'NOT_FOUND_ACTION_ROUND') {
        loseWeapon(attackId: attackId);
      }
      // error exception catch
      return false;
    }
  }

  Future<void> loseWeapon({
    int attackId = 0,
  }) async {
    state = WeaponLoading();
    try {
      final weapon = await actionServices.putLose(attackId);
      state = weapon;
    } catch (e) {
      // error exception catch
    }
  }

  void loseNetwork({
    int attackId = 0,
  }) async {
    state = WeaponModel(
      attackId: attackId,
      result: 'LOSE',
      round: 1,
      totalRound: 1,
      roundProfit: 0,
      currentProfit: 0,
      totalProfit: 0,
      finished: true,
    );
  }

  getState() {
    return state;
  }
}
