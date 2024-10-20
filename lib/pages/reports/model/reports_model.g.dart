// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportsModelImpl _$$ReportsModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportsModelImpl(
      data: json['data'] as bool,
      yesterdayZone: json['yesterdayZone'] as String?,
    );

Map<String, dynamic> _$$ReportsModelImplToJson(_$ReportsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'yesterdayZone': instance.yesterdayZone,
    };

_$TotalModelImpl _$$TotalModelImplFromJson(Map<String, dynamic> json) =>
    _$TotalModelImpl(
      date: json['date'] as String,
      incinerated: json['incinerated'] as num,
      jackpot: json['jackpot'] as num,
    );

Map<String, dynamic> _$$TotalModelImplToJson(_$TotalModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'incinerated': instance.incinerated,
      'jackpot': instance.jackpot,
    };

_$MiningModelImpl _$$MiningModelImplFromJson(Map<String, dynamic> json) =>
    _$MiningModelImpl(
      waiting: json['waiting'] as bool,
      data: MiningDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MiningModelImplToJson(_$MiningModelImpl instance) =>
    <String, dynamic>{
      'waiting': instance.waiting,
      'data': instance.data,
    };

_$MiningDataModelImpl _$$MiningDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MiningDataModelImpl(
      top1: json['top1'] as num,
      top5: json['top5'] as num,
      top10: json['top10'] as num,
      top15: json['top15'] as num,
      top25: json['top25'] as num,
      top50: json['top50'] as num,
      top75: json['top75'] as num,
    );

Map<String, dynamic> _$$MiningDataModelImplToJson(
        _$MiningDataModelImpl instance) =>
    <String, dynamic>{
      'top1': instance.top1,
      'top5': instance.top5,
      'top10': instance.top10,
      'top15': instance.top15,
      'top25': instance.top25,
      'top50': instance.top50,
      'top75': instance.top75,
    };

_$DivisionsModelImpl _$$DivisionsModelImplFromJson(Map<String, dynamic> json) =>
    _$DivisionsModelImpl(
      waiting: json['waiting'] as bool,
      data: DivisionsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DivisionsModelImplToJson(
        _$DivisionsModelImpl instance) =>
    <String, dynamic>{
      'waiting': instance.waiting,
      'data': instance.data,
    };

_$DivisionsDataModelImpl _$$DivisionsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DivisionsDataModelImpl(
      zoneE: json['zoneE'] as num,
      zoneD: json['zoneD'] as num,
      zoneC: json['zoneC'] as num,
      zoneB: json['zoneB'] as num,
      zoneA: json['zoneA'] as num,
    );

Map<String, dynamic> _$$DivisionsDataModelImplToJson(
        _$DivisionsDataModelImpl instance) =>
    <String, dynamic>{
      'zoneE': instance.zoneE,
      'zoneD': instance.zoneD,
      'zoneC': instance.zoneC,
      'zoneB': instance.zoneB,
      'zoneA': instance.zoneA,
    };

_$ExplorationModelImpl _$$ExplorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorationModelImpl(
      waiting: json['waiting'] as bool,
      data: ExplorationDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExplorationModelImplToJson(
        _$ExplorationModelImpl instance) =>
    <String, dynamic>{
      'waiting': instance.waiting,
      'data': instance.data,
    };

_$ExplorationDataModelImpl _$$ExplorationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorationDataModelImpl(
      totalExplorationTime: json['totalExplorationTime'] as int,
      totalExplorationCount: json['totalExplorationCount'] as int,
      totalExplorationReward: json['totalExplorationReward'] as int,
    );

Map<String, dynamic> _$$ExplorationDataModelImplToJson(
        _$ExplorationDataModelImpl instance) =>
    <String, dynamic>{
      'totalExplorationTime': instance.totalExplorationTime,
      'totalExplorationCount': instance.totalExplorationCount,
      'totalExplorationReward': instance.totalExplorationReward,
    };

_$MiningPowerListModelImpl _$$MiningPowerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MiningPowerListModelImpl(
      percent: json['percent'] as int,
      power: (json['power'] as num).toDouble(),
    );

Map<String, dynamic> _$$MiningPowerListModelImplToJson(
        _$MiningPowerListModelImpl instance) =>
    <String, dynamic>{
      'percent': instance.percent,
      'power': instance.power,
    };

_$DivisionsListModelImpl _$$DivisionsListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DivisionsListModelImpl(
      zone: json['zone'] as String,
      mp: (json['mp'] as num).toDouble(),
    );

Map<String, dynamic> _$$DivisionsListModelImplToJson(
        _$DivisionsListModelImpl instance) =>
    <String, dynamic>{
      'zone': instance.zone,
      'mp': instance.mp,
    };
