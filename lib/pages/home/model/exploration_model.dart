import 'package:freezed_annotation/freezed_annotation.dart';
part 'exploration_model.freezed.dart';
part 'exploration_model.g.dart';

abstract class ExplorationBase {}

class ExplorationLoading extends ExplorationBase {}

class ExplorationError extends ExplorationBase {}

@freezed
class ExplorationModel extends ExplorationBase with _$ExplorationModel {
  const factory ExplorationModel({
    required String status,
    required ExplorationDataModel data,
  }) = _ExplorationModel;
  factory ExplorationModel.fromJson(Map<String, dynamic> json) =>
      _$ExplorationModelFromJson(json);
}

@freezed
class ExplorationDataModel with _$ExplorationDataModel {
  const factory ExplorationDataModel({
    required int time,
    int? shortenedTime,
    int? tabRemainingCount,
    List<RewardsModel>? rewards,
  }) = _ExplorationDataModel;
  factory ExplorationDataModel.fromJson(Map<String, dynamic> json) =>
      _$ExplorationDataModelFromJson(json);
}

@freezed
class RewardsModel with _$RewardsModel {
  const factory RewardsModel({
    required String type,
    required int boxGrade,
    required num amount,
    required bool bonus,
  }) = _RewardsModel;
  factory RewardsModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsModelFromJson(json);
}

@freezed
class ExplorationTabModel with _$ExplorationTabModel {
  const factory ExplorationTabModel({
    required bool bonus,
    required int shortenedTime,
  }) = _ExplorationTabModel;
  factory ExplorationTabModel.fromJson(Map<String, dynamic> json) =>
      _$ExplorationTabModelFromJson(json);
}
