// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActionModel _$ActionModelFromJson(Map<String, dynamic> json) {
  return _ActionModel.fromJson(json);
}

/// @nodoc
mixin _$ActionModel {
  bool get free => throw _privateConstructorUsedError;
  num get miningPower => throw _privateConstructorUsedError;
  int get revengeTargetCount => throw _privateConstructorUsedError;
  bool get inspection => throw _privateConstructorUsedError;
  List<ActionListModel>? get zones => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionModelCopyWith<ActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionModelCopyWith<$Res> {
  factory $ActionModelCopyWith(
          ActionModel value, $Res Function(ActionModel) then) =
      _$ActionModelCopyWithImpl<$Res, ActionModel>;
  @useResult
  $Res call(
      {bool free,
      num miningPower,
      int revengeTargetCount,
      bool inspection,
      List<ActionListModel>? zones});
}

/// @nodoc
class _$ActionModelCopyWithImpl<$Res, $Val extends ActionModel>
    implements $ActionModelCopyWith<$Res> {
  _$ActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? free = null,
    Object? miningPower = null,
    Object? revengeTargetCount = null,
    Object? inspection = null,
    Object? zones = freezed,
  }) {
    return _then(_value.copyWith(
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as num,
      revengeTargetCount: null == revengeTargetCount
          ? _value.revengeTargetCount
          : revengeTargetCount // ignore: cast_nullable_to_non_nullable
              as int,
      inspection: null == inspection
          ? _value.inspection
          : inspection // ignore: cast_nullable_to_non_nullable
              as bool,
      zones: freezed == zones
          ? _value.zones
          : zones // ignore: cast_nullable_to_non_nullable
              as List<ActionListModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionModelImplCopyWith<$Res>
    implements $ActionModelCopyWith<$Res> {
  factory _$$ActionModelImplCopyWith(
          _$ActionModelImpl value, $Res Function(_$ActionModelImpl) then) =
      __$$ActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool free,
      num miningPower,
      int revengeTargetCount,
      bool inspection,
      List<ActionListModel>? zones});
}

/// @nodoc
class __$$ActionModelImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$ActionModelImpl>
    implements _$$ActionModelImplCopyWith<$Res> {
  __$$ActionModelImplCopyWithImpl(
      _$ActionModelImpl _value, $Res Function(_$ActionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? free = null,
    Object? miningPower = null,
    Object? revengeTargetCount = null,
    Object? inspection = null,
    Object? zones = freezed,
  }) {
    return _then(_$ActionModelImpl(
      free: null == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as num,
      revengeTargetCount: null == revengeTargetCount
          ? _value.revengeTargetCount
          : revengeTargetCount // ignore: cast_nullable_to_non_nullable
              as int,
      inspection: null == inspection
          ? _value.inspection
          : inspection // ignore: cast_nullable_to_non_nullable
              as bool,
      zones: freezed == zones
          ? _value._zones
          : zones // ignore: cast_nullable_to_non_nullable
              as List<ActionListModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionModelImpl implements _ActionModel {
  const _$ActionModelImpl(
      {required this.free,
      required this.miningPower,
      required this.revengeTargetCount,
      required this.inspection,
      final List<ActionListModel>? zones})
      : _zones = zones;

  factory _$ActionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionModelImplFromJson(json);

  @override
  final bool free;
  @override
  final num miningPower;
  @override
  final int revengeTargetCount;
  @override
  final bool inspection;
  final List<ActionListModel>? _zones;
  @override
  List<ActionListModel>? get zones {
    final value = _zones;
    if (value == null) return null;
    if (_zones is EqualUnmodifiableListView) return _zones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActionModel(free: $free, miningPower: $miningPower, revengeTargetCount: $revengeTargetCount, inspection: $inspection, zones: $zones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionModelImpl &&
            (identical(other.free, free) || other.free == free) &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.revengeTargetCount, revengeTargetCount) ||
                other.revengeTargetCount == revengeTargetCount) &&
            (identical(other.inspection, inspection) ||
                other.inspection == inspection) &&
            const DeepCollectionEquality().equals(other._zones, _zones));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      free,
      miningPower,
      revengeTargetCount,
      inspection,
      const DeepCollectionEquality().hash(_zones));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionModelImplCopyWith<_$ActionModelImpl> get copyWith =>
      __$$ActionModelImplCopyWithImpl<_$ActionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionModelImplToJson(
      this,
    );
  }
}

abstract class _ActionModel implements ActionModel {
  const factory _ActionModel(
      {required final bool free,
      required final num miningPower,
      required final int revengeTargetCount,
      required final bool inspection,
      final List<ActionListModel>? zones}) = _$ActionModelImpl;

  factory _ActionModel.fromJson(Map<String, dynamic> json) =
      _$ActionModelImpl.fromJson;

  @override
  bool get free;
  @override
  num get miningPower;
  @override
  int get revengeTargetCount;
  @override
  bool get inspection;
  @override
  List<ActionListModel>? get zones;
  @override
  @JsonKey(ignore: true)
  _$$ActionModelImplCopyWith<_$ActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionListModel _$ActionListModelFromJson(Map<String, dynamic> json) {
  return _ActionListModel.fromJson(json);
}

/// @nodoc
mixin _$ActionListModel {
  String get zone => throw _privateConstructorUsedError;
  num get huddleMiningPower => throw _privateConstructorUsedError;
  bool get assigned => throw _privateConstructorUsedError;
  num get popRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionListModelCopyWith<ActionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionListModelCopyWith<$Res> {
  factory $ActionListModelCopyWith(
          ActionListModel value, $Res Function(ActionListModel) then) =
      _$ActionListModelCopyWithImpl<$Res, ActionListModel>;
  @useResult
  $Res call({String zone, num huddleMiningPower, bool assigned, num popRate});
}

/// @nodoc
class _$ActionListModelCopyWithImpl<$Res, $Val extends ActionListModel>
    implements $ActionListModelCopyWith<$Res> {
  _$ActionListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zone = null,
    Object? huddleMiningPower = null,
    Object? assigned = null,
    Object? popRate = null,
  }) {
    return _then(_value.copyWith(
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      huddleMiningPower: null == huddleMiningPower
          ? _value.huddleMiningPower
          : huddleMiningPower // ignore: cast_nullable_to_non_nullable
              as num,
      assigned: null == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as bool,
      popRate: null == popRate
          ? _value.popRate
          : popRate // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionListModelImplCopyWith<$Res>
    implements $ActionListModelCopyWith<$Res> {
  factory _$$ActionListModelImplCopyWith(_$ActionListModelImpl value,
          $Res Function(_$ActionListModelImpl) then) =
      __$$ActionListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String zone, num huddleMiningPower, bool assigned, num popRate});
}

/// @nodoc
class __$$ActionListModelImplCopyWithImpl<$Res>
    extends _$ActionListModelCopyWithImpl<$Res, _$ActionListModelImpl>
    implements _$$ActionListModelImplCopyWith<$Res> {
  __$$ActionListModelImplCopyWithImpl(
      _$ActionListModelImpl _value, $Res Function(_$ActionListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zone = null,
    Object? huddleMiningPower = null,
    Object? assigned = null,
    Object? popRate = null,
  }) {
    return _then(_$ActionListModelImpl(
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      huddleMiningPower: null == huddleMiningPower
          ? _value.huddleMiningPower
          : huddleMiningPower // ignore: cast_nullable_to_non_nullable
              as num,
      assigned: null == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as bool,
      popRate: null == popRate
          ? _value.popRate
          : popRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionListModelImpl implements _ActionListModel {
  const _$ActionListModelImpl(
      {required this.zone,
      required this.huddleMiningPower,
      required this.assigned,
      required this.popRate});

  factory _$ActionListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionListModelImplFromJson(json);

  @override
  final String zone;
  @override
  final num huddleMiningPower;
  @override
  final bool assigned;
  @override
  final num popRate;

  @override
  String toString() {
    return 'ActionListModel(zone: $zone, huddleMiningPower: $huddleMiningPower, assigned: $assigned, popRate: $popRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionListModelImpl &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.huddleMiningPower, huddleMiningPower) ||
                other.huddleMiningPower == huddleMiningPower) &&
            (identical(other.assigned, assigned) ||
                other.assigned == assigned) &&
            (identical(other.popRate, popRate) || other.popRate == popRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, zone, huddleMiningPower, assigned, popRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionListModelImplCopyWith<_$ActionListModelImpl> get copyWith =>
      __$$ActionListModelImplCopyWithImpl<_$ActionListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionListModelImplToJson(
      this,
    );
  }
}

abstract class _ActionListModel implements ActionListModel {
  const factory _ActionListModel(
      {required final String zone,
      required final num huddleMiningPower,
      required final bool assigned,
      required final num popRate}) = _$ActionListModelImpl;

  factory _ActionListModel.fromJson(Map<String, dynamic> json) =
      _$ActionListModelImpl.fromJson;

  @override
  String get zone;
  @override
  num get huddleMiningPower;
  @override
  bool get assigned;
  @override
  num get popRate;
  @override
  @JsonKey(ignore: true)
  _$$ActionListModelImplCopyWith<_$ActionListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
