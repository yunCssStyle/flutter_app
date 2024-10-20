// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockedModel _$BlockedModelFromJson(Map<String, dynamic> json) {
  return _BlockedModel.fromJson(json);
}

/// @nodoc
mixin _$BlockedModel {
  String get type => throw _privateConstructorUsedError;
  BlockedDetailsModel? get blockedDetails => throw _privateConstructorUsedError;
  MaintenanceDetailsModel? get maintenanceDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockedModelCopyWith<BlockedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedModelCopyWith<$Res> {
  factory $BlockedModelCopyWith(
          BlockedModel value, $Res Function(BlockedModel) then) =
      _$BlockedModelCopyWithImpl<$Res, BlockedModel>;
  @useResult
  $Res call(
      {String type,
      BlockedDetailsModel? blockedDetails,
      MaintenanceDetailsModel? maintenanceDetails});

  $BlockedDetailsModelCopyWith<$Res>? get blockedDetails;
  $MaintenanceDetailsModelCopyWith<$Res>? get maintenanceDetails;
}

/// @nodoc
class _$BlockedModelCopyWithImpl<$Res, $Val extends BlockedModel>
    implements $BlockedModelCopyWith<$Res> {
  _$BlockedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? blockedDetails = freezed,
    Object? maintenanceDetails = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      blockedDetails: freezed == blockedDetails
          ? _value.blockedDetails
          : blockedDetails // ignore: cast_nullable_to_non_nullable
              as BlockedDetailsModel?,
      maintenanceDetails: freezed == maintenanceDetails
          ? _value.maintenanceDetails
          : maintenanceDetails // ignore: cast_nullable_to_non_nullable
              as MaintenanceDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlockedDetailsModelCopyWith<$Res>? get blockedDetails {
    if (_value.blockedDetails == null) {
      return null;
    }

    return $BlockedDetailsModelCopyWith<$Res>(_value.blockedDetails!, (value) {
      return _then(_value.copyWith(blockedDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaintenanceDetailsModelCopyWith<$Res>? get maintenanceDetails {
    if (_value.maintenanceDetails == null) {
      return null;
    }

    return $MaintenanceDetailsModelCopyWith<$Res>(_value.maintenanceDetails!,
        (value) {
      return _then(_value.copyWith(maintenanceDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlockedModelImplCopyWith<$Res>
    implements $BlockedModelCopyWith<$Res> {
  factory _$$BlockedModelImplCopyWith(
          _$BlockedModelImpl value, $Res Function(_$BlockedModelImpl) then) =
      __$$BlockedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      BlockedDetailsModel? blockedDetails,
      MaintenanceDetailsModel? maintenanceDetails});

  @override
  $BlockedDetailsModelCopyWith<$Res>? get blockedDetails;
  @override
  $MaintenanceDetailsModelCopyWith<$Res>? get maintenanceDetails;
}

/// @nodoc
class __$$BlockedModelImplCopyWithImpl<$Res>
    extends _$BlockedModelCopyWithImpl<$Res, _$BlockedModelImpl>
    implements _$$BlockedModelImplCopyWith<$Res> {
  __$$BlockedModelImplCopyWithImpl(
      _$BlockedModelImpl _value, $Res Function(_$BlockedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? blockedDetails = freezed,
    Object? maintenanceDetails = freezed,
  }) {
    return _then(_$BlockedModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      blockedDetails: freezed == blockedDetails
          ? _value.blockedDetails
          : blockedDetails // ignore: cast_nullable_to_non_nullable
              as BlockedDetailsModel?,
      maintenanceDetails: freezed == maintenanceDetails
          ? _value.maintenanceDetails
          : maintenanceDetails // ignore: cast_nullable_to_non_nullable
              as MaintenanceDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockedModelImpl implements _BlockedModel {
  const _$BlockedModelImpl(
      {required this.type, this.blockedDetails, this.maintenanceDetails});

  factory _$BlockedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockedModelImplFromJson(json);

  @override
  final String type;
  @override
  final BlockedDetailsModel? blockedDetails;
  @override
  final MaintenanceDetailsModel? maintenanceDetails;

  @override
  String toString() {
    return 'BlockedModel(type: $type, blockedDetails: $blockedDetails, maintenanceDetails: $maintenanceDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockedModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.blockedDetails, blockedDetails) ||
                other.blockedDetails == blockedDetails) &&
            (identical(other.maintenanceDetails, maintenanceDetails) ||
                other.maintenanceDetails == maintenanceDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, blockedDetails, maintenanceDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockedModelImplCopyWith<_$BlockedModelImpl> get copyWith =>
      __$$BlockedModelImplCopyWithImpl<_$BlockedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockedModelImplToJson(
      this,
    );
  }
}

abstract class _BlockedModel implements BlockedModel {
  const factory _BlockedModel(
      {required final String type,
      final BlockedDetailsModel? blockedDetails,
      final MaintenanceDetailsModel? maintenanceDetails}) = _$BlockedModelImpl;

  factory _BlockedModel.fromJson(Map<String, dynamic> json) =
      _$BlockedModelImpl.fromJson;

  @override
  String get type;
  @override
  BlockedDetailsModel? get blockedDetails;
  @override
  MaintenanceDetailsModel? get maintenanceDetails;
  @override
  @JsonKey(ignore: true)
  _$$BlockedModelImplCopyWith<_$BlockedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockedDetailsModel _$BlockedDetailsModelFromJson(Map<String, dynamic> json) {
  return _BlockedDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BlockedDetailsModel {
  bool get eternal => throw _privateConstructorUsedError;
  String? get startDateTime => throw _privateConstructorUsedError;
  String? get endDateTime => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockedDetailsModelCopyWith<BlockedDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedDetailsModelCopyWith<$Res> {
  factory $BlockedDetailsModelCopyWith(
          BlockedDetailsModel value, $Res Function(BlockedDetailsModel) then) =
      _$BlockedDetailsModelCopyWithImpl<$Res, BlockedDetailsModel>;
  @useResult
  $Res call(
      {bool eternal,
      String? startDateTime,
      String? endDateTime,
      String? reason});
}

/// @nodoc
class _$BlockedDetailsModelCopyWithImpl<$Res, $Val extends BlockedDetailsModel>
    implements $BlockedDetailsModelCopyWith<$Res> {
  _$BlockedDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eternal = null,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      eternal: null == eternal
          ? _value.eternal
          : eternal // ignore: cast_nullable_to_non_nullable
              as bool,
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockedDetailsModelImplCopyWith<$Res>
    implements $BlockedDetailsModelCopyWith<$Res> {
  factory _$$BlockedDetailsModelImplCopyWith(_$BlockedDetailsModelImpl value,
          $Res Function(_$BlockedDetailsModelImpl) then) =
      __$$BlockedDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool eternal,
      String? startDateTime,
      String? endDateTime,
      String? reason});
}

/// @nodoc
class __$$BlockedDetailsModelImplCopyWithImpl<$Res>
    extends _$BlockedDetailsModelCopyWithImpl<$Res, _$BlockedDetailsModelImpl>
    implements _$$BlockedDetailsModelImplCopyWith<$Res> {
  __$$BlockedDetailsModelImplCopyWithImpl(_$BlockedDetailsModelImpl _value,
      $Res Function(_$BlockedDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eternal = null,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$BlockedDetailsModelImpl(
      eternal: null == eternal
          ? _value.eternal
          : eternal // ignore: cast_nullable_to_non_nullable
              as bool,
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockedDetailsModelImpl implements _BlockedDetailsModel {
  const _$BlockedDetailsModelImpl(
      {required this.eternal,
      this.startDateTime,
      this.endDateTime,
      this.reason});

  factory _$BlockedDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockedDetailsModelImplFromJson(json);

  @override
  final bool eternal;
  @override
  final String? startDateTime;
  @override
  final String? endDateTime;
  @override
  final String? reason;

  @override
  String toString() {
    return 'BlockedDetailsModel(eternal: $eternal, startDateTime: $startDateTime, endDateTime: $endDateTime, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockedDetailsModelImpl &&
            (identical(other.eternal, eternal) || other.eternal == eternal) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eternal, startDateTime, endDateTime, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockedDetailsModelImplCopyWith<_$BlockedDetailsModelImpl> get copyWith =>
      __$$BlockedDetailsModelImplCopyWithImpl<_$BlockedDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockedDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BlockedDetailsModel implements BlockedDetailsModel {
  const factory _BlockedDetailsModel(
      {required final bool eternal,
      final String? startDateTime,
      final String? endDateTime,
      final String? reason}) = _$BlockedDetailsModelImpl;

  factory _BlockedDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BlockedDetailsModelImpl.fromJson;

  @override
  bool get eternal;
  @override
  String? get startDateTime;
  @override
  String? get endDateTime;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$BlockedDetailsModelImplCopyWith<_$BlockedDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MaintenanceDetailsModel _$MaintenanceDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceDetailsModel {
  String get startDateTime => throw _privateConstructorUsedError;
  String get endDateTime => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaintenanceDetailsModelCopyWith<MaintenanceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceDetailsModelCopyWith<$Res> {
  factory $MaintenanceDetailsModelCopyWith(MaintenanceDetailsModel value,
          $Res Function(MaintenanceDetailsModel) then) =
      _$MaintenanceDetailsModelCopyWithImpl<$Res, MaintenanceDetailsModel>;
  @useResult
  $Res call({String startDateTime, String endDateTime, String message});
}

/// @nodoc
class _$MaintenanceDetailsModelCopyWithImpl<$Res,
        $Val extends MaintenanceDetailsModel>
    implements $MaintenanceDetailsModelCopyWith<$Res> {
  _$MaintenanceDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceDetailsModelImplCopyWith<$Res>
    implements $MaintenanceDetailsModelCopyWith<$Res> {
  factory _$$MaintenanceDetailsModelImplCopyWith(
          _$MaintenanceDetailsModelImpl value,
          $Res Function(_$MaintenanceDetailsModelImpl) then) =
      __$$MaintenanceDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDateTime, String endDateTime, String message});
}

/// @nodoc
class __$$MaintenanceDetailsModelImplCopyWithImpl<$Res>
    extends _$MaintenanceDetailsModelCopyWithImpl<$Res,
        _$MaintenanceDetailsModelImpl>
    implements _$$MaintenanceDetailsModelImplCopyWith<$Res> {
  __$$MaintenanceDetailsModelImplCopyWithImpl(
      _$MaintenanceDetailsModelImpl _value,
      $Res Function(_$MaintenanceDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? message = null,
  }) {
    return _then(_$MaintenanceDetailsModelImpl(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceDetailsModelImpl implements _MaintenanceDetailsModel {
  const _$MaintenanceDetailsModelImpl(
      {required this.startDateTime,
      required this.endDateTime,
      required this.message});

  factory _$MaintenanceDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceDetailsModelImplFromJson(json);

  @override
  final String startDateTime;
  @override
  final String endDateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'MaintenanceDetailsModel(startDateTime: $startDateTime, endDateTime: $endDateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceDetailsModelImpl &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDateTime, endDateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceDetailsModelImplCopyWith<_$MaintenanceDetailsModelImpl>
      get copyWith => __$$MaintenanceDetailsModelImplCopyWithImpl<
          _$MaintenanceDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceDetailsModel implements MaintenanceDetailsModel {
  const factory _MaintenanceDetailsModel(
      {required final String startDateTime,
      required final String endDateTime,
      required final String message}) = _$MaintenanceDetailsModelImpl;

  factory _MaintenanceDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MaintenanceDetailsModelImpl.fromJson;

  @override
  String get startDateTime;
  @override
  String get endDateTime;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceDetailsModelImplCopyWith<_$MaintenanceDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
