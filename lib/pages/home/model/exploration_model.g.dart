// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exploration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExplorationModelImpl _$$ExplorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorationModelImpl(
      status: json['status'] as String,
      data: ExplorationDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExplorationModelImplToJson(
        _$ExplorationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$ExplorationDataModelImpl _$$ExplorationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorationDataModelImpl(
      time: json['time'] as int,
      shortenedTime: json['shortenedTime'] as int?,
      tabRemainingCount: json['tabRemainingCount'] as int?,
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => RewardsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExplorationDataModelImplToJson(
        _$ExplorationDataModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'shortenedTime': instance.shortenedTime,
      'tabRemainingCount': instance.tabRemainingCount,
      'rewards': instance.rewards,
    };

_$RewardsModelImpl _$$RewardsModelImplFromJson(Map<String, dynamic> json) =>
    _$RewardsModelImpl(
      type: json['type'] as String,
      boxGrade: json['boxGrade'] as int,
      amount: json['amount'] as num,
      bonus: json['bonus'] as bool,
    );

Map<String, dynamic> _$$RewardsModelImplToJson(_$RewardsModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'boxGrade': instance.boxGrade,
      'amount': instance.amount,
      'bonus': instance.bonus,
    };

_$ExplorationTabModelImpl _$$ExplorationTabModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorationTabModelImpl(
      bonus: json['bonus'] as bool,
      shortenedTime: json['shortenedTime'] as int,
    );

Map<String, dynamic> _$$ExplorationTabModelImplToJson(
        _$ExplorationTabModelImpl instance) =>
    <String, dynamic>{
      'bonus': instance.bonus,
      'shortenedTime': instance.shortenedTime,
    };
