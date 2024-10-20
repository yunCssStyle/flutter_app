import 'package:freezed_annotation/freezed_annotation.dart';
part 'chart_model.freezed.dart';
part 'chart_model.g.dart';

abstract class ChartBase {}

class ChartLoading extends ChartBase {}

class ChartError extends ChartBase {}

@freezed
class ChartModel extends ChartBase with _$ChartModel {
  const factory ChartModel({
    required List<ChartListModel> charts,
  }) = _ChartModel;
  factory ChartModel.fromJson(Map<String, dynamic> json) =>
      _$ChartModelFromJson(json);
}

@freezed
class ChartListModel with _$ChartListModel {
  const factory ChartListModel({
    required int hour,
    required num percent,
  }) = _ChartListModel;
  factory ChartListModel.fromJson(Map<String, dynamic> json) =>
      _$ChartListModelFromJson(json);
}
