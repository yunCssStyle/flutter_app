// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_check_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthCheckModelImpl _$$AuthCheckModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthCheckModelImpl(
      refreshToken: json['refreshToken'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$AuthCheckModelImplToJson(
        _$AuthCheckModelImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
    };
