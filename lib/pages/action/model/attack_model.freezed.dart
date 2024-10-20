// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttackModel _$AttackModelFromJson(Map<String, dynamic> json) {
  return _AttackModel.fromJson(json);
}

/// @nodoc
mixin _$AttackModel {
  int get attackId => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  int get totalRound => throw _privateConstructorUsedError;
  num get roundProfit => throw _privateConstructorUsedError;
  int get chooseTime => throw _privateConstructorUsedError;
  List<AttackListModel> get weapons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackModelCopyWith<AttackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackModelCopyWith<$Res> {
  factory $AttackModelCopyWith(
          AttackModel value, $Res Function(AttackModel) then) =
      _$AttackModelCopyWithImpl<$Res, AttackModel>;
  @useResult
  $Res call(
      {int attackId,
      int round,
      int totalRound,
      num roundProfit,
      int chooseTime,
      List<AttackListModel> weapons});
}

/// @nodoc
class _$AttackModelCopyWithImpl<$Res, $Val extends AttackModel>
    implements $AttackModelCopyWith<$Res> {
  _$AttackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackId = null,
    Object? round = null,
    Object? totalRound = null,
    Object? roundProfit = null,
    Object? chooseTime = null,
    Object? weapons = null,
  }) {
    return _then(_value.copyWith(
      attackId: null == attackId
          ? _value.attackId
          : attackId // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      roundProfit: null == roundProfit
          ? _value.roundProfit
          : roundProfit // ignore: cast_nullable_to_non_nullable
              as num,
      chooseTime: null == chooseTime
          ? _value.chooseTime
          : chooseTime // ignore: cast_nullable_to_non_nullable
              as int,
      weapons: null == weapons
          ? _value.weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<AttackListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackModelImplCopyWith<$Res>
    implements $AttackModelCopyWith<$Res> {
  factory _$$AttackModelImplCopyWith(
          _$AttackModelImpl value, $Res Function(_$AttackModelImpl) then) =
      __$$AttackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int attackId,
      int round,
      int totalRound,
      num roundProfit,
      int chooseTime,
      List<AttackListModel> weapons});
}

/// @nodoc
class __$$AttackModelImplCopyWithImpl<$Res>
    extends _$AttackModelCopyWithImpl<$Res, _$AttackModelImpl>
    implements _$$AttackModelImplCopyWith<$Res> {
  __$$AttackModelImplCopyWithImpl(
      _$AttackModelImpl _value, $Res Function(_$AttackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackId = null,
    Object? round = null,
    Object? totalRound = null,
    Object? roundProfit = null,
    Object? chooseTime = null,
    Object? weapons = null,
  }) {
    return _then(_$AttackModelImpl(
      attackId: null == attackId
          ? _value.attackId
          : attackId // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      roundProfit: null == roundProfit
          ? _value.roundProfit
          : roundProfit // ignore: cast_nullable_to_non_nullable
              as num,
      chooseTime: null == chooseTime
          ? _value.chooseTime
          : chooseTime // ignore: cast_nullable_to_non_nullable
              as int,
      weapons: null == weapons
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<AttackListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackModelImpl implements _AttackModel {
  const _$AttackModelImpl(
      {required this.attackId,
      required this.round,
      required this.totalRound,
      required this.roundProfit,
      required this.chooseTime,
      required final List<AttackListModel> weapons})
      : _weapons = weapons;

  factory _$AttackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackModelImplFromJson(json);

  @override
  final int attackId;
  @override
  final int round;
  @override
  final int totalRound;
  @override
  final num roundProfit;
  @override
  final int chooseTime;
  final List<AttackListModel> _weapons;
  @override
  List<AttackListModel> get weapons {
    if (_weapons is EqualUnmodifiableListView) return _weapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weapons);
  }

  @override
  String toString() {
    return 'AttackModel(attackId: $attackId, round: $round, totalRound: $totalRound, roundProfit: $roundProfit, chooseTime: $chooseTime, weapons: $weapons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackModelImpl &&
            (identical(other.attackId, attackId) ||
                other.attackId == attackId) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.totalRound, totalRound) ||
                other.totalRound == totalRound) &&
            (identical(other.roundProfit, roundProfit) ||
                other.roundProfit == roundProfit) &&
            (identical(other.chooseTime, chooseTime) ||
                other.chooseTime == chooseTime) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attackId, round, totalRound,
      roundProfit, chooseTime, const DeepCollectionEquality().hash(_weapons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackModelImplCopyWith<_$AttackModelImpl> get copyWith =>
      __$$AttackModelImplCopyWithImpl<_$AttackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackModelImplToJson(
      this,
    );
  }
}

abstract class _AttackModel implements AttackModel {
  const factory _AttackModel(
      {required final int attackId,
      required final int round,
      required final int totalRound,
      required final num roundProfit,
      required final int chooseTime,
      required final List<AttackListModel> weapons}) = _$AttackModelImpl;

  factory _AttackModel.fromJson(Map<String, dynamic> json) =
      _$AttackModelImpl.fromJson;

  @override
  int get attackId;
  @override
  int get round;
  @override
  int get totalRound;
  @override
  num get roundProfit;
  @override
  int get chooseTime;
  @override
  List<AttackListModel> get weapons;
  @override
  @JsonKey(ignore: true)
  _$$AttackModelImplCopyWith<_$AttackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttackListModel _$AttackListModelFromJson(Map<String, dynamic> json) {
  return _AttackListModel.fromJson(json);
}

/// @nodoc
mixin _$AttackListModel {
  int get weaponId => throw _privateConstructorUsedError;
  String get statEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackListModelCopyWith<AttackListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackListModelCopyWith<$Res> {
  factory $AttackListModelCopyWith(
          AttackListModel value, $Res Function(AttackListModel) then) =
      _$AttackListModelCopyWithImpl<$Res, AttackListModel>;
  @useResult
  $Res call({int weaponId, String statEvent});
}

/// @nodoc
class _$AttackListModelCopyWithImpl<$Res, $Val extends AttackListModel>
    implements $AttackListModelCopyWith<$Res> {
  _$AttackListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaponId = null,
    Object? statEvent = null,
  }) {
    return _then(_value.copyWith(
      weaponId: null == weaponId
          ? _value.weaponId
          : weaponId // ignore: cast_nullable_to_non_nullable
              as int,
      statEvent: null == statEvent
          ? _value.statEvent
          : statEvent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackListModelImplCopyWith<$Res>
    implements $AttackListModelCopyWith<$Res> {
  factory _$$AttackListModelImplCopyWith(_$AttackListModelImpl value,
          $Res Function(_$AttackListModelImpl) then) =
      __$$AttackListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weaponId, String statEvent});
}

/// @nodoc
class __$$AttackListModelImplCopyWithImpl<$Res>
    extends _$AttackListModelCopyWithImpl<$Res, _$AttackListModelImpl>
    implements _$$AttackListModelImplCopyWith<$Res> {
  __$$AttackListModelImplCopyWithImpl(
      _$AttackListModelImpl _value, $Res Function(_$AttackListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaponId = null,
    Object? statEvent = null,
  }) {
    return _then(_$AttackListModelImpl(
      weaponId: null == weaponId
          ? _value.weaponId
          : weaponId // ignore: cast_nullable_to_non_nullable
              as int,
      statEvent: null == statEvent
          ? _value.statEvent
          : statEvent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackListModelImpl implements _AttackListModel {
  const _$AttackListModelImpl(
      {required this.weaponId, required this.statEvent});

  factory _$AttackListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackListModelImplFromJson(json);

  @override
  final int weaponId;
  @override
  final String statEvent;

  @override
  String toString() {
    return 'AttackListModel(weaponId: $weaponId, statEvent: $statEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackListModelImpl &&
            (identical(other.weaponId, weaponId) ||
                other.weaponId == weaponId) &&
            (identical(other.statEvent, statEvent) ||
                other.statEvent == statEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weaponId, statEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackListModelImplCopyWith<_$AttackListModelImpl> get copyWith =>
      __$$AttackListModelImplCopyWithImpl<_$AttackListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackListModelImplToJson(
      this,
    );
  }
}

abstract class _AttackListModel implements AttackListModel {
  const factory _AttackListModel(
      {required final int weaponId,
      required final String statEvent}) = _$AttackListModelImpl;

  factory _AttackListModel.fromJson(Map<String, dynamic> json) =
      _$AttackListModelImpl.fromJson;

  @override
  int get weaponId;
  @override
  String get statEvent;
  @override
  @JsonKey(ignore: true)
  _$$AttackListModelImplCopyWith<_$AttackListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetIdModel _$TargetIdModelFromJson(Map<String, dynamic> json) {
  return _TargetIdModel.fromJson(json);
}

/// @nodoc
mixin _$TargetIdModel {
  int get targetId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetIdModelCopyWith<TargetIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetIdModelCopyWith<$Res> {
  factory $TargetIdModelCopyWith(
          TargetIdModel value, $Res Function(TargetIdModel) then) =
      _$TargetIdModelCopyWithImpl<$Res, TargetIdModel>;
  @useResult
  $Res call({int targetId});
}

/// @nodoc
class _$TargetIdModelCopyWithImpl<$Res, $Val extends TargetIdModel>
    implements $TargetIdModelCopyWith<$Res> {
  _$TargetIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetId = null,
  }) {
    return _then(_value.copyWith(
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetIdModelImplCopyWith<$Res>
    implements $TargetIdModelCopyWith<$Res> {
  factory _$$TargetIdModelImplCopyWith(
          _$TargetIdModelImpl value, $Res Function(_$TargetIdModelImpl) then) =
      __$$TargetIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int targetId});
}

/// @nodoc
class __$$TargetIdModelImplCopyWithImpl<$Res>
    extends _$TargetIdModelCopyWithImpl<$Res, _$TargetIdModelImpl>
    implements _$$TargetIdModelImplCopyWith<$Res> {
  __$$TargetIdModelImplCopyWithImpl(
      _$TargetIdModelImpl _value, $Res Function(_$TargetIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetId = null,
  }) {
    return _then(_$TargetIdModelImpl(
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetIdModelImpl implements _TargetIdModel {
  const _$TargetIdModelImpl({required this.targetId});

  factory _$TargetIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetIdModelImplFromJson(json);

  @override
  final int targetId;

  @override
  String toString() {
    return 'TargetIdModel(targetId: $targetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetIdModelImpl &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetIdModelImplCopyWith<_$TargetIdModelImpl> get copyWith =>
      __$$TargetIdModelImplCopyWithImpl<_$TargetIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetIdModelImplToJson(
      this,
    );
  }
}

abstract class _TargetIdModel implements TargetIdModel {
  const factory _TargetIdModel({required final int targetId}) =
      _$TargetIdModelImpl;

  factory _TargetIdModel.fromJson(Map<String, dynamic> json) =
      _$TargetIdModelImpl.fromJson;

  @override
  int get targetId;
  @override
  @JsonKey(ignore: true)
  _$$TargetIdModelImplCopyWith<_$TargetIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttackIdModel _$AttackIdModelFromJson(Map<String, dynamic> json) {
  return _AttackIdModel.fromJson(json);
}

/// @nodoc
mixin _$AttackIdModel {
  int get attackId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackIdModelCopyWith<AttackIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackIdModelCopyWith<$Res> {
  factory $AttackIdModelCopyWith(
          AttackIdModel value, $Res Function(AttackIdModel) then) =
      _$AttackIdModelCopyWithImpl<$Res, AttackIdModel>;
  @useResult
  $Res call({int attackId});
}

/// @nodoc
class _$AttackIdModelCopyWithImpl<$Res, $Val extends AttackIdModel>
    implements $AttackIdModelCopyWith<$Res> {
  _$AttackIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackId = null,
  }) {
    return _then(_value.copyWith(
      attackId: null == attackId
          ? _value.attackId
          : attackId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackIdModelImplCopyWith<$Res>
    implements $AttackIdModelCopyWith<$Res> {
  factory _$$AttackIdModelImplCopyWith(
          _$AttackIdModelImpl value, $Res Function(_$AttackIdModelImpl) then) =
      __$$AttackIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int attackId});
}

/// @nodoc
class __$$AttackIdModelImplCopyWithImpl<$Res>
    extends _$AttackIdModelCopyWithImpl<$Res, _$AttackIdModelImpl>
    implements _$$AttackIdModelImplCopyWith<$Res> {
  __$$AttackIdModelImplCopyWithImpl(
      _$AttackIdModelImpl _value, $Res Function(_$AttackIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackId = null,
  }) {
    return _then(_$AttackIdModelImpl(
      attackId: null == attackId
          ? _value.attackId
          : attackId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackIdModelImpl implements _AttackIdModel {
  const _$AttackIdModelImpl({required this.attackId});

  factory _$AttackIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackIdModelImplFromJson(json);

  @override
  final int attackId;

  @override
  String toString() {
    return 'AttackIdModel(attackId: $attackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackIdModelImpl &&
            (identical(other.attackId, attackId) ||
                other.attackId == attackId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attackId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackIdModelImplCopyWith<_$AttackIdModelImpl> get copyWith =>
      __$$AttackIdModelImplCopyWithImpl<_$AttackIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackIdModelImplToJson(
      this,
    );
  }
}

abstract class _AttackIdModel implements AttackIdModel {
  const factory _AttackIdModel({required final int attackId}) =
      _$AttackIdModelImpl;

  factory _AttackIdModel.fromJson(Map<String, dynamic> json) =
      _$AttackIdModelImpl.fromJson;

  @override
  int get attackId;
  @override
  @JsonKey(ignore: true)
  _$$AttackIdModelImplCopyWith<_$AttackIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
