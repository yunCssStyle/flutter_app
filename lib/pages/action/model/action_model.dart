import 'package:freezed_annotation/freezed_annotation.dart';
part 'action_model.freezed.dart';
part 'action_model.g.dart';

abstract class ActionBase {}

class ActionLoading extends ActionBase {}

@freezed
class ActionModel extends ActionBase with _$ActionModel {
  const factory ActionModel({
    required bool free,
    required num miningPower,
    required int revengeTargetCount,
    required bool inspection,
    List<ActionListModel>? zones,
  }) = _ActionModel;
  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);
}

@freezed
class ActionListModel with _$ActionListModel {
  const factory ActionListModel({
    required String zone,
    required num huddleMiningPower,
    required bool assigned,
    required num popRate,
  }) = _ActionListModel;
  factory ActionListModel.fromJson(Map<String, dynamic> json) =>
      _$ActionListModelFromJson(json);
}
