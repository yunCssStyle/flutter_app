// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileListModelImpl _$$ProfileListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileListModelImpl(
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

Map<String, dynamic> _$$ProfileListModelImplToJson(
        _$ProfileListModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'isFirst': instance.isFirst,
      'isLast': instance.isLast,
      'pioneers': instance.pioneers,
    };

_$ProfileEquipModelImpl _$$ProfileEquipModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileEquipModelImpl(
      id: json['id'] as int,
      equip: json['equip'] as bool,
    );

Map<String, dynamic> _$$ProfileEquipModelImplToJson(
        _$ProfileEquipModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equip': instance.equip,
    };

_$ProfileReadModelImpl _$$ProfileReadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileReadModelImpl(
      ids: (json['ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$ProfileReadModelImplToJson(
        _$ProfileReadModelImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

_$PostStatImpl _$$PostStatImplFromJson(Map<String, dynamic> json) =>
    _$PostStatImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PostStatImplToJson(_$PostStatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
