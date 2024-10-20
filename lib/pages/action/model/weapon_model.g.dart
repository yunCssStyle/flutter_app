// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeaponModelImpl _$$WeaponModelImplFromJson(Map<String, dynamic> json) =>
    _$WeaponModelImpl(
      attackId: json['attackId'] as int,
      result: json['result'] as String,
      round: json['round'] as int,
      totalRound: json['totalRound'] as int,
      roundProfit: json['roundProfit'] as num,
      beforeProfit: json['beforeProfit'] as num?,
      currentProfit: json['currentProfit'] as num,
      totalProfit: json['totalProfit'] as num,
      finished: json['finished'] as bool,
    );

Map<String, dynamic> _$$WeaponModelImplToJson(_$WeaponModelImpl instance) =>
    <String, dynamic>{
      'attackId': instance.attackId,
      'result': instance.result,
      'round': instance.round,
      'totalRound': instance.totalRound,
      'roundProfit': instance.roundProfit,
      'beforeProfit': instance.beforeProfit,
      'currentProfit': instance.currentProfit,
      'totalProfit': instance.totalProfit,
      'finished': instance.finished,
    };

_$WeaponReqModelImpl _$$WeaponReqModelImplFromJson(Map<String, dynamic> json) =>
    _$WeaponReqModelImpl(
      attackId: json['attackId'] as int,
      weaponId: json['weaponId'] as int,
    );

Map<String, dynamic> _$$WeaponReqModelImplToJson(
        _$WeaponReqModelImpl instance) =>
    <String, dynamic>{
      'attackId': instance.attackId,
      'weaponId': instance.weaponId,
    };
