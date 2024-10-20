import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

abstract class ScheduleBase {}

class ScheduleLoading extends ScheduleBase {}

@freezed
class ScheduleModel extends ScheduleBase with _$ScheduleModel {
  const factory ScheduleModel({
    required List<TransportSchedulesModel> transportSchedules,
    required ConfirmStatusModel confirmStatus,
  }) = _ScheduleModel;
  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);
}

@freezed
class TransportSchedulesModel with _$TransportSchedulesModel {
  const factory TransportSchedulesModel({
    required int departureTime,
    required bool reserved,
  }) = _TransportSchedulesModel;
  factory TransportSchedulesModel.fromJson(Map<String, dynamic> json) =>
      _$TransportSchedulesModelFromJson(json);
}

@freezed
class ConfirmStatusModel with _$ConfirmStatusModel {
  const factory ConfirmStatusModel({
    required int reservedCount,
    required int maxCount,
    required List<FeeRateModel> feeRates,
    required num jackpotFundRate,
    required bool locked,
  }) = _ConfirmStatusModel;
  factory ConfirmStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmStatusModelFromJson(json);
}

@freezed
class FeeRateModel with _$FeeRateModel {
  const factory FeeRateModel({
    required int count,
    required num feeRate,
  }) = _FeeRateModel;
  factory FeeRateModel.fromJson(Map<String, dynamic> json) =>
      _$FeeRateModelFromJson(json);
}

@freezed
class ConfirmModel with _$ConfirmModel {
  const factory ConfirmModel({
    required List<int> reservedDepartureTimes,
  }) = _ConfirmModel;
  factory ConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmModelFromJson(json);
}
