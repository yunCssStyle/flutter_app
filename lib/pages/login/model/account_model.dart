import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class BlockedModel with _$BlockedModel {
  const factory BlockedModel({
    required String type,
    BlockedDetailsModel? blockedDetails,
    MaintenanceDetailsModel? maintenanceDetails,
  }) = _BlockedModel;
  factory BlockedModel.fromJson(Map<String, dynamic> json) =>
      _$BlockedModelFromJson(json);
}

@freezed
class BlockedDetailsModel with _$BlockedDetailsModel {
  const factory BlockedDetailsModel({
    required bool eternal,
    String? startDateTime,
    String? endDateTime,
    String? reason,
  }) = _BlockedDetailsModel;
  factory BlockedDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BlockedDetailsModelFromJson(json);
}

@freezed
class MaintenanceDetailsModel with _$MaintenanceDetailsModel {
  const factory MaintenanceDetailsModel({
    required String startDateTime,
    required String endDateTime,
    required String message,
  }) = _MaintenanceDetailsModel;
  factory MaintenanceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDetailsModelFromJson(json);
}
