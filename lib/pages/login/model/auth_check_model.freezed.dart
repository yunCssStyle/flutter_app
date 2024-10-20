// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCheckModel _$AuthCheckModelFromJson(Map<String, dynamic> json) {
  return _AuthCheckModel.fromJson(json);
}

/// @nodoc
mixin _$AuthCheckModel {
  String get refreshToken => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCheckModelCopyWith<AuthCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCheckModelCopyWith<$Res> {
  factory $AuthCheckModelCopyWith(
          AuthCheckModel value, $Res Function(AuthCheckModel) then) =
      _$AuthCheckModelCopyWithImpl<$Res, AuthCheckModel>;
  @useResult
  $Res call({String refreshToken, String accessToken});
}

/// @nodoc
class _$AuthCheckModelCopyWithImpl<$Res, $Val extends AuthCheckModel>
    implements $AuthCheckModelCopyWith<$Res> {
  _$AuthCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthCheckModelImplCopyWith<$Res>
    implements $AuthCheckModelCopyWith<$Res> {
  factory _$$AuthCheckModelImplCopyWith(_$AuthCheckModelImpl value,
          $Res Function(_$AuthCheckModelImpl) then) =
      __$$AuthCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken, String accessToken});
}

/// @nodoc
class __$$AuthCheckModelImplCopyWithImpl<$Res>
    extends _$AuthCheckModelCopyWithImpl<$Res, _$AuthCheckModelImpl>
    implements _$$AuthCheckModelImplCopyWith<$Res> {
  __$$AuthCheckModelImplCopyWithImpl(
      _$AuthCheckModelImpl _value, $Res Function(_$AuthCheckModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$AuthCheckModelImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthCheckModelImpl implements _AuthCheckModel {
  const _$AuthCheckModelImpl(
      {required this.refreshToken, required this.accessToken});

  factory _$AuthCheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthCheckModelImplFromJson(json);

  @override
  final String refreshToken;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthCheckModel(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCheckModelImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCheckModelImplCopyWith<_$AuthCheckModelImpl> get copyWith =>
      __$$AuthCheckModelImplCopyWithImpl<_$AuthCheckModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthCheckModelImplToJson(
      this,
    );
  }
}

abstract class _AuthCheckModel implements AuthCheckModel {
  const factory _AuthCheckModel(
      {required final String refreshToken,
      required final String accessToken}) = _$AuthCheckModelImpl;

  factory _AuthCheckModel.fromJson(Map<String, dynamic> json) =
      _$AuthCheckModelImpl.fromJson;

  @override
  String get refreshToken;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthCheckModelImplCopyWith<_$AuthCheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
