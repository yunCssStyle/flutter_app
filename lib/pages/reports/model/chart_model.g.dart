// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartModelImpl _$$ChartModelImplFromJson(Map<String, dynamic> json) =>
    _$ChartModelImpl(
      charts: (json['charts'] as List<dynamic>)
          .map((e) => ChartListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChartModelImplToJson(_$ChartModelImpl instance) =>
    <String, dynamic>{
      'charts': instance.charts,
    };

_$ChartListModelImpl _$$ChartListModelImplFromJson(Map<String, dynamic> json) =>
    _$ChartListModelImpl(
      hour: json['hour'] as int,
      percent: json['percent'] as num,
    );

Map<String, dynamic> _$$ChartListModelImplToJson(
        _$ChartListModelImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'percent': instance.percent,
    };
