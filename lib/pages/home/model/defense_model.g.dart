// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefenseModelImpl _$$DefenseModelImplFromJson(Map<String, dynamic> json) =>
    _$DefenseModelImpl(
      myDefenceRounds: json['myDefenceRounds'] as int,
      defenceHistories: (json['defenceHistories'] as List<dynamic>)
          .map((e) => DefenseListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DefenseModelImplToJson(_$DefenseModelImpl instance) =>
    <String, dynamic>{
      'myDefenceRounds': instance.myDefenceRounds,
      'defenceHistories': instance.defenceHistories,
    };

_$DefenseListModelImpl _$$DefenseListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DefenseListModelImpl(
      defenceId: json['defenceId'] as int,
      revengeExpiredTime: json['revengeExpiredTime'] as String,
      attackedTime: json['attackedTime'] as int,
      targetNickname: json['targetNickname'] as String,
      round: json['round'] as int,
      totalRound: json['totalRound'] as int,
      lostAmount: json['lostAmount'] as num,
      statBonus: json['statBonus'] as int,
      profile: ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
      readed: json['readed'] as bool,
      isExecute: json['isExecute'] as bool,
      isRevenge: json['isRevenge'] as bool,
    );

Map<String, dynamic> _$$DefenseListModelImplToJson(
        _$DefenseListModelImpl instance) =>
    <String, dynamic>{
      'defenceId': instance.defenceId,
      'revengeExpiredTime': instance.revengeExpiredTime,
      'attackedTime': instance.attackedTime,
      'targetNickname': instance.targetNickname,
      'round': instance.round,
      'totalRound': instance.totalRound,
      'lostAmount': instance.lostAmount,
      'statBonus': instance.statBonus,
      'profile': instance.profile,
      'readed': instance.readed,
      'isExecute': instance.isExecute,
      'isRevenge': instance.isRevenge,
    };

_$DefenseIdsModelImpl _$$DefenseIdsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DefenseIdsModelImpl(
      ids: (json['ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$DefenseIdsModelImplToJson(
        _$DefenseIdsModelImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };
