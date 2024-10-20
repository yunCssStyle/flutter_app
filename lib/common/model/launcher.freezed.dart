// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launcher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LauncherModel _$LauncherModelFromJson(Map<String, dynamic> json) {
  return _LauncherModel.fromJson(json);
}

/// @nodoc
mixin _$LauncherModel {
  bool get is_maintenance => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LauncherServersModel get servers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LauncherModelCopyWith<LauncherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LauncherModelCopyWith<$Res> {
  factory $LauncherModelCopyWith(
          LauncherModel value, $Res Function(LauncherModel) then) =
      _$LauncherModelCopyWithImpl<$Res, LauncherModel>;
  @useResult
  $Res call(
      {bool is_maintenance,
      String version,
      String message,
      LauncherServersModel servers});

  $LauncherServersModelCopyWith<$Res> get servers;
}

/// @nodoc
class _$LauncherModelCopyWithImpl<$Res, $Val extends LauncherModel>
    implements $LauncherModelCopyWith<$Res> {
  _$LauncherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_maintenance = null,
    Object? version = null,
    Object? message = null,
    Object? servers = null,
  }) {
    return _then(_value.copyWith(
      is_maintenance: null == is_maintenance
          ? _value.is_maintenance
          : is_maintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      servers: null == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as LauncherServersModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LauncherServersModelCopyWith<$Res> get servers {
    return $LauncherServersModelCopyWith<$Res>(_value.servers, (value) {
      return _then(_value.copyWith(servers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LauncherModelImplCopyWith<$Res>
    implements $LauncherModelCopyWith<$Res> {
  factory _$$LauncherModelImplCopyWith(
          _$LauncherModelImpl value, $Res Function(_$LauncherModelImpl) then) =
      __$$LauncherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool is_maintenance,
      String version,
      String message,
      LauncherServersModel servers});

  @override
  $LauncherServersModelCopyWith<$Res> get servers;
}

/// @nodoc
class __$$LauncherModelImplCopyWithImpl<$Res>
    extends _$LauncherModelCopyWithImpl<$Res, _$LauncherModelImpl>
    implements _$$LauncherModelImplCopyWith<$Res> {
  __$$LauncherModelImplCopyWithImpl(
      _$LauncherModelImpl _value, $Res Function(_$LauncherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_maintenance = null,
    Object? version = null,
    Object? message = null,
    Object? servers = null,
  }) {
    return _then(_$LauncherModelImpl(
      is_maintenance: null == is_maintenance
          ? _value.is_maintenance
          : is_maintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      servers: null == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as LauncherServersModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LauncherModelImpl implements _LauncherModel {
  const _$LauncherModelImpl(
      {required this.is_maintenance,
      required this.version,
      required this.message,
      required this.servers});

  factory _$LauncherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LauncherModelImplFromJson(json);

  @override
  final bool is_maintenance;
  @override
  final String version;
  @override
  final String message;
  @override
  final LauncherServersModel servers;

  @override
  String toString() {
    return 'LauncherModel(is_maintenance: $is_maintenance, version: $version, message: $message, servers: $servers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LauncherModelImpl &&
            (identical(other.is_maintenance, is_maintenance) ||
                other.is_maintenance == is_maintenance) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.servers, servers) || other.servers == servers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, is_maintenance, version, message, servers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LauncherModelImplCopyWith<_$LauncherModelImpl> get copyWith =>
      __$$LauncherModelImplCopyWithImpl<_$LauncherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LauncherModelImplToJson(
      this,
    );
  }
}

abstract class _LauncherModel implements LauncherModel {
  const factory _LauncherModel(
      {required final bool is_maintenance,
      required final String version,
      required final String message,
      required final LauncherServersModel servers}) = _$LauncherModelImpl;

  factory _LauncherModel.fromJson(Map<String, dynamic> json) =
      _$LauncherModelImpl.fromJson;

  @override
  bool get is_maintenance;
  @override
  String get version;
  @override
  String get message;
  @override
  LauncherServersModel get servers;
  @override
  @JsonKey(ignore: true)
  _$$LauncherModelImplCopyWith<_$LauncherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LauncherServersModel _$LauncherServersModelFromJson(Map<String, dynamic> json) {
  return _LauncherServersModel.fromJson(json);
}

/// @nodoc
mixin _$LauncherServersModel {
  String get auth => throw _privateConstructorUsedError;
  String get game => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LauncherServersModelCopyWith<LauncherServersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LauncherServersModelCopyWith<$Res> {
  factory $LauncherServersModelCopyWith(LauncherServersModel value,
          $Res Function(LauncherServersModel) then) =
      _$LauncherServersModelCopyWithImpl<$Res, LauncherServersModel>;
  @useResult
  $Res call({String auth, String game});
}

/// @nodoc
class _$LauncherServersModelCopyWithImpl<$Res,
        $Val extends LauncherServersModel>
    implements $LauncherServersModelCopyWith<$Res> {
  _$LauncherServersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? game = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LauncherServersModelImplCopyWith<$Res>
    implements $LauncherServersModelCopyWith<$Res> {
  factory _$$LauncherServersModelImplCopyWith(_$LauncherServersModelImpl value,
          $Res Function(_$LauncherServersModelImpl) then) =
      __$$LauncherServersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auth, String game});
}

/// @nodoc
class __$$LauncherServersModelImplCopyWithImpl<$Res>
    extends _$LauncherServersModelCopyWithImpl<$Res, _$LauncherServersModelImpl>
    implements _$$LauncherServersModelImplCopyWith<$Res> {
  __$$LauncherServersModelImplCopyWithImpl(_$LauncherServersModelImpl _value,
      $Res Function(_$LauncherServersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? game = null,
  }) {
    return _then(_$LauncherServersModelImpl(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LauncherServersModelImpl implements _LauncherServersModel {
  const _$LauncherServersModelImpl({required this.auth, required this.game});

  factory _$LauncherServersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LauncherServersModelImplFromJson(json);

  @override
  final String auth;
  @override
  final String game;

  @override
  String toString() {
    return 'LauncherServersModel(auth: $auth, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LauncherServersModelImpl &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.game, game) || other.game == game));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LauncherServersModelImplCopyWith<_$LauncherServersModelImpl>
      get copyWith =>
          __$$LauncherServersModelImplCopyWithImpl<_$LauncherServersModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LauncherServersModelImplToJson(
      this,
    );
  }
}

abstract class _LauncherServersModel implements LauncherServersModel {
  const factory _LauncherServersModel(
      {required final String auth,
      required final String game}) = _$LauncherServersModelImpl;

  factory _LauncherServersModel.fromJson(Map<String, dynamic> json) =
      _$LauncherServersModelImpl.fromJson;

  @override
  String get auth;
  @override
  String get game;
  @override
  @JsonKey(ignore: true)
  _$$LauncherServersModelImplCopyWith<_$LauncherServersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
