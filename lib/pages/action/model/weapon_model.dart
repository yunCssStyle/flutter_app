import 'package:freezed_annotation/freezed_annotation.dart';
part 'weapon_model.freezed.dart';
part 'weapon_model.g.dart';

abstract class WeaponBase {}

class WeaponLoading extends WeaponBase {}

@freezed
class WeaponModel extends WeaponBase with _$WeaponModel {
  const factory WeaponModel({
    required int attackId,
    required String result,
    required int round,
    required int totalRound,
    required num roundProfit,
    num? beforeProfit,
    required num currentProfit,
    required num totalProfit,
    required bool finished,
  }) = _WeaponModel;
  factory WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponModelFromJson(json);
}

@freezed
class WeaponReqModel with _$WeaponReqModel {
  const factory WeaponReqModel({
    required int attackId,
    required int weaponId,
  }) = _WeaponReqModel;
  factory WeaponReqModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponReqModelFromJson(json);
}
