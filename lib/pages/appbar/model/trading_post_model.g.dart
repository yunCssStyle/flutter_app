// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trading_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradingPostHistoryModelImpl _$$TradingPostHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingPostHistoryModelImpl(
      data: json['data'] == null
          ? null
          : TradingPostHistoryDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TradingPostHistoryModelImplToJson(
        _$TradingPostHistoryModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TradingPostHistoryDataModelImpl _$$TradingPostHistoryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingPostHistoryDataModelImpl(
      type: json['type'] as String,
      datetime: DateTime.parse(json['datetime'] as String),
      gold: json['gold'] as num,
    );

Map<String, dynamic> _$$TradingPostHistoryDataModelImplToJson(
        _$TradingPostHistoryDataModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'datetime': instance.datetime.toIso8601String(),
      'gold': instance.gold,
    };

_$TradingPostModelImpl _$$TradingPostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingPostModelImpl(
      ownedGold: json['ownedGold'] as num,
      packedGold: json['packedGold'] as num,
      packingFee: json['packingFee'] as num,
    );

Map<String, dynamic> _$$TradingPostModelImplToJson(
        _$TradingPostModelImpl instance) =>
    <String, dynamic>{
      'ownedGold': instance.ownedGold,
      'packedGold': instance.packedGold,
      'packingFee': instance.packingFee,
    };

_$TradingPostProcessingModelImpl _$$TradingPostProcessingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradingPostProcessingModelImpl(
      isProcessing: json['isProcessing'] as bool,
    );

Map<String, dynamic> _$$TradingPostProcessingModelImplToJson(
        _$TradingPostProcessingModelImpl instance) =>
    <String, dynamic>{
      'isProcessing': instance.isProcessing,
    };

_$PackingConfirmModelImpl _$$PackingConfirmModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackingConfirmModelImpl(
      amount: json['amount'] as num,
    );

Map<String, dynamic> _$$PackingConfirmModelImplToJson(
        _$PackingConfirmModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };

_$ConfirmModelImpl _$$ConfirmModelImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmModelImpl(
      ownedGold: json['ownedGold'] as num,
      packedGold: json['packedGold'] as num,
    );

Map<String, dynamic> _$$ConfirmModelImplToJson(_$ConfirmModelImpl instance) =>
    <String, dynamic>{
      'ownedGold': instance.ownedGold,
      'packedGold': instance.packedGold,
    };
