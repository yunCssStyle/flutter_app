// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResModel _$LoginResModelFromJson(Map<String, dynamic> json) {
  return _LoginResModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResModelCopyWith<LoginResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResModelCopyWith<$Res> {
  factory $LoginResModelCopyWith(
          LoginResModel value, $Res Function(LoginResModel) then) =
      _$LoginResModelCopyWithImpl<$Res, LoginResModel>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$LoginResModelCopyWithImpl<$Res, $Val extends LoginResModel>
    implements $LoginResModelCopyWith<$Res> {
  _$LoginResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResModelImplCopyWith<$Res>
    implements $LoginResModelCopyWith<$Res> {
  factory _$$LoginResModelImplCopyWith(
          _$LoginResModelImpl value, $Res Function(_$LoginResModelImpl) then) =
      __$$LoginResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$LoginResModelImplCopyWithImpl<$Res>
    extends _$LoginResModelCopyWithImpl<$Res, _$LoginResModelImpl>
    implements _$$LoginResModelImplCopyWith<$Res> {
  __$$LoginResModelImplCopyWithImpl(
      _$LoginResModelImpl _value, $Res Function(_$LoginResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LoginResModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResModelImpl implements _LoginResModel {
  const _$LoginResModelImpl(
      {required this.accessToken, required this.refreshToken});

  factory _$LoginResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResModelImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResModelImplCopyWith<_$LoginResModelImpl> get copyWith =>
      __$$LoginResModelImplCopyWithImpl<_$LoginResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResModel implements LoginResModel {
  const factory _LoginResModel(
      {required final String accessToken,
      required final String refreshToken}) = _$LoginResModelImpl;

  factory _LoginResModel.fromJson(Map<String, dynamic> json) =
      _$LoginResModelImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginResModelImplCopyWith<_$LoginResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PushPutModel _$PushPutModelFromJson(Map<String, dynamic> json) {
  return _PushPutModel.fromJson(json);
}

/// @nodoc
mixin _$PushPutModel {
  String get push => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushPutModelCopyWith<PushPutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushPutModelCopyWith<$Res> {
  factory $PushPutModelCopyWith(
          PushPutModel value, $Res Function(PushPutModel) then) =
      _$PushPutModelCopyWithImpl<$Res, PushPutModel>;
  @useResult
  $Res call({String push});
}

/// @nodoc
class _$PushPutModelCopyWithImpl<$Res, $Val extends PushPutModel>
    implements $PushPutModelCopyWith<$Res> {
  _$PushPutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? push = null,
  }) {
    return _then(_value.copyWith(
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushPutModelImplCopyWith<$Res>
    implements $PushPutModelCopyWith<$Res> {
  factory _$$PushPutModelImplCopyWith(
          _$PushPutModelImpl value, $Res Function(_$PushPutModelImpl) then) =
      __$$PushPutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String push});
}

/// @nodoc
class __$$PushPutModelImplCopyWithImpl<$Res>
    extends _$PushPutModelCopyWithImpl<$Res, _$PushPutModelImpl>
    implements _$$PushPutModelImplCopyWith<$Res> {
  __$$PushPutModelImplCopyWithImpl(
      _$PushPutModelImpl _value, $Res Function(_$PushPutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? push = null,
  }) {
    return _then(_$PushPutModelImpl(
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushPutModelImpl implements _PushPutModel {
  const _$PushPutModelImpl({required this.push});

  factory _$PushPutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushPutModelImplFromJson(json);

  @override
  final String push;

  @override
  String toString() {
    return 'PushPutModel(push: $push)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushPutModelImpl &&
            (identical(other.push, push) || other.push == push));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, push);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushPutModelImplCopyWith<_$PushPutModelImpl> get copyWith =>
      __$$PushPutModelImplCopyWithImpl<_$PushPutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushPutModelImplToJson(
      this,
    );
  }
}

abstract class _PushPutModel implements PushPutModel {
  const factory _PushPutModel({required final String push}) =
      _$PushPutModelImpl;

  factory _PushPutModel.fromJson(Map<String, dynamic> json) =
      _$PushPutModelImpl.fromJson;

  @override
  String get push;
  @override
  @JsonKey(ignore: true)
  _$$PushPutModelImplCopyWith<_$PushPutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
