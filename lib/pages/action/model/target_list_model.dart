import 'package:freezed_annotation/freezed_annotation.dart';
part 'target_list_model.freezed.dart';
part 'target_list_model.g.dart';

abstract class TargetBase {}

class TargetLoading extends TargetBase {}

class TargetError extends TargetBase {}

@freezed
class TargetModel extends TargetBase with _$TargetModel {
  const factory TargetModel({
    int? ticketRemainingTime,
    required int ticketCount,
    TargetDataModel? data,
  }) = _TargetModel;
  factory TargetModel.fromJson(Map<String, dynamic> json) =>
      _$TargetModelFromJson(json);
}

@freezed
class TargetDataModel with _$TargetDataModel {
  const factory TargetDataModel({
    required int targetResetTime,
    required num refreshCost,
    required List<TargetListModel?> attackTargets,
  }) = _TargetDataModel;
  factory TargetDataModel.fromJson(Map<String, dynamic> json) =>
      _$TargetDataModelFromJson(json);
}

@freezed
class TargetListModel with _$TargetListModel {
  const factory TargetListModel({
    required int targetId,
    required String? targetNickname,
    required int totalRound,
    required num maxProfit,
    required num expectedProfit,
    required TargetCostModel cost,
    required ProfileModel profile,
  }) = _TargetListModel;
  factory TargetListModel.fromJson(Map<String, dynamic> json) =>
      _$TargetListModelFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String url,
    required String type,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class TargetCostModel with _$TargetCostModel {
  const factory TargetCostModel({
    required String type,
    required num amount,
  }) = _TargetCostModel;
  factory TargetCostModel.fromJson(Map<String, dynamic> json) =>
      _$TargetCostModelFromJson(json);
}
