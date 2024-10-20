// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransportModelImpl _$$TransportModelImplFromJson(Map<String, dynamic> json) =>
    _$TransportModelImpl(
      transportedGold: json['transportedGold'] as num,
      transportFeeRate: json['transportFeeRate'] as num,
      transportSchedules: (json['transportSchedules'] as List<dynamic>)
          .map((e) => TransportDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransportModelImplToJson(
        _$TransportModelImpl instance) =>
    <String, dynamic>{
      'transportedGold': instance.transportedGold,
      'transportFeeRate': instance.transportFeeRate,
      'transportSchedules': instance.transportSchedules,
    };

_$TransportDataModelImpl _$$TransportDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportDataModelImpl(
      departureTime: json['departureTime'] as int,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$TransportDataModelImplToJson(
        _$TransportDataModelImpl instance) =>
    <String, dynamic>{
      'departureTime': instance.departureTime,
      'completed': instance.completed,
    };

_$TransportHistoryModelImpl _$$TransportHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportHistoryModelImpl(
      transports: (json['transports'] as List<dynamic>)
          .map((e) => TransportsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransportHistoryModelImplToJson(
        _$TransportHistoryModelImpl instance) =>
    <String, dynamic>{
      'transports': instance.transports,
    };

_$TransportsModelImpl _$$TransportsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportsModelImpl(
      departureTime: json['departureTime'] as int,
      completed: json['completed'] as bool,
      data: json['data'] == null
          ? null
          : TransportsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransportsModelImplToJson(
        _$TransportsModelImpl instance) =>
    <String, dynamic>{
      'departureTime': instance.departureTime,
      'completed': instance.completed,
      'data': instance.data,
    };

_$TransportsDataModelImpl _$$TransportsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportsDataModelImpl(
      transportAmount: json['transportAmount'] as num,
      transportFee: json['transportFee'] as num,
      jackpotFund: json['jackpotFund'] as num,
      acquiredAmount: json['acquiredAmount'] as num,
      bonus: json['bonus'] as bool,
    );

Map<String, dynamic> _$$TransportsDataModelImplToJson(
        _$TransportsDataModelImpl instance) =>
    <String, dynamic>{
      'transportAmount': instance.transportAmount,
      'transportFee': instance.transportFee,
      'jackpotFund': instance.jackpotFund,
      'acquiredAmount': instance.acquiredAmount,
      'bonus': instance.bonus,
    };
