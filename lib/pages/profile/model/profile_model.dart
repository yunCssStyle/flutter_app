import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

abstract class ProfileBase {
  get pioneer => null;
}

class ProfileLoading extends ProfileBase {}

class ProfileError extends ProfileBase {}

@freezed
class ProfileModel extends ProfileBase with _$ProfileModel {
  const factory ProfileModel({
    required PioneerModel pioneer, //장착중인 nft
    required NewBadgeModel newBadge, //새로운 뱃지
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class NewBadgeModel with _$NewBadgeModel {
  const factory NewBadgeModel({
    required bool pioneerList, //새로운 nft 리스트
    required bool newPioneer, //새로운 스텟 뽑기 여부
  }) = _NewBadgeModel;
  factory NewBadgeModel.fromJson(Map<String, dynamic> json) =>
      _$NewBadgeModelFromJson(json);
}

@freezed
class PioneerModel with _$PioneerModel {
  @override
  const factory PioneerModel({
    required int id, //nft id
    required bool equipped, //장착 여부
    required bool readed, //빨콩 읽음 여부
    ProfileStatModel? stat, //nft 스텟
    ProfileStatModel? statBonus, //nft 스텟 보너스
    required String url, //nft 이미지 url
    required String type, //nft 타입
    required String name, //nft 이름
    required int tokenId, //nft 토큰 아이디
  }) = _PioneerModel;
  factory PioneerModel.fromJson(Map<String, dynamic> json) =>
      _$PioneerModelFromJson(json);
}

@freezed
class ProfileStatModel with _$ProfileStatModel {
  const factory ProfileStatModel({
    required int luck, //행운
    required int silverTongue, //설득력
    required int stamina, //체력
    required int intuition, //직감
  }) = _ProfileStatModel;
  factory ProfileStatModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatModelFromJson(json);
}
