// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TargetModelImpl _$$TargetModelImplFromJson(Map<String, dynamic> json) =>
    _$TargetModelImpl(
      ticketRemainingTime: json['ticketRemainingTime'] as int?,
      ticketCount: json['ticketCount'] as int,
      data: json['data'] == null
          ? null
          : TargetDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TargetModelImplToJson(_$TargetModelImpl instance) =>
    <String, dynamic>{
      'ticketRemainingTime': instance.ticketRemainingTime,
      'ticketCount': instance.ticketCount,
      'data': instance.data,
    };

_$TargetDataModelImpl _$$TargetDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TargetDataModelImpl(
      targetResetTime: json['targetResetTime'] as int,
      refreshCost: json['refreshCost'] as num,
      attackTargets: (json['attackTargets'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : TargetListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TargetDataModelImplToJson(
        _$TargetDataModelImpl instance) =>
    <String, dynamic>{
      'targetResetTime': instance.targetResetTime,
      'refreshCost': instance.refreshCost,
      'attackTargets': instance.attackTargets,
    };

_$TargetListModelImpl _$$TargetListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TargetListModelImpl(
      targetId: json['targetId'] as int,
      targetNickname: json['targetNickname'] as String?,
      totalRound: json['totalRound'] as int,
      maxProfit: json['maxProfit'] as num,
      expectedProfit: json['expectedProfit'] as num,
      cost: TargetCostModel.fromJson(json['cost'] as Map<String, dynamic>),
      profile: ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TargetListModelImplToJson(
        _$TargetListModelImpl instance) =>
    <String, dynamic>{
      'targetId': instance.targetId,
      'targetNickname': instance.targetNickname,
      'totalRound': instance.totalRound,
      'maxProfit': instance.maxProfit,
      'expectedProfit': instance.expectedProfit,
      'cost': instance.cost,
      'profile': instance.profile,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      url: json['url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
    };

_$TargetCostModelImpl _$$TargetCostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TargetCostModelImpl(
      type: json['type'] as String,
      amount: json['amount'] as num,
    );

Map<String, dynamic> _$$TargetCostModelImplToJson(
        _$TargetCostModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
    };
