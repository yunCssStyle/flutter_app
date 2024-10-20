// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenge_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RevengeModel _$RevengeModelFromJson(Map<String, dynamic> json) {
  return _RevengeModel.fromJson(json);
}

/// @nodoc
mixin _$RevengeModel {
  List<RevengeListModel> get revengeTargets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevengeModelCopyWith<RevengeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevengeModelCopyWith<$Res> {
  factory $RevengeModelCopyWith(
          RevengeModel value, $Res Function(RevengeModel) then) =
      _$RevengeModelCopyWithImpl<$Res, RevengeModel>;
  @useResult
  $Res call({List<RevengeListModel> revengeTargets});
}

/// @nodoc
class _$RevengeModelCopyWithImpl<$Res, $Val extends RevengeModel>
    implements $RevengeModelCopyWith<$Res> {
  _$RevengeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revengeTargets = null,
  }) {
    return _then(_value.copyWith(
      revengeTargets: null == revengeTargets
          ? _value.revengeTargets
          : revengeTargets // ignore: cast_nullable_to_non_nullable
              as List<RevengeListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevengeModelImplCopyWith<$Res>
    implements $RevengeModelCopyWith<$Res> {
  factory _$$RevengeModelImplCopyWith(
          _$RevengeModelImpl value, $Res Function(_$RevengeModelImpl) then) =
      __$$RevengeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RevengeListModel> revengeTargets});
}

/// @nodoc
class __$$RevengeModelImplCopyWithImpl<$Res>
    extends _$RevengeModelCopyWithImpl<$Res, _$RevengeModelImpl>
    implements _$$RevengeModelImplCopyWith<$Res> {
  __$$RevengeModelImplCopyWithImpl(
      _$RevengeModelImpl _value, $Res Function(_$RevengeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revengeTargets = null,
  }) {
    return _then(_$RevengeModelImpl(
      revengeTargets: null == revengeTargets
          ? _value._revengeTargets
          : revengeTargets // ignore: cast_nullable_to_non_nullable
              as List<RevengeListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevengeModelImpl implements _RevengeModel {
  const _$RevengeModelImpl(
      {required final List<RevengeListModel> revengeTargets})
      : _revengeTargets = revengeTargets;

  factory _$RevengeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevengeModelImplFromJson(json);

  final List<RevengeListModel> _revengeTargets;
  @override
  List<RevengeListModel> get revengeTargets {
    if (_revengeTargets is EqualUnmodifiableListView) return _revengeTargets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revengeTargets);
  }

  @override
  String toString() {
    return 'RevengeModel(revengeTargets: $revengeTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevengeModelImpl &&
            const DeepCollectionEquality()
                .equals(other._revengeTargets, _revengeTargets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_revengeTargets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevengeModelImplCopyWith<_$RevengeModelImpl> get copyWith =>
      __$$RevengeModelImplCopyWithImpl<_$RevengeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevengeModelImplToJson(
      this,
    );
  }
}

abstract class _RevengeModel implements RevengeModel {
  const factory _RevengeModel(
          {required final List<RevengeListModel> revengeTargets}) =
      _$RevengeModelImpl;

  factory _RevengeModel.fromJson(Map<String, dynamic> json) =
      _$RevengeModelImpl.fromJson;

  @override
  List<RevengeListModel> get revengeTargets;
  @override
  @JsonKey(ignore: true)
  _$$RevengeModelImplCopyWith<_$RevengeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RevengeListModel _$RevengeListModelFromJson(Map<String, dynamic> json) {
  return _RevengeListModel.fromJson(json);
}

/// @nodoc
mixin _$RevengeListModel {
  int get refAttackId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  String get targetNickname => throw _privateConstructorUsedError;
  int get totalRound => throw _privateConstructorUsedError;
  double get maxProfit => throw _privateConstructorUsedError;
  double get expectedProfit => throw _privateConstructorUsedError;
  num get revengeExpiredTime => throw _privateConstructorUsedError;
  TargetCostModel get cost => throw _privateConstructorUsedError;
  ProfileModel get profile => throw _privateConstructorUsedError;
  int get statBonus => throw _privateConstructorUsedError;
  bool get isExecute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevengeListModelCopyWith<RevengeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevengeListModelCopyWith<$Res> {
  factory $RevengeListModelCopyWith(
          RevengeListModel value, $Res Function(RevengeListModel) then) =
      _$RevengeListModelCopyWithImpl<$Res, RevengeListModel>;
  @useResult
  $Res call(
      {int refAttackId,
      int targetId,
      String targetNickname,
      int totalRound,
      double maxProfit,
      double expectedProfit,
      num revengeExpiredTime,
      TargetCostModel cost,
      ProfileModel profile,
      int statBonus,
      bool isExecute});

  $TargetCostModelCopyWith<$Res> get cost;
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$RevengeListModelCopyWithImpl<$Res, $Val extends RevengeListModel>
    implements $RevengeListModelCopyWith<$Res> {
  _$RevengeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refAttackId = null,
    Object? targetId = null,
    Object? targetNickname = null,
    Object? totalRound = null,
    Object? maxProfit = null,
    Object? expectedProfit = null,
    Object? revengeExpiredTime = null,
    Object? cost = null,
    Object? profile = null,
    Object? statBonus = null,
    Object? isExecute = null,
  }) {
    return _then(_value.copyWith(
      refAttackId: null == refAttackId
          ? _value.refAttackId
          : refAttackId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      maxProfit: null == maxProfit
          ? _value.maxProfit
          : maxProfit // ignore: cast_nullable_to_non_nullable
              as double,
      expectedProfit: null == expectedProfit
          ? _value.expectedProfit
          : expectedProfit // ignore: cast_nullable_to_non_nullable
              as double,
      revengeExpiredTime: null == revengeExpiredTime
          ? _value.revengeExpiredTime
          : revengeExpiredTime // ignore: cast_nullable_to_non_nullable
              as num,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as TargetCostModel,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      statBonus: null == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as int,
      isExecute: null == isExecute
          ? _value.isExecute
          : isExecute // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TargetCostModelCopyWith<$Res> get cost {
    return $TargetCostModelCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get profile {
    return $ProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RevengeListModelImplCopyWith<$Res>
    implements $RevengeListModelCopyWith<$Res> {
  factory _$$RevengeListModelImplCopyWith(_$RevengeListModelImpl value,
          $Res Function(_$RevengeListModelImpl) then) =
      __$$RevengeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int refAttackId,
      int targetId,
      String targetNickname,
      int totalRound,
      double maxProfit,
      double expectedProfit,
      num revengeExpiredTime,
      TargetCostModel cost,
      ProfileModel profile,
      int statBonus,
      bool isExecute});

  @override
  $TargetCostModelCopyWith<$Res> get cost;
  @override
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$RevengeListModelImplCopyWithImpl<$Res>
    extends _$RevengeListModelCopyWithImpl<$Res, _$RevengeListModelImpl>
    implements _$$RevengeListModelImplCopyWith<$Res> {
  __$$RevengeListModelImplCopyWithImpl(_$RevengeListModelImpl _value,
      $Res Function(_$RevengeListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refAttackId = null,
    Object? targetId = null,
    Object? targetNickname = null,
    Object? totalRound = null,
    Object? maxProfit = null,
    Object? expectedProfit = null,
    Object? revengeExpiredTime = null,
    Object? cost = null,
    Object? profile = null,
    Object? statBonus = null,
    Object? isExecute = null,
  }) {
    return _then(_$RevengeListModelImpl(
      refAttackId: null == refAttackId
          ? _value.refAttackId
          : refAttackId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      maxProfit: null == maxProfit
          ? _value.maxProfit
          : maxProfit // ignore: cast_nullable_to_non_nullable
              as double,
      expectedProfit: null == expectedProfit
          ? _value.expectedProfit
          : expectedProfit // ignore: cast_nullable_to_non_nullable
              as double,
      revengeExpiredTime: null == revengeExpiredTime
          ? _value.revengeExpiredTime
          : revengeExpiredTime // ignore: cast_nullable_to_non_nullable
              as num,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as TargetCostModel,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      statBonus: null == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as int,
      isExecute: null == isExecute
          ? _value.isExecute
          : isExecute // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevengeListModelImpl implements _RevengeListModel {
  const _$RevengeListModelImpl(
      {required this.refAttackId,
      required this.targetId,
      required this.targetNickname,
      required this.totalRound,
      required this.maxProfit,
      required this.expectedProfit,
      required this.revengeExpiredTime,
      required this.cost,
      required this.profile,
      required this.statBonus,
      required this.isExecute});

  factory _$RevengeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevengeListModelImplFromJson(json);

  @override
  final int refAttackId;
  @override
  final int targetId;
  @override
  final String targetNickname;
  @override
  final int totalRound;
  @override
  final double maxProfit;
  @override
  final double expectedProfit;
  @override
  final num revengeExpiredTime;
  @override
  final TargetCostModel cost;
  @override
  final ProfileModel profile;
  @override
  final int statBonus;
  @override
  final bool isExecute;

  @override
  String toString() {
    return 'RevengeListModel(refAttackId: $refAttackId, targetId: $targetId, targetNickname: $targetNickname, totalRound: $totalRound, maxProfit: $maxProfit, expectedProfit: $expectedProfit, revengeExpiredTime: $revengeExpiredTime, cost: $cost, profile: $profile, statBonus: $statBonus, isExecute: $isExecute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevengeListModelImpl &&
            (identical(other.refAttackId, refAttackId) ||
                other.refAttackId == refAttackId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetNickname, targetNickname) ||
                other.targetNickname == targetNickname) &&
            (identical(other.totalRound, totalRound) ||
                other.totalRound == totalRound) &&
            (identical(other.maxProfit, maxProfit) ||
                other.maxProfit == maxProfit) &&
            (identical(other.expectedProfit, expectedProfit) ||
                other.expectedProfit == expectedProfit) &&
            (identical(other.revengeExpiredTime, revengeExpiredTime) ||
                other.revengeExpiredTime == revengeExpiredTime) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.statBonus, statBonus) ||
                other.statBonus == statBonus) &&
            (identical(other.isExecute, isExecute) ||
                other.isExecute == isExecute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      refAttackId,
      targetId,
      targetNickname,
      totalRound,
      maxProfit,
      expectedProfit,
      revengeExpiredTime,
      cost,
      profile,
      statBonus,
      isExecute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevengeListModelImplCopyWith<_$RevengeListModelImpl> get copyWith =>
      __$$RevengeListModelImplCopyWithImpl<_$RevengeListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevengeListModelImplToJson(
      this,
    );
  }
}

abstract class _RevengeListModel implements RevengeListModel {
  const factory _RevengeListModel(
      {required final int refAttackId,
      required final int targetId,
      required final String targetNickname,
      required final int totalRound,
      required final double maxProfit,
      required final double expectedProfit,
      required final num revengeExpiredTime,
      required final TargetCostModel cost,
      required final ProfileModel profile,
      required final int statBonus,
      required final bool isExecute}) = _$RevengeListModelImpl;

  factory _RevengeListModel.fromJson(Map<String, dynamic> json) =
      _$RevengeListModelImpl.fromJson;

  @override
  int get refAttackId;
  @override
  int get targetId;
  @override
  String get targetNickname;
  @override
  int get totalRound;
  @override
  double get maxProfit;
  @override
  double get expectedProfit;
  @override
  num get revengeExpiredTime;
  @override
  TargetCostModel get cost;
  @override
  ProfileModel get profile;
  @override
  int get statBonus;
  @override
  bool get isExecute;
  @override
  @JsonKey(ignore: true)
  _$$RevengeListModelImplCopyWith<_$RevengeListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
