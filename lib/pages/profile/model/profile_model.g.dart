// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      pioneer: PioneerModel.fromJson(json['pioneer'] as Map<String, dynamic>),
      newBadge:
          NewBadgeModel.fromJson(json['newBadge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'pioneer': instance.pioneer,
      'newBadge': instance.newBadge,
    };

_$NewBadgeModelImpl _$$NewBadgeModelImplFromJson(Map<String, dynamic> json) =>
    _$NewBadgeModelImpl(
      pioneerList: json['pioneerList'] as bool,
      newPioneer: json['newPioneer'] as bool,
    );

Map<String, dynamic> _$$NewBadgeModelImplToJson(_$NewBadgeModelImpl instance) =>
    <String, dynamic>{
      'pioneerList': instance.pioneerList,
      'newPioneer': instance.newPioneer,
    };

_$PioneerModelImpl _$$PioneerModelImplFromJson(Map<String, dynamic> json) =>
    _$PioneerModelImpl(
      id: json['id'] as int,
      equipped: json['equipped'] as bool,
      readed: json['readed'] as bool,
      stat: json['stat'] == null
          ? null
          : ProfileStatModel.fromJson(json['stat'] as Map<String, dynamic>),
      statBonus: json['statBonus'] == null
          ? null
          : ProfileStatModel.fromJson(
              json['statBonus'] as Map<String, dynamic>),
      url: json['url'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      tokenId: json['tokenId'] as int,
    );

Map<String, dynamic> _$$PioneerModelImplToJson(_$PioneerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipped': instance.equipped,
      'readed': instance.readed,
      'stat': instance.stat,
      'statBonus': instance.statBonus,
      'url': instance.url,
      'type': instance.type,
      'name': instance.name,
      'tokenId': instance.tokenId,
    };

_$ProfileStatModelImpl _$$ProfileStatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileStatModelImpl(
      luck: json['luck'] as int,
      silverTongue: json['silverTongue'] as int,
      stamina: json['stamina'] as int,
      intuition: json['intuition'] as int,
    );

Map<String, dynamic> _$$ProfileStatModelImplToJson(
        _$ProfileStatModelImpl instance) =>
    <String, dynamic>{
      'luck': instance.luck,
      'silverTongue': instance.silverTongue,
      'stamina': instance.stamina,
      'intuition': instance.intuition,
    };
