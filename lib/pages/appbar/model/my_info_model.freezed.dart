// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyInfoModel _$MyInfoModelFromJson(Map<String, dynamic> json) {
  return _MyInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MyInfoModel {
  MyInfoMember get member => throw _privateConstructorUsedError; //회원정보
  MyInfoWallet get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInfoModelCopyWith<MyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoModelCopyWith<$Res> {
  factory $MyInfoModelCopyWith(
          MyInfoModel value, $Res Function(MyInfoModel) then) =
      _$MyInfoModelCopyWithImpl<$Res, MyInfoModel>;
  @useResult
  $Res call({MyInfoMember member, MyInfoWallet balance});

  $MyInfoMemberCopyWith<$Res> get member;
  $MyInfoWalletCopyWith<$Res> get balance;
}

/// @nodoc
class _$MyInfoModelCopyWithImpl<$Res, $Val extends MyInfoModel>
    implements $MyInfoModelCopyWith<$Res> {
  _$MyInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MyInfoMember,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as MyInfoWallet,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyInfoMemberCopyWith<$Res> get member {
    return $MyInfoMemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MyInfoWalletCopyWith<$Res> get balance {
    return $MyInfoWalletCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyInfoModelImplCopyWith<$Res>
    implements $MyInfoModelCopyWith<$Res> {
  factory _$$MyInfoModelImplCopyWith(
          _$MyInfoModelImpl value, $Res Function(_$MyInfoModelImpl) then) =
      __$$MyInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyInfoMember member, MyInfoWallet balance});

  @override
  $MyInfoMemberCopyWith<$Res> get member;
  @override
  $MyInfoWalletCopyWith<$Res> get balance;
}

/// @nodoc
class __$$MyInfoModelImplCopyWithImpl<$Res>
    extends _$MyInfoModelCopyWithImpl<$Res, _$MyInfoModelImpl>
    implements _$$MyInfoModelImplCopyWith<$Res> {
  __$$MyInfoModelImplCopyWithImpl(
      _$MyInfoModelImpl _value, $Res Function(_$MyInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? balance = null,
  }) {
    return _then(_$MyInfoModelImpl(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MyInfoMember,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as MyInfoWallet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyInfoModelImpl implements _MyInfoModel {
  const _$MyInfoModelImpl({required this.member, required this.balance});

  factory _$MyInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyInfoModelImplFromJson(json);

  @override
  final MyInfoMember member;
//회원정보
  @override
  final MyInfoWallet balance;

  @override
  String toString() {
    return 'MyInfoModel(member: $member, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyInfoModelImpl &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, member, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyInfoModelImplCopyWith<_$MyInfoModelImpl> get copyWith =>
      __$$MyInfoModelImplCopyWithImpl<_$MyInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MyInfoModel implements MyInfoModel {
  const factory _MyInfoModel(
      {required final MyInfoMember member,
      required final MyInfoWallet balance}) = _$MyInfoModelImpl;

  factory _MyInfoModel.fromJson(Map<String, dynamic> json) =
      _$MyInfoModelImpl.fromJson;

  @override
  MyInfoMember get member;
  @override //회원정보
  MyInfoWallet get balance;
  @override
  @JsonKey(ignore: true)
  _$$MyInfoModelImplCopyWith<_$MyInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyInfoMember _$MyInfoMemberFromJson(Map<String, dynamic> json) {
  return _MyInfoMember.fromJson(json);
}

/// @nodoc
mixin _$MyInfoMember {
  int get id => throw _privateConstructorUsedError; //id
  String get nickname => throw _privateConstructorUsedError; //닉네임
  String get status => throw _privateConstructorUsedError; //회원상태
  bool get paidNicknameChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInfoMemberCopyWith<MyInfoMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoMemberCopyWith<$Res> {
  factory $MyInfoMemberCopyWith(
          MyInfoMember value, $Res Function(MyInfoMember) then) =
      _$MyInfoMemberCopyWithImpl<$Res, MyInfoMember>;
  @useResult
  $Res call({int id, String nickname, String status, bool paidNicknameChange});
}

/// @nodoc
class _$MyInfoMemberCopyWithImpl<$Res, $Val extends MyInfoMember>
    implements $MyInfoMemberCopyWith<$Res> {
  _$MyInfoMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? status = null,
    Object? paidNicknameChange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidNicknameChange: null == paidNicknameChange
          ? _value.paidNicknameChange
          : paidNicknameChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyInfoMemberImplCopyWith<$Res>
    implements $MyInfoMemberCopyWith<$Res> {
  factory _$$MyInfoMemberImplCopyWith(
          _$MyInfoMemberImpl value, $Res Function(_$MyInfoMemberImpl) then) =
      __$$MyInfoMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String status, bool paidNicknameChange});
}

/// @nodoc
class __$$MyInfoMemberImplCopyWithImpl<$Res>
    extends _$MyInfoMemberCopyWithImpl<$Res, _$MyInfoMemberImpl>
    implements _$$MyInfoMemberImplCopyWith<$Res> {
  __$$MyInfoMemberImplCopyWithImpl(
      _$MyInfoMemberImpl _value, $Res Function(_$MyInfoMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? status = null,
    Object? paidNicknameChange = null,
  }) {
    return _then(_$MyInfoMemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidNicknameChange: null == paidNicknameChange
          ? _value.paidNicknameChange
          : paidNicknameChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyInfoMemberImpl implements _MyInfoMember {
  const _$MyInfoMemberImpl(
      {required this.id,
      required this.nickname,
      required this.status,
      required this.paidNicknameChange});

  factory _$MyInfoMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyInfoMemberImplFromJson(json);

  @override
  final int id;
//id
  @override
  final String nickname;
//닉네임
  @override
  final String status;
//회원상태
  @override
  final bool paidNicknameChange;

  @override
  String toString() {
    return 'MyInfoMember(id: $id, nickname: $nickname, status: $status, paidNicknameChange: $paidNicknameChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyInfoMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paidNicknameChange, paidNicknameChange) ||
                other.paidNicknameChange == paidNicknameChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, status, paidNicknameChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyInfoMemberImplCopyWith<_$MyInfoMemberImpl> get copyWith =>
      __$$MyInfoMemberImplCopyWithImpl<_$MyInfoMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyInfoMemberImplToJson(
      this,
    );
  }
}

abstract class _MyInfoMember implements MyInfoMember {
  const factory _MyInfoMember(
      {required final int id,
      required final String nickname,
      required final String status,
      required final bool paidNicknameChange}) = _$MyInfoMemberImpl;

  factory _MyInfoMember.fromJson(Map<String, dynamic> json) =
      _$MyInfoMemberImpl.fromJson;

  @override
  int get id;
  @override //id
  String get nickname;
  @override //닉네임
  String get status;
  @override //회원상태
  bool get paidNicknameChange;
  @override
  @JsonKey(ignore: true)
  _$$MyInfoMemberImplCopyWith<_$MyInfoMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyInfoWallet _$MyInfoWalletFromJson(Map<String, dynamic> json) {
  return _MyInfoWallet.fromJson(json);
}

/// @nodoc
mixin _$MyInfoWallet {
  num get gold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInfoWalletCopyWith<MyInfoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoWalletCopyWith<$Res> {
  factory $MyInfoWalletCopyWith(
          MyInfoWallet value, $Res Function(MyInfoWallet) then) =
      _$MyInfoWalletCopyWithImpl<$Res, MyInfoWallet>;
  @useResult
  $Res call({num gold});
}

/// @nodoc
class _$MyInfoWalletCopyWithImpl<$Res, $Val extends MyInfoWallet>
    implements $MyInfoWalletCopyWith<$Res> {
  _$MyInfoWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gold = null,
  }) {
    return _then(_value.copyWith(
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyInfoWalletImplCopyWith<$Res>
    implements $MyInfoWalletCopyWith<$Res> {
  factory _$$MyInfoWalletImplCopyWith(
          _$MyInfoWalletImpl value, $Res Function(_$MyInfoWalletImpl) then) =
      __$$MyInfoWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num gold});
}

/// @nodoc
class __$$MyInfoWalletImplCopyWithImpl<$Res>
    extends _$MyInfoWalletCopyWithImpl<$Res, _$MyInfoWalletImpl>
    implements _$$MyInfoWalletImplCopyWith<$Res> {
  __$$MyInfoWalletImplCopyWithImpl(
      _$MyInfoWalletImpl _value, $Res Function(_$MyInfoWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gold = null,
  }) {
    return _then(_$MyInfoWalletImpl(
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyInfoWalletImpl implements _MyInfoWallet {
  const _$MyInfoWalletImpl({required this.gold});

  factory _$MyInfoWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyInfoWalletImplFromJson(json);

  @override
  final num gold;

  @override
  String toString() {
    return 'MyInfoWallet(gold: $gold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyInfoWalletImpl &&
            (identical(other.gold, gold) || other.gold == gold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyInfoWalletImplCopyWith<_$MyInfoWalletImpl> get copyWith =>
      __$$MyInfoWalletImplCopyWithImpl<_$MyInfoWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyInfoWalletImplToJson(
      this,
    );
  }
}

abstract class _MyInfoWallet implements MyInfoWallet {
  const factory _MyInfoWallet({required final num gold}) = _$MyInfoWalletImpl;

  factory _MyInfoWallet.fromJson(Map<String, dynamic> json) =
      _$MyInfoWalletImpl.fromJson;

  @override
  num get gold;
  @override
  @JsonKey(ignore: true)
  _$$MyInfoWalletImplCopyWith<_$MyInfoWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NicknameCheck _$NicknameCheckFromJson(Map<String, dynamic> json) {
  return _NicknameCheck.fromJson(json);
}

/// @nodoc
mixin _$NicknameCheck {
  bool get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NicknameCheckCopyWith<NicknameCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameCheckCopyWith<$Res> {
  factory $NicknameCheckCopyWith(
          NicknameCheck value, $Res Function(NicknameCheck) then) =
      _$NicknameCheckCopyWithImpl<$Res, NicknameCheck>;
  @useResult
  $Res call({bool valid});
}

/// @nodoc
class _$NicknameCheckCopyWithImpl<$Res, $Val extends NicknameCheck>
    implements $NicknameCheckCopyWith<$Res> {
  _$NicknameCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NicknameCheckImplCopyWith<$Res>
    implements $NicknameCheckCopyWith<$Res> {
  factory _$$NicknameCheckImplCopyWith(
          _$NicknameCheckImpl value, $Res Function(_$NicknameCheckImpl) then) =
      __$$NicknameCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool valid});
}

/// @nodoc
class __$$NicknameCheckImplCopyWithImpl<$Res>
    extends _$NicknameCheckCopyWithImpl<$Res, _$NicknameCheckImpl>
    implements _$$NicknameCheckImplCopyWith<$Res> {
  __$$NicknameCheckImplCopyWithImpl(
      _$NicknameCheckImpl _value, $Res Function(_$NicknameCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
  }) {
    return _then(_$NicknameCheckImpl(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NicknameCheckImpl implements _NicknameCheck {
  const _$NicknameCheckImpl({required this.valid});

  factory _$NicknameCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$NicknameCheckImplFromJson(json);

  @override
  final bool valid;

  @override
  String toString() {
    return 'NicknameCheck(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameCheckImpl &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameCheckImplCopyWith<_$NicknameCheckImpl> get copyWith =>
      __$$NicknameCheckImplCopyWithImpl<_$NicknameCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NicknameCheckImplToJson(
      this,
    );
  }
}

abstract class _NicknameCheck implements NicknameCheck {
  const factory _NicknameCheck({required final bool valid}) =
      _$NicknameCheckImpl;

  factory _NicknameCheck.fromJson(Map<String, dynamic> json) =
      _$NicknameCheckImpl.fromJson;

  @override
  bool get valid;
  @override
  @JsonKey(ignore: true)
  _$$NicknameCheckImplCopyWith<_$NicknameCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nickname _$NicknameFromJson(Map<String, dynamic> json) {
  return _Nickname.fromJson(json);
}

/// @nodoc
mixin _$Nickname {
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NicknameCopyWith<Nickname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameCopyWith<$Res> {
  factory $NicknameCopyWith(Nickname value, $Res Function(Nickname) then) =
      _$NicknameCopyWithImpl<$Res, Nickname>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$NicknameCopyWithImpl<$Res, $Val extends Nickname>
    implements $NicknameCopyWith<$Res> {
  _$NicknameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NicknameImplCopyWith<$Res>
    implements $NicknameCopyWith<$Res> {
  factory _$$NicknameImplCopyWith(
          _$NicknameImpl value, $Res Function(_$NicknameImpl) then) =
      __$$NicknameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameImplCopyWithImpl<$Res>
    extends _$NicknameCopyWithImpl<$Res, _$NicknameImpl>
    implements _$$NicknameImplCopyWith<$Res> {
  __$$NicknameImplCopyWithImpl(
      _$NicknameImpl _value, $Res Function(_$NicknameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NicknameImpl implements _Nickname {
  const _$NicknameImpl({required this.nickname});

  factory _$NicknameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NicknameImplFromJson(json);

  @override
  final String nickname;

  @override
  String toString() {
    return 'Nickname(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameImplCopyWith<_$NicknameImpl> get copyWith =>
      __$$NicknameImplCopyWithImpl<_$NicknameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NicknameImplToJson(
      this,
    );
  }
}

abstract class _Nickname implements Nickname {
  const factory _Nickname({required final String nickname}) = _$NicknameImpl;

  factory _Nickname.fromJson(Map<String, dynamic> json) =
      _$NicknameImpl.fromJson;

  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$NicknameImplCopyWith<_$NicknameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
