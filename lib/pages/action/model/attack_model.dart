import 'package:freezed_annotation/freezed_annotation.dart';
part 'attack_model.freezed.dart';
part 'attack_model.g.dart';

abstract class AttackBase {}

class AttackLoading extends AttackBase {}

@freezed
class AttackModel extends AttackBase with _$AttackModel {
  const factory AttackModel({
    required int attackId,
    required int round,
    required int totalRound,
    required num roundProfit,
    required int chooseTime,
    required List<AttackListModel> weapons,
  }) = _AttackModel;
  factory AttackModel.fromJson(Map<String, dynamic> json) =>
      _$AttackModelFromJson(json);
}

@freezed
class AttackListModel with _$AttackListModel {
  const factory AttackListModel({
    required int weaponId,
    required String statEvent,
  }) = _AttackListModel;
  factory AttackListModel.fromJson(Map<String, dynamic> json) =>
      _$AttackListModelFromJson(json);
}

@freezed
class TargetIdModel with _$TargetIdModel {
  const factory TargetIdModel({
    required int targetId,
  }) = _TargetIdModel;
  factory TargetIdModel.fromJson(Map<String, dynamic> json) =>
      _$TargetIdModelFromJson(json);
}

@freezed
class AttackIdModel with _$AttackIdModel {
  const factory AttackIdModel({
    required int attackId,
  }) = _AttackIdModel;
  factory AttackIdModel.fromJson(Map<String, dynamic> json) =>
      _$AttackIdModelFromJson(json);
}
