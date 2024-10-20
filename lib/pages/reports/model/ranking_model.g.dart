// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingModelImpl _$$RankingModelImplFromJson(Map<String, dynamic> json) =>
    _$RankingModelImpl(
      myRanking: json['myRanking'] == null
          ? null
          : MyRankingModel.fromJson(json['myRanking'] as Map<String, dynamic>),
      rankings: (json['rankings'] as List<dynamic>)
          .map((e) => MyRankingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RankingModelImplToJson(_$RankingModelImpl instance) =>
    <String, dynamic>{
      'myRanking': instance.myRanking,
      'rankings': instance.rankings,
    };

_$MyRankingModelImpl _$$MyRankingModelImplFromJson(Map<String, dynamic> json) =>
    _$MyRankingModelImpl(
      rank: json['rank'] as int,
      profile:
          ReportProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
      goldAcquired: json['goldAcquired'] as num,
      miningPower: json['miningPower'] as int?,
      miningCapacity: json['miningCapacity'] as num?,
      earningsFromLooting: json['earningsFromLooting'] as num?,
      attackProfit: json['attackProfit'] as num?,
      ofAttacks: json['ofAttacks'] as int?,
      biggestWinnings: json['biggestWinnings'] as num?,
    );

Map<String, dynamic> _$$MyRankingModelImplToJson(
        _$MyRankingModelImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'profile': instance.profile,
      'goldAcquired': instance.goldAcquired,
      'miningPower': instance.miningPower,
      'miningCapacity': instance.miningCapacity,
      'earningsFromLooting': instance.earningsFromLooting,
      'attackProfit': instance.attackProfit,
      'ofAttacks': instance.ofAttacks,
      'biggestWinnings': instance.biggestWinnings,
    };

_$ReportProfileModelImpl _$$ReportProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportProfileModelImpl(
      profileType: json['profileType'] as String,
      profileUrl: json['profileUrl'] as String,
      nickname: json['nickname'] as String?,
      stat: ReportStatModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReportProfileModelImplToJson(
        _$ReportProfileModelImpl instance) =>
    <String, dynamic>{
      'profileType': instance.profileType,
      'profileUrl': instance.profileUrl,
      'nickname': instance.nickname,
      'stat': instance.stat,
    };

_$ReportStatModelImpl _$$ReportStatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportStatModelImpl(
      luck: json['luck'] as int,
      silverTongue: json['silverTongue'] as int,
      stamina: json['stamina'] as int,
      intuition: json['intuition'] as int,
    );

Map<String, dynamic> _$$ReportStatModelImplToJson(
        _$ReportStatModelImpl instance) =>
    <String, dynamic>{
      'luck': instance.luck,
      'silverTongue': instance.silverTongue,
      'stamina': instance.stamina,
      'intuition': instance.intuition,
    };
