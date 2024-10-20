// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionModelImpl _$$ActionModelImplFromJson(Map<String, dynamic> json) =>
    _$ActionModelImpl(
      free: json['free'] as bool,
      miningPower: json['miningPower'] as num,
      revengeTargetCount: json['revengeTargetCount'] as int,
      inspection: json['inspection'] as bool,
      zones: (json['zones'] as List<dynamic>?)
          ?.map((e) => ActionListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActionModelImplToJson(_$ActionModelImpl instance) =>
    <String, dynamic>{
      'free': instance.free,
      'miningPower': instance.miningPower,
      'revengeTargetCount': instance.revengeTargetCount,
      'inspection': instance.inspection,
      'zones': instance.zones,
    };

_$ActionListModelImpl _$$ActionListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionListModelImpl(
      zone: json['zone'] as String,
      huddleMiningPower: json['huddleMiningPower'] as num,
      assigned: json['assigned'] as bool,
      popRate: json['popRate'] as num,
    );

Map<String, dynamic> _$$ActionListModelImplToJson(
        _$ActionListModelImpl instance) =>
    <String, dynamic>{
      'zone': instance.zone,
      'huddleMiningPower': instance.huddleMiningPower,
      'assigned': instance.assigned,
      'popRate': instance.popRate,
    };
