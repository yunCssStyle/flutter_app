// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttackModelImpl _$$AttackModelImplFromJson(Map<String, dynamic> json) =>
    _$AttackModelImpl(
      attackId: json['attackId'] as int,
      round: json['round'] as int,
      totalRound: json['totalRound'] as int,
      roundProfit: json['roundProfit'] as num,
      chooseTime: json['chooseTime'] as int,
      weapons: (json['weapons'] as List<dynamic>)
          .map((e) => AttackListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttackModelImplToJson(_$AttackModelImpl instance) =>
    <String, dynamic>{
      'attackId': instance.attackId,
      'round': instance.round,
      'totalRound': instance.totalRound,
      'roundProfit': instance.roundProfit,
      'chooseTime': instance.chooseTime,
      'weapons': instance.weapons,
    };

_$AttackListModelImpl _$$AttackListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttackListModelImpl(
      weaponId: json['weaponId'] as int,
      statEvent: json['statEvent'] as String,
    );

Map<String, dynamic> _$$AttackListModelImplToJson(
        _$AttackListModelImpl instance) =>
    <String, dynamic>{
      'weaponId': instance.weaponId,
      'statEvent': instance.statEvent,
    };

_$TargetIdModelImpl _$$TargetIdModelImplFromJson(Map<String, dynamic> json) =>
    _$TargetIdModelImpl(
      targetId: json['targetId'] as int,
    );

Map<String, dynamic> _$$TargetIdModelImplToJson(_$TargetIdModelImpl instance) =>
    <String, dynamic>{
      'targetId': instance.targetId,
    };

_$AttackIdModelImpl _$$AttackIdModelImplFromJson(Map<String, dynamic> json) =>
    _$AttackIdModelImpl(
      attackId: json['attackId'] as int,
    );

Map<String, dynamic> _$$AttackIdModelImplToJson(_$AttackIdModelImpl instance) =>
    <String, dynamic>{
      'attackId': instance.attackId,
    };
