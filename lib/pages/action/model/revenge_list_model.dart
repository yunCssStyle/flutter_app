import 'package:freezed_annotation/freezed_annotation.dart';

import 'target_list_model.dart';
part 'revenge_list_model.freezed.dart';
part 'revenge_list_model.g.dart';

abstract class RevengeBase {}

class RevengeLoading extends RevengeBase {}

class RevengeError extends RevengeBase {}

@freezed
class RevengeModel extends RevengeBase with _$RevengeModel {
  const factory RevengeModel({
    required List<RevengeListModel> revengeTargets,
  }) = _RevengeModel;
  factory RevengeModel.fromJson(Map<String, dynamic> json) =>
      _$RevengeModelFromJson(json);
}

@freezed
class RevengeListModel with _$RevengeListModel {
  const factory RevengeListModel({
    required int refAttackId,
    required int targetId,
    required String targetNickname,
    required int totalRound,
    required double maxProfit,
    required double expectedProfit,
    required num revengeExpiredTime,
    required TargetCostModel cost,
    required ProfileModel profile,
    required int statBonus,
    required bool isExecute,
  }) = _RevengeListModel;
  factory RevengeListModel.fromJson(Map<String, dynamic> json) =>
      _$RevengeListModelFromJson(json);
}
