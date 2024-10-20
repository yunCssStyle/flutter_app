// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attack_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttackHistoryModel _$AttackHistoryModelFromJson(Map<String, dynamic> json) {
  return _AttackHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$AttackHistoryModel {
  List<AttackHistoryListModel> get attackHistories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackHistoryModelCopyWith<AttackHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackHistoryModelCopyWith<$Res> {
  factory $AttackHistoryModelCopyWith(
          AttackHistoryModel value, $Res Function(AttackHistoryModel) then) =
      _$AttackHistoryModelCopyWithImpl<$Res, AttackHistoryModel>;
  @useResult
  $Res call({List<AttackHistoryListModel> attackHistories});
}

/// @nodoc
class _$AttackHistoryModelCopyWithImpl<$Res, $Val extends AttackHistoryModel>
    implements $AttackHistoryModelCopyWith<$Res> {
  _$AttackHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackHistories = null,
  }) {
    return _then(_value.copyWith(
      attackHistories: null == attackHistories
          ? _value.attackHistories
          : attackHistories // ignore: cast_nullable_to_non_nullable
              as List<AttackHistoryListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackHistoryModelImplCopyWith<$Res>
    implements $AttackHistoryModelCopyWith<$Res> {
  factory _$$AttackHistoryModelImplCopyWith(_$AttackHistoryModelImpl value,
          $Res Function(_$AttackHistoryModelImpl) then) =
      __$$AttackHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AttackHistoryListModel> attackHistories});
}

/// @nodoc
class __$$AttackHistoryModelImplCopyWithImpl<$Res>
    extends _$AttackHistoryModelCopyWithImpl<$Res, _$AttackHistoryModelImpl>
    implements _$$AttackHistoryModelImplCopyWith<$Res> {
  __$$AttackHistoryModelImplCopyWithImpl(_$AttackHistoryModelImpl _value,
      $Res Function(_$AttackHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackHistories = null,
  }) {
    return _then(_$AttackHistoryModelImpl(
      attackHistories: null == attackHistories
          ? _value._attackHistories
          : attackHistories // ignore: cast_nullable_to_non_nullable
              as List<AttackHistoryListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackHistoryModelImpl implements _AttackHistoryModel {
  const _$AttackHistoryModelImpl(
      {required final List<AttackHistoryListModel> attackHistories})
      : _attackHistories = attackHistories;

  factory _$AttackHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackHistoryModelImplFromJson(json);

  final List<AttackHistoryListModel> _attackHistories;
  @override
  List<AttackHistoryListModel> get attackHistories {
    if (_attackHistories is EqualUnmodifiableListView) return _attackHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attackHistories);
  }

  @override
  String toString() {
    return 'AttackHistoryModel(attackHistories: $attackHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackHistoryModelImpl &&
            const DeepCollectionEquality()
                .equals(other._attackHistories, _attackHistories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attackHistories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackHistoryModelImplCopyWith<_$AttackHistoryModelImpl> get copyWith =>
      __$$AttackHistoryModelImplCopyWithImpl<_$AttackHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _AttackHistoryModel implements AttackHistoryModel {
  const factory _AttackHistoryModel(
          {required final List<AttackHistoryListModel> attackHistories}) =
      _$AttackHistoryModelImpl;

  factory _AttackHistoryModel.fromJson(Map<String, dynamic> json) =
      _$AttackHistoryModelImpl.fromJson;

  @override
  List<AttackHistoryListModel> get attackHistories;
  @override
  @JsonKey(ignore: true)
  _$$AttackHistoryModelImplCopyWith<_$AttackHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttackHistoryListModel _$AttackHistoryListModelFromJson(
    Map<String, dynamic> json) {
  return _AttackHistoryListModel.fromJson(json);
}

/// @nodoc
mixin _$AttackHistoryListModel {
  int get attackedTime => throw _privateConstructorUsedError;
  String? get targetNickname => throw _privateConstructorUsedError;
  ProfileModel get profile => throw _privateConstructorUsedError;
  int get totalRound => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  double get gained => throw _privateConstructorUsedError;
  double get lootingFee => throw _privateConstructorUsedError;
  double get jackpotFund => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackHistoryListModelCopyWith<AttackHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackHistoryListModelCopyWith<$Res> {
  factory $AttackHistoryListModelCopyWith(AttackHistoryListModel value,
          $Res Function(AttackHistoryListModel) then) =
      _$AttackHistoryListModelCopyWithImpl<$Res, AttackHistoryListModel>;
  @useResult
  $Res call(
      {int attackedTime,
      String? targetNickname,
      ProfileModel profile,
      int totalRound,
      int round,
      String result,
      double gained,
      double lootingFee,
      double jackpotFund});

  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$AttackHistoryListModelCopyWithImpl<$Res,
        $Val extends AttackHistoryListModel>
    implements $AttackHistoryListModelCopyWith<$Res> {
  _$AttackHistoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackedTime = null,
    Object? targetNickname = freezed,
    Object? profile = null,
    Object? totalRound = null,
    Object? round = null,
    Object? result = null,
    Object? gained = null,
    Object? lootingFee = null,
    Object? jackpotFund = null,
  }) {
    return _then(_value.copyWith(
      attackedTime: null == attackedTime
          ? _value.attackedTime
          : attackedTime // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: freezed == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      gained: null == gained
          ? _value.gained
          : gained // ignore: cast_nullable_to_non_nullable
              as double,
      lootingFee: null == lootingFee
          ? _value.lootingFee
          : lootingFee // ignore: cast_nullable_to_non_nullable
              as double,
      jackpotFund: null == jackpotFund
          ? _value.jackpotFund
          : jackpotFund // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
abstract class _$$AttackHistoryListModelImplCopyWith<$Res>
    implements $AttackHistoryListModelCopyWith<$Res> {
  factory _$$AttackHistoryListModelImplCopyWith(
          _$AttackHistoryListModelImpl value,
          $Res Function(_$AttackHistoryListModelImpl) then) =
      __$$AttackHistoryListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int attackedTime,
      String? targetNickname,
      ProfileModel profile,
      int totalRound,
      int round,
      String result,
      double gained,
      double lootingFee,
      double jackpotFund});

  @override
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AttackHistoryListModelImplCopyWithImpl<$Res>
    extends _$AttackHistoryListModelCopyWithImpl<$Res,
        _$AttackHistoryListModelImpl>
    implements _$$AttackHistoryListModelImplCopyWith<$Res> {
  __$$AttackHistoryListModelImplCopyWithImpl(
      _$AttackHistoryListModelImpl _value,
      $Res Function(_$AttackHistoryListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attackedTime = null,
    Object? targetNickname = freezed,
    Object? profile = null,
    Object? totalRound = null,
    Object? round = null,
    Object? result = null,
    Object? gained = null,
    Object? lootingFee = null,
    Object? jackpotFund = null,
  }) {
    return _then(_$AttackHistoryListModelImpl(
      attackedTime: null == attackedTime
          ? _value.attackedTime
          : attackedTime // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: freezed == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      gained: null == gained
          ? _value.gained
          : gained // ignore: cast_nullable_to_non_nullable
              as double,
      lootingFee: null == lootingFee
          ? _value.lootingFee
          : lootingFee // ignore: cast_nullable_to_non_nullable
              as double,
      jackpotFund: null == jackpotFund
          ? _value.jackpotFund
          : jackpotFund // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackHistoryListModelImpl implements _AttackHistoryListModel {
  const _$AttackHistoryListModelImpl(
      {required this.attackedTime,
      this.targetNickname,
      required this.profile,
      required this.totalRound,
      required this.round,
      required this.result,
      required this.gained,
      required this.lootingFee,
      required this.jackpotFund});

  factory _$AttackHistoryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackHistoryListModelImplFromJson(json);

  @override
  final int attackedTime;
  @override
  final String? targetNickname;
  @override
  final ProfileModel profile;
  @override
  final int totalRound;
  @override
  final int round;
  @override
  final String result;
  @override
  final double gained;
  @override
  final double lootingFee;
  @override
  final double jackpotFund;

  @override
  String toString() {
    return 'AttackHistoryListModel(attackedTime: $attackedTime, targetNickname: $targetNickname, profile: $profile, totalRound: $totalRound, round: $round, result: $result, gained: $gained, lootingFee: $lootingFee, jackpotFund: $jackpotFund)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackHistoryListModelImpl &&
            (identical(other.attackedTime, attackedTime) ||
                other.attackedTime == attackedTime) &&
            (identical(other.targetNickname, targetNickname) ||
                other.targetNickname == targetNickname) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.totalRound, totalRound) ||
                other.totalRound == totalRound) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.gained, gained) || other.gained == gained) &&
            (identical(other.lootingFee, lootingFee) ||
                other.lootingFee == lootingFee) &&
            (identical(other.jackpotFund, jackpotFund) ||
                other.jackpotFund == jackpotFund));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attackedTime, targetNickname,
      profile, totalRound, round, result, gained, lootingFee, jackpotFund);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackHistoryListModelImplCopyWith<_$AttackHistoryListModelImpl>
      get copyWith => __$$AttackHistoryListModelImplCopyWithImpl<
          _$AttackHistoryListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackHistoryListModelImplToJson(
      this,
    );
  }
}

abstract class _AttackHistoryListModel implements AttackHistoryListModel {
  const factory _AttackHistoryListModel(
      {required final int attackedTime,
      final String? targetNickname,
      required final ProfileModel profile,
      required final int totalRound,
      required final int round,
      required final String result,
      required final double gained,
      required final double lootingFee,
      required final double jackpotFund}) = _$AttackHistoryListModelImpl;

  factory _AttackHistoryListModel.fromJson(Map<String, dynamic> json) =
      _$AttackHistoryListModelImpl.fromJson;

  @override
  int get attackedTime;
  @override
  String? get targetNickname;
  @override
  ProfileModel get profile;
  @override
  int get totalRound;
  @override
  int get round;
  @override
  String get result;
  @override
  double get gained;
  @override
  double get lootingFee;
  @override
  double get jackpotFund;
  @override
  @JsonKey(ignore: true)
  _$$AttackHistoryListModelImplCopyWith<_$AttackHistoryListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
