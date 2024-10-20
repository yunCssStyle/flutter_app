// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      isDivision: json['isDivision'] as bool,
      nextReferenceTime: json['nextReferenceTime'] as int?,
      data: HomeDataModel.fromJson(json['data'] as Map<String, dynamic>),
      newBadge:
          HomeNewBadgeModel.fromJson(json['newBadge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'isDivision': instance.isDivision,
      'nextReferenceTime': instance.nextReferenceTime,
      'data': instance.data,
      'newBadge': instance.newBadge,
    };

_$HomeDataModelImpl _$$HomeDataModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataModelImpl(
      mysteryBox: json['mysteryBox'] as bool?,
      mineLevel: json['mineLevel'] as int?,
      distribute: json['distribute'] == null
          ? null
          : HomeDistributeModel.fromJson(
              json['distribute'] as Map<String, dynamic>),
      storage:
          HomeStorageModel.fromJson(json['storage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeDataModelImplToJson(_$HomeDataModelImpl instance) =>
    <String, dynamic>{
      'mysteryBox': instance.mysteryBox,
      'mineLevel': instance.mineLevel,
      'distribute': instance.distribute,
      'storage': instance.storage,
    };

_$HomeDistributeModelImpl _$$HomeDistributeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDistributeModelImpl(
      miningPower: json['miningPower'] as int,
      dividends: json['dividends'] as num,
    );

Map<String, dynamic> _$$HomeDistributeModelImplToJson(
        _$HomeDistributeModelImpl instance) =>
    <String, dynamic>{
      'miningPower': instance.miningPower,
      'dividends': instance.dividends,
    };

_$HomeNewBadgeModelImpl _$$HomeNewBadgeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeNewBadgeModelImpl(
      inventory: json['inventory'] as bool,
      defence: json['defence'] as bool,
      tradingPost: json['tradingPost'] as bool,
      explore: json['explore'] as bool,
    );

Map<String, dynamic> _$$HomeNewBadgeModelImplToJson(
        _$HomeNewBadgeModelImpl instance) =>
    <String, dynamic>{
      'inventory': instance.inventory,
      'defence': instance.defence,
      'tradingPost': instance.tradingPost,
      'explore': instance.explore,
    };

_$HomeStorageModelImpl _$$HomeStorageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeStorageModelImpl(
      dividendsCycle: json['dividendsCycle'] as int?,
      dividendsCycleGold: json['dividendsCycleGold'] as num?,
      accumulateGold: json['accumulateGold'] as num?,
      transportGold: json['transportGold'] as num?,
      attackProfit: json['attackProfit'] as num?,
      minedGold: json['minedGold'] as num?,
      lossesFromAttacks: json['lossesFromAttacks'] as num?,
      nowDateTime: json['nowDateTime'] as int?,
      previousTransportTime: json['previousTransportTime'] as int?,
      nextTransportTime: json['nextTransportTime'] as int?,
    );

Map<String, dynamic> _$$HomeStorageModelImplToJson(
        _$HomeStorageModelImpl instance) =>
    <String, dynamic>{
      'dividendsCycle': instance.dividendsCycle,
      'dividendsCycleGold': instance.dividendsCycleGold,
      'accumulateGold': instance.accumulateGold,
      'transportGold': instance.transportGold,
      'attackProfit': instance.attackProfit,
      'minedGold': instance.minedGold,
      'lossesFromAttacks': instance.lossesFromAttacks,
      'nowDateTime': instance.nowDateTime,
      'previousTransportTime': instance.previousTransportTime,
      'nextTransportTime': instance.nextTransportTime,
    };

_$MysteryboxModelImpl _$$MysteryboxModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MysteryboxModelImpl(
      reward: MysteryboxReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MysteryboxModelImplToJson(
        _$MysteryboxModelImpl instance) =>
    <String, dynamic>{
      'reward': instance.reward,
    };

_$MysteryboxRewardImpl _$$MysteryboxRewardImplFromJson(
        Map<String, dynamic> json) =>
    _$MysteryboxRewardImpl(
      type: json['type'] as String,
      amount: json['amount'] as num,
      boxGrade: json['boxGrade'] as int,
    );

Map<String, dynamic> _$$MysteryboxRewardImplToJson(
        _$MysteryboxRewardImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
      'boxGrade': instance.boxGrade,
    };
