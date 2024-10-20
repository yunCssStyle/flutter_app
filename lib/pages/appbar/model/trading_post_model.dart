import 'package:freezed_annotation/freezed_annotation.dart';
part 'trading_post_model.freezed.dart';
part 'trading_post_model.g.dart';

abstract class TradingPostBase {}

class TradingPostLoading extends TradingPostBase {}

@freezed
class TradingPostHistoryModel extends TradingPostBase with _$TradingPostHistoryModel {
  const factory TradingPostHistoryModel({
       TradingPostHistoryDataModel? data,
  }) = _TradingPostHistoryModel;
  factory TradingPostHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$TradingPostHistoryModelFromJson(json);
}

@freezed
class TradingPostHistoryDataModel with _$TradingPostHistoryDataModel {
  const factory TradingPostHistoryDataModel({
      required String type,
      required DateTime datetime,
      required num gold,
  }) = _TradingPostHistoryDataModel;
  factory TradingPostHistoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$TradingPostHistoryDataModelFromJson(json);
}

@freezed
class TradingPostModel extends TradingPostBase with _$TradingPostModel {
  const factory TradingPostModel({
    required num ownedGold,
    required num packedGold,
    required num packingFee,
  }) = _TradingPostModel;
  factory TradingPostModel.fromJson(Map<String, dynamic> json) =>
      _$TradingPostModelFromJson(json);
}

@freezed
class TradingPostProcessingModel with _$TradingPostProcessingModel {
  const factory TradingPostProcessingModel({
    required bool isProcessing,
  }) = _TradingPostProcessingModel;
  factory TradingPostProcessingModel.fromJson(Map<String, dynamic> json) =>
      _$TradingPostProcessingModelFromJson(json);
}

@freezed
class PackingConfirmModel with _$PackingConfirmModel {
  const factory PackingConfirmModel({
    required num amount,
  }) = _PackingConfirmModel;
  factory PackingConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$PackingConfirmModelFromJson(json);
}

@freezed
class ConfirmModel with _$ConfirmModel {
  const factory ConfirmModel({
    required num ownedGold,
    required num packedGold,
  }) = _ConfirmModel;
  factory ConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmModelFromJson(json);
}
