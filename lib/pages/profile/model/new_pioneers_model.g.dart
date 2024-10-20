// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_pioneers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewProfileModelImpl _$$NewProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewProfileModelImpl(
      page: json['page'] as int,
      size: json['size'] as int,
      totalPages: json['totalPages'] as int,
      totalCount: json['totalCount'] as int,
      isFirst: json['isFirst'] as bool,
      isLast: json['isLast'] as bool,
      pioneers: (json['pioneers'] as List<dynamic>)
          .map((e) => PioneerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewProfileModelImplToJson(
        _$NewProfileModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'isFirst': instance.isFirst,
      'isLast': instance.isLast,
      'pioneers': instance.pioneers,
    };

_$NewStatModelImpl _$$NewStatModelImplFromJson(Map<String, dynamic> json) =>
    _$NewStatModelImpl(
      id: json['id'] as int,
      stat: ProfileStatModel.fromJson(json['stat'] as Map<String, dynamic>),
      statBonus: json['statBonus'] == null
          ? null
          : ProfileStatModel.fromJson(
              json['statBonus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewStatModelImplToJson(_$NewStatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stat': instance.stat,
      'statBonus': instance.statBonus,
    };
