import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

abstract class HomeBase {}

class HomeLoading extends HomeBase {}

class HomeError extends HomeBase {}

@freezed
class HomeModel extends HomeBase with _$HomeModel {
  const factory HomeModel({
    required bool isDivision, // 첫사용자인지 판단 여부가 될듯 ( 배당 여부 )
    int? nextReferenceTime, // snapshot : true 일경우 null / false 일경우 기준시까지 남은시간
    required HomeDataModel data, // snapshot : true 일경우 데이터 있음 / false 일경우 null
    required HomeNewBadgeModel newBadge,
  }) = _HomeModel;
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class HomeDataModel with _$HomeDataModel {
  const factory HomeDataModel({
    bool? mysteryBox, // 미스터리 박스 여부
    int? mineLevel, // 광산 레벨
    HomeDistributeModel? distribute,
    required HomeStorageModel storage,
  }) = _HomeDataModel;
  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}

@freezed
class HomeDistributeModel with _$HomeDistributeModel {
  const factory HomeDistributeModel({
    required int miningPower, // 오늘 적용 MP
    required num dividends, // 오늘 배당금
  }) = _HomeDistributeModel;
  factory HomeDistributeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDistributeModelFromJson(json);
}

@freezed
class HomeNewBadgeModel with _$HomeNewBadgeModel {
  const factory HomeNewBadgeModel({
    required bool inventory, // ( 인벤토리 뱃지 여부 )
    required bool defence, // ( 방어 뱃지 여부 )
    required bool tradingPost, // ( 교역소 뱃지 여부 )
    required bool explore, //  ( 탐사 뱃지 여부 )
  }) = _HomeNewBadgeModel;
  factory HomeNewBadgeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeNewBadgeModelFromJson(json);
}

@freezed
class HomeStorageModel with _$HomeStorageModel {
  const factory HomeStorageModel({
    int? dividendsCycle, // (배당금 주기, 현재 10초)
    num? dividendsCycleGold, // (배당금 주기에 따른 지급 골드량)
    num? accumulateGold, // (현재 수송에 대한 배당금 축적량)
    num? transportGold, // (현재 수송에 대한 배당금 총량)
    num? attackProfit, // (현재 수송 시간에 대한 공격으로 인한 축적량)
    num? minedGold, // (현재 수송 시간에 대한 배당금 축적량)
    num? lossesFromAttacks, // (현재 수송 시간에 대한 약탈로 인한 잃은량)
    int? nowDateTime, // (현재 서버시간 UTC)
    int? previousTransportTime, // (이전 수송 완료 시간 )
    int? nextTransportTime, // (다음 수송 시작 시간)
  }) = _HomeStorageModel;
  factory HomeStorageModel.fromJson(Map<String, dynamic> json) =>
      _$HomeStorageModelFromJson(json);
}

abstract class MysteryboxBase {}

class MysteryboxLoading extends MysteryboxBase {}

@freezed
class MysteryboxModel extends MysteryboxBase with _$MysteryboxModel {
  const factory MysteryboxModel({
    required MysteryboxReward reward,
  }) = _MysteryboxModel;
  factory MysteryboxModel.fromJson(Map<String, dynamic> json) =>
      _$MysteryboxModelFromJson(json);
}

@freezed
class MysteryboxReward with _$MysteryboxReward {
  const factory MysteryboxReward({
    required String type,
    required num amount,
    required int boxGrade,
  }) = _MysteryboxReward;
  factory MysteryboxReward.fromJson(Map<String, dynamic> json) =>
      _$MysteryboxRewardFromJson(json);
}
