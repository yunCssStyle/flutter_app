import 'package:freezed_annotation/freezed_annotation.dart';
part 'ranking_model.freezed.dart';
part 'ranking_model.g.dart';

abstract class RankingBase {}

class RankingLoading extends RankingBase {}

class RankingError extends RankingBase {}

@freezed
class RankingModel extends RankingBase with _$RankingModel {
  const factory RankingModel({
    MyRankingModel? myRanking,
    required List<MyRankingModel> rankings,
  }) = _RankingModel;
  factory RankingModel.fromJson(Map<String, dynamic> json) =>
      _$RankingModelFromJson(json);
}

@freezed
class MyRankingModel with _$MyRankingModel {
  const factory MyRankingModel({
    required int rank,
    required ReportProfileModel profile,
    required num goldAcquired,
    required int? miningPower,
    required num? miningCapacity,
    required num? earningsFromLooting,
    required num? attackProfit,
    required int? ofAttacks,
    required num? biggestWinnings,
  }) = _MyRankingModel;
  factory MyRankingModel.fromJson(Map<String, dynamic> json) =>
      _$MyRankingModelFromJson(json);
}

@freezed
class ReportProfileModel with _$ReportProfileModel {
  const factory ReportProfileModel({
    required String profileType,
    required String profileUrl,
    String? nickname,
    required ReportStatModel stat,
  }) = _ReportProfileModel;
  factory ReportProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ReportProfileModelFromJson(json);
}

@freezed
class ReportStatModel with _$ReportStatModel {
  const factory ReportStatModel({
    required int luck,
    required int silverTongue,
    required int stamina,
    required int intuition,
  }) = _ReportStatModel;
  factory ReportStatModel.fromJson(Map<String, dynamic> json) =>
      _$ReportStatModelFromJson(json);
}
