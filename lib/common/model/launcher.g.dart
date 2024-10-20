// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LauncherModelImpl _$$LauncherModelImplFromJson(Map<String, dynamic> json) =>
    _$LauncherModelImpl(
      is_maintenance: json['is_maintenance'] as bool,
      version: json['version'] as String,
      message: json['message'] as String,
      servers: LauncherServersModel.fromJson(
          json['servers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LauncherModelImplToJson(_$LauncherModelImpl instance) =>
    <String, dynamic>{
      'is_maintenance': instance.is_maintenance,
      'version': instance.version,
      'message': instance.message,
      'servers': instance.servers,
    };

_$LauncherServersModelImpl _$$LauncherServersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LauncherServersModelImpl(
      auth: json['auth'] as String,
      game: json['game'] as String,
    );

Map<String, dynamic> _$$LauncherServersModelImplToJson(
        _$LauncherServersModelImpl instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'game': instance.game,
    };
