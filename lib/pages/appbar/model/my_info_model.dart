import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_info_model.freezed.dart';
part 'my_info_model.g.dart';

abstract class MyInfoBase {}

class MyInfoLoading extends MyInfoBase {}

class MyInfoError extends MyInfoBase {}

class MyInfoNickNameError extends MyInfoBase {}

// 마이 정보 조회 모델
@freezed
class MyInfoModel extends MyInfoBase with _$MyInfoModel {
  const factory MyInfoModel({
    required MyInfoMember member, //회원정보
    required MyInfoWallet balance, //지갑
    // required ProfileListModel equipped, //장착중인 nft
  }) = _MyInfoModel;
  factory MyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MyInfoModelFromJson(json);
}

// 마이 회원정보 모델
@freezed
class MyInfoMember with _$MyInfoMember {
  const factory MyInfoMember({
    required int id, //id
    required String nickname, //닉네임
    required String status, //회원상태
    required bool paidNicknameChange, //닉네임 구매권 여부
  }) = _MyInfoMember;
  factory MyInfoMember.fromJson(Map<String, dynamic> json) =>
      _$MyInfoMemberFromJson(json);
}

// 마이 지갑정보 모델
@freezed
class MyInfoWallet with _$MyInfoWallet {
  const factory MyInfoWallet({
    required num gold, //골드
  }) = _MyInfoWallet;
  factory MyInfoWallet.fromJson(Map<String, dynamic> json) =>
      _$MyInfoWalletFromJson(json);
}

// 닉네임 중복 조회 응답 모델
@freezed
class NicknameCheck with _$NicknameCheck {
  const factory NicknameCheck({
    required bool valid,
  }) = _NicknameCheck;
  factory NicknameCheck.fromJson(Map<String, dynamic> json) =>
      _$NicknameCheckFromJson(json);
}

// 닉네임 입력 모델
@freezed
class Nickname with _$Nickname {
  const factory Nickname({
    required String nickname,
  }) = _Nickname;
  factory Nickname.fromJson(Map<String, dynamic> json) =>
      _$NicknameFromJson(json);
}
