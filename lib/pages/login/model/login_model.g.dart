// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResModelImpl _$$LoginResModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginResModelImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LoginResModelImplToJson(_$LoginResModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$PushPutModelImpl _$$PushPutModelImplFromJson(Map<String, dynamic> json) =>
    _$PushPutModelImpl(
      push: json['push'] as String,
    );

Map<String, dynamic> _$$PushPutModelImplToJson(_$PushPutModelImpl instance) =>
    <String, dynamic>{
      'push': instance.push,
    };
