// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenge_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevengeModelImpl _$$RevengeModelImplFromJson(Map<String, dynamic> json) =>
    _$RevengeModelImpl(
      revengeTargets: (json['revengeTargets'] as List<dynamic>)
          .map((e) => RevengeListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RevengeModelImplToJson(_$RevengeModelImpl instance) =>
    <String, dynamic>{
      'revengeTargets': instance.revengeTargets,
    };

_$RevengeListModelImpl _$$RevengeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RevengeListModelImpl(
      refAttackId: json['refAttackId'] as int,
      targetId: json['targetId'] as int,
      targetNickname: json['targetNickname'] as String,
      totalRound: json['totalRound'] as int,
      maxProfit: (json['maxProfit'] as num).toDouble(),
      expectedProfit: (json['expectedProfit'] as num).toDouble(),
      revengeExpiredTime: json['revengeExpiredTime'] as num,
      cost: TargetCostModel.fromJson(json['cost'] as Map<String, dynamic>),
      profile: ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
      statBonus: json['statBonus'] as int,
      isExecute: json['isExecute'] as bool,
    );

Map<String, dynamic> _$$RevengeListModelImplToJson(
        _$RevengeListModelImpl instance) =>
    <String, dynamic>{
      'refAttackId': instance.refAttackId,
      'targetId': instance.targetId,
      'targetNickname': instance.targetNickname,
      'totalRound': instance.totalRound,
      'maxProfit': instance.maxProfit,
      'expectedProfit': instance.expectedProfit,
      'revengeExpiredTime': instance.revengeExpiredTime,
      'cost': instance.cost,
      'profile': instance.profile,
      'statBonus': instance.statBonus,
      'isExecute': instance.isExecute,
    };
