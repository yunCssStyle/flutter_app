// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyInfoModelImpl _$$MyInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$MyInfoModelImpl(
      member: MyInfoMember.fromJson(json['member'] as Map<String, dynamic>),
      balance: MyInfoWallet.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyInfoModelImplToJson(_$MyInfoModelImpl instance) =>
    <String, dynamic>{
      'member': instance.member,
      'balance': instance.balance,
    };

_$MyInfoMemberImpl _$$MyInfoMemberImplFromJson(Map<String, dynamic> json) =>
    _$MyInfoMemberImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      status: json['status'] as String,
      paidNicknameChange: json['paidNicknameChange'] as bool,
    );

Map<String, dynamic> _$$MyInfoMemberImplToJson(_$MyInfoMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'status': instance.status,
      'paidNicknameChange': instance.paidNicknameChange,
    };

_$MyInfoWalletImpl _$$MyInfoWalletImplFromJson(Map<String, dynamic> json) =>
    _$MyInfoWalletImpl(
      gold: json['gold'] as num,
    );

Map<String, dynamic> _$$MyInfoWalletImplToJson(_$MyInfoWalletImpl instance) =>
    <String, dynamic>{
      'gold': instance.gold,
    };

_$NicknameCheckImpl _$$NicknameCheckImplFromJson(Map<String, dynamic> json) =>
    _$NicknameCheckImpl(
      valid: json['valid'] as bool,
    );

Map<String, dynamic> _$$NicknameCheckImplToJson(_$NicknameCheckImpl instance) =>
    <String, dynamic>{
      'valid': instance.valid,
    };

_$NicknameImpl _$$NicknameImplFromJson(Map<String, dynamic> json) =>
    _$NicknameImpl(
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$NicknameImplToJson(_$NicknameImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
    };
