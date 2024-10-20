// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockedModelImpl _$$BlockedModelImplFromJson(Map<String, dynamic> json) =>
    _$BlockedModelImpl(
      type: json['type'] as String,
      blockedDetails: json['blockedDetails'] == null
          ? null
          : BlockedDetailsModel.fromJson(
              json['blockedDetails'] as Map<String, dynamic>),
      maintenanceDetails: json['maintenanceDetails'] == null
          ? null
          : MaintenanceDetailsModel.fromJson(
              json['maintenanceDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlockedModelImplToJson(_$BlockedModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'blockedDetails': instance.blockedDetails,
      'maintenanceDetails': instance.maintenanceDetails,
    };

_$BlockedDetailsModelImpl _$$BlockedDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockedDetailsModelImpl(
      eternal: json['eternal'] as bool,
      startDateTime: json['startDateTime'] as String?,
      endDateTime: json['endDateTime'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$BlockedDetailsModelImplToJson(
        _$BlockedDetailsModelImpl instance) =>
    <String, dynamic>{
      'eternal': instance.eternal,
      'startDateTime': instance.startDateTime,
      'endDateTime': instance.endDateTime,
      'reason': instance.reason,
    };

_$MaintenanceDetailsModelImpl _$$MaintenanceDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceDetailsModelImpl(
      startDateTime: json['startDateTime'] as String,
      endDateTime: json['endDateTime'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$MaintenanceDetailsModelImplToJson(
        _$MaintenanceDetailsModelImpl instance) =>
    <String, dynamic>{
      'startDateTime': instance.startDateTime,
      'endDateTime': instance.endDateTime,
      'message': instance.message,
    };
