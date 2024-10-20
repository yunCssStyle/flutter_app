// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InformationModelImpl _$$InformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InformationModelImpl(
      myInformation:
          MyInModel.fromJson(json['myInformation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InformationModelImplToJson(
        _$InformationModelImpl instance) =>
    <String, dynamic>{
      'myInformation': instance.myInformation,
    };

_$MyInModelImpl _$$MyInModelImplFromJson(Map<String, dynamic> json) =>
    _$MyInModelImpl(
      miningPower: json['miningPower'] as int,
      miningCapacity: json['miningCapacity'] as num,
      totalGoldAcquired: json['totalGoldAcquired'] as num,
      attackProfit: json['attackProfit'] as num,
      lossesFromAttacks: json['lossesFromAttacks'] as num,
    );

Map<String, dynamic> _$$MyInModelImplToJson(_$MyInModelImpl instance) =>
    <String, dynamic>{
      'miningPower': instance.miningPower,
      'miningCapacity': instance.miningCapacity,
      'totalGoldAcquired': instance.totalGoldAcquired,
      'attackProfit': instance.attackProfit,
      'lossesFromAttacks': instance.lossesFromAttacks,
    };
