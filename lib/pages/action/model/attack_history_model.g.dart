// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttackHistoryModelImpl _$$AttackHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttackHistoryModelImpl(
      attackHistories: (json['attackHistories'] as List<dynamic>)
          .map(
              (e) => AttackHistoryListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttackHistoryModelImplToJson(
        _$AttackHistoryModelImpl instance) =>
    <String, dynamic>{
      'attackHistories': instance.attackHistories,
    };

_$AttackHistoryListModelImpl _$$AttackHistoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttackHistoryListModelImpl(
      attackedTime: json['attackedTime'] as int,
      targetNickname: json['targetNickname'] as String?,
      profile: ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
      totalRound: json['totalRound'] as int,
      round: json['round'] as int,
      result: json['result'] as String,
      gained: (json['gained'] as num).toDouble(),
      lootingFee: (json['lootingFee'] as num).toDouble(),
      jackpotFund: (json['jackpotFund'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttackHistoryListModelImplToJson(
        _$AttackHistoryListModelImpl instance) =>
    <String, dynamic>{
      'attackedTime': instance.attackedTime,
      'targetNickname': instance.targetNickname,
      'profile': instance.profile,
      'totalRound': instance.totalRound,
      'round': instance.round,
      'result': instance.result,
      'gained': instance.gained,
      'lootingFee': instance.lootingFee,
      'jackpotFund': instance.jackpotFund,
    };
