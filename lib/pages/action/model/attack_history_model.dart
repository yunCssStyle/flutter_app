import 'package:freezed_annotation/freezed_annotation.dart';

import 'target_list_model.dart';
part 'attack_history_model.freezed.dart';
part 'attack_history_model.g.dart';

abstract class AttackHistoryBase {}

class AttackHistoryLoading extends AttackHistoryBase {}

class AttackHistoryError extends AttackHistoryBase {}

@freezed
class AttackHistoryModel extends AttackHistoryBase with _$AttackHistoryModel {
  const factory AttackHistoryModel({
    required List<AttackHistoryListModel> attackHistories,
  }) = _AttackHistoryModel;
  factory AttackHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AttackHistoryModelFromJson(json);
}

@freezed
class AttackHistoryListModel with _$AttackHistoryListModel {
  const factory AttackHistoryListModel({
    required int attackedTime,
    String? targetNickname,
    required ProfileModel profile,
    required int totalRound,
    required int round,
    required String result,
    required double gained,
    required double lootingFee,
    required double jackpotFund,
  }) = _AttackHistoryListModel;
  factory AttackHistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$AttackHistoryListModelFromJson(json);
}
