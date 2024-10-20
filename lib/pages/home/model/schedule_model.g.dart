// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleModelImpl _$$ScheduleModelImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleModelImpl(
      transportSchedules: (json['transportSchedules'] as List<dynamic>)
          .map((e) =>
              TransportSchedulesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      confirmStatus: ConfirmStatusModel.fromJson(
          json['confirmStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduleModelImplToJson(_$ScheduleModelImpl instance) =>
    <String, dynamic>{
      'transportSchedules': instance.transportSchedules,
      'confirmStatus': instance.confirmStatus,
    };

_$TransportSchedulesModelImpl _$$TransportSchedulesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportSchedulesModelImpl(
      departureTime: json['departureTime'] as int,
      reserved: json['reserved'] as bool,
    );

Map<String, dynamic> _$$TransportSchedulesModelImplToJson(
        _$TransportSchedulesModelImpl instance) =>
    <String, dynamic>{
      'departureTime': instance.departureTime,
      'reserved': instance.reserved,
    };

_$ConfirmStatusModelImpl _$$ConfirmStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmStatusModelImpl(
      reservedCount: json['reservedCount'] as int,
      maxCount: json['maxCount'] as int,
      feeRates: (json['feeRates'] as List<dynamic>)
          .map((e) => FeeRateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jackpotFundRate: json['jackpotFundRate'] as num,
      locked: json['locked'] as bool,
    );

Map<String, dynamic> _$$ConfirmStatusModelImplToJson(
        _$ConfirmStatusModelImpl instance) =>
    <String, dynamic>{
      'reservedCount': instance.reservedCount,
      'maxCount': instance.maxCount,
      'feeRates': instance.feeRates,
      'jackpotFundRate': instance.jackpotFundRate,
      'locked': instance.locked,
    };

_$FeeRateModelImpl _$$FeeRateModelImplFromJson(Map<String, dynamic> json) =>
    _$FeeRateModelImpl(
      count: json['count'] as int,
      feeRate: json['feeRate'] as num,
    );

Map<String, dynamic> _$$FeeRateModelImplToJson(_$FeeRateModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'feeRate': instance.feeRate,
    };

_$ConfirmModelImpl _$$ConfirmModelImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmModelImpl(
      reservedDepartureTimes: (json['reservedDepartureTimes'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$ConfirmModelImplToJson(_$ConfirmModelImpl instance) =>
    <String, dynamic>{
      'reservedDepartureTimes': instance.reservedDepartureTimes,
    };
