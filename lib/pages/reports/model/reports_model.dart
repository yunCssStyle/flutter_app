import 'package:freezed_annotation/freezed_annotation.dart';
part 'reports_model.freezed.dart';
part 'reports_model.g.dart';

abstract class ReportsBase {}

class ReportsLoading extends ReportsBase {}

class ReportsError extends ReportsBase {}

@freezed
class ReportsModel extends ReportsBase with _$ReportsModel {
  const factory ReportsModel({
    required bool data,
    String? yesterdayZone,
  }) = _ReportsModel;
  factory ReportsModel.fromJson(Map<String, dynamic> json) =>
      _$ReportsModelFromJson(json);
}

abstract class TotalBase {}

class TotalLoading extends TotalBase {}

class TotalError extends TotalBase {}

@freezed
class TotalModel extends TotalBase with _$TotalModel {
  const factory TotalModel({
    required String date,
    required num incinerated,
    required num jackpot,
  }) = _TotalModel;
  factory TotalModel.fromJson(Map<String, dynamic> json) =>
      _$TotalModelFromJson(json);
}

abstract class MiningBase {}

class MiningLoading extends MiningBase {}

class MiningError extends MiningBase {}


@freezed
class MiningModel extends MiningBase with _$MiningModel {
  const factory MiningModel({
    required bool waiting,
    required MiningDataModel data,
  }) = _MiningModel;
  factory MiningModel.fromJson(Map<String, dynamic> json) =>
      _$MiningModelFromJson(json);
}

@freezed
class MiningDataModel with _$MiningDataModel {
  const factory MiningDataModel({
    required num top1,
    required num top5,
    required num top10,
    required num top15,
    required num top25,
    required num top50,
    required num top75,
  }) = _MiningDataModel;
  factory MiningDataModel.fromJson(Map<String, dynamic> json) =>
      _$MiningDataModelFromJson(json);
}

abstract class DivisionsBase {}

class DivisionsLoading extends DivisionsBase {}

class DivisionsError extends DivisionsBase {}

@freezed
class DivisionsModel extends DivisionsBase with _$DivisionsModel {
  const factory DivisionsModel({
    required bool waiting,
    required DivisionsDataModel data,
  }) = _DivisionsModel;
  factory DivisionsModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionsModelFromJson(json);
}

@freezed
class DivisionsDataModel with _$DivisionsDataModel {
  const factory DivisionsDataModel({
    required num zoneE,
    required num zoneD,
    required num zoneC,
    required num zoneB,
    required num zoneA,
  }) = _DivisionsDataModel;
  factory DivisionsDataModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionsDataModelFromJson(json);
}

abstract class ExplorationBase {}

class ExplorationLoading extends ExplorationBase {}

class ExplorationError extends ExplorationBase {}

@freezed
class ExplorationModel extends ExplorationBase with _$ExplorationModel {
  const factory ExplorationModel({
    required bool waiting,
    required ExplorationDataModel data,
  }) = _ExplorationModel;
  factory ExplorationModel.fromJson(Map<String, dynamic> json) =>
      _$ExplorationModelFromJson(json);
}

@freezed
class ExplorationDataModel with _$ExplorationDataModel {
  const factory ExplorationDataModel({
    required int totalExplorationTime,
    required int totalExplorationCount,
    required int totalExplorationReward,
  }) = _ExplorationDataModel;
  factory ExplorationDataModel.fromJson(Map<String, dynamic> json) =>
      _$ExplorationDataModelFromJson(json);
}

@freezed
class MiningPowerListModel with _$MiningPowerListModel {
  const factory MiningPowerListModel({
    required int percent,
    required double power,
  }) = _MiningPowerListModel;
  factory MiningPowerListModel.fromJson(Map<String, dynamic> json) =>
      _$MiningPowerListModelFromJson(json);
}

@freezed
class DivisionsListModel with _$DivisionsListModel {
  const factory DivisionsListModel({
    required String zone,
    required double mp,
  }) = _DivisionsListModel;
  factory DivisionsListModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionsListModelFromJson(json);
}
