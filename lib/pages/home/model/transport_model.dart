import 'package:freezed_annotation/freezed_annotation.dart';
part 'transport_model.freezed.dart';
part 'transport_model.g.dart';

abstract class TransportBase {}

class TransportLoading extends TransportBase {}

@freezed
class TransportModel extends TransportBase with _$TransportModel {
  const factory TransportModel({
    required num transportedGold,
    required num transportFeeRate,
    required List<TransportDataModel> transportSchedules,
  }) = _TransportModel;
  factory TransportModel.fromJson(Map<String, dynamic> json) =>
      _$TransportModelFromJson(json);
}

@freezed
class TransportDataModel with _$TransportDataModel {
  const factory TransportDataModel({
    required int departureTime,
    required bool completed,
  }) = _TransportDataModel;
  factory TransportDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransportDataModelFromJson(json);
}

class TransportError extends TransportBase {
  final String? message;
  final String code;
  final String? detail;

  TransportError({
    this.message,
    required this.code,
    this.detail,
  });
}

abstract class TransportHistoryBase {}

class TransportHistoryLoading extends TransportHistoryBase {}

@freezed
class TransportHistoryModel extends TransportHistoryBase
    with _$TransportHistoryModel {
  const factory TransportHistoryModel({
    required List<TransportsModel> transports,
  }) = _TransportHistoryModel;
  factory TransportHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$TransportHistoryModelFromJson(json);
}

@freezed
class TransportsModel with _$TransportsModel {
  const factory TransportsModel({
    required int departureTime,
    required bool completed,
    TransportsDataModel? data,
  }) = _TransportsModel;
  factory TransportsModel.fromJson(Map<String, dynamic> json) =>
      _$TransportsModelFromJson(json);
}

@freezed
class TransportsDataModel with _$TransportsDataModel {
  const factory TransportsDataModel({
    required num transportAmount,
    required num transportFee,
    required num jackpotFund,
    required num acquiredAmount,
    required bool bonus,
  }) = _TransportsDataModel;
  factory TransportsDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransportsDataModelFromJson(json);
}
