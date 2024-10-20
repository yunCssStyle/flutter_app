// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RankingModel _$RankingModelFromJson(Map<String, dynamic> json) {
  return _RankingModel.fromJson(json);
}

/// @nodoc
mixin _$RankingModel {
  MyRankingModel? get myRanking => throw _privateConstructorUsedError;
  List<MyRankingModel> get rankings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingModelCopyWith<RankingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingModelCopyWith<$Res> {
  factory $RankingModelCopyWith(
          RankingModel value, $Res Function(RankingModel) then) =
      _$RankingModelCopyWithImpl<$Res, RankingModel>;
  @useResult
  $Res call({MyRankingModel? myRanking, List<MyRankingModel> rankings});

  $MyRankingModelCopyWith<$Res>? get myRanking;
}

/// @nodoc
class _$RankingModelCopyWithImpl<$Res, $Val extends RankingModel>
    implements $RankingModelCopyWith<$Res> {
  _$RankingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRanking = freezed,
    Object? rankings = null,
  }) {
    return _then(_value.copyWith(
      myRanking: freezed == myRanking
          ? _value.myRanking
          : myRanking // ignore: cast_nullable_to_non_nullable
              as MyRankingModel?,
      rankings: null == rankings
          ? _value.rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<MyRankingModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyRankingModelCopyWith<$Res>? get myRanking {
    if (_value.myRanking == null) {
      return null;
    }

    return $MyRankingModelCopyWith<$Res>(_value.myRanking!, (value) {
      return _then(_value.copyWith(myRanking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RankingModelImplCopyWith<$Res>
    implements $RankingModelCopyWith<$Res> {
  factory _$$RankingModelImplCopyWith(
          _$RankingModelImpl value, $Res Function(_$RankingModelImpl) then) =
      __$$RankingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyRankingModel? myRanking, List<MyRankingModel> rankings});

  @override
  $MyRankingModelCopyWith<$Res>? get myRanking;
}

/// @nodoc
class __$$RankingModelImplCopyWithImpl<$Res>
    extends _$RankingModelCopyWithImpl<$Res, _$RankingModelImpl>
    implements _$$RankingModelImplCopyWith<$Res> {
  __$$RankingModelImplCopyWithImpl(
      _$RankingModelImpl _value, $Res Function(_$RankingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRanking = freezed,
    Object? rankings = null,
  }) {
    return _then(_$RankingModelImpl(
      myRanking: freezed == myRanking
          ? _value.myRanking
          : myRanking // ignore: cast_nullable_to_non_nullable
              as MyRankingModel?,
      rankings: null == rankings
          ? _value._rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<MyRankingModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingModelImpl implements _RankingModel {
  const _$RankingModelImpl(
      {this.myRanking, required final List<MyRankingModel> rankings})
      : _rankings = rankings;

  factory _$RankingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingModelImplFromJson(json);

  @override
  final MyRankingModel? myRanking;
  final List<MyRankingModel> _rankings;
  @override
  List<MyRankingModel> get rankings {
    if (_rankings is EqualUnmodifiableListView) return _rankings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rankings);
  }

  @override
  String toString() {
    return 'RankingModel(myRanking: $myRanking, rankings: $rankings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingModelImpl &&
            (identical(other.myRanking, myRanking) ||
                other.myRanking == myRanking) &&
            const DeepCollectionEquality().equals(other._rankings, _rankings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, myRanking, const DeepCollectionEquality().hash(_rankings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingModelImplCopyWith<_$RankingModelImpl> get copyWith =>
      __$$RankingModelImplCopyWithImpl<_$RankingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingModelImplToJson(
      this,
    );
  }
}

abstract class _RankingModel implements RankingModel {
  const factory _RankingModel(
      {final MyRankingModel? myRanking,
      required final List<MyRankingModel> rankings}) = _$RankingModelImpl;

  factory _RankingModel.fromJson(Map<String, dynamic> json) =
      _$RankingModelImpl.fromJson;

  @override
  MyRankingModel? get myRanking;
  @override
  List<MyRankingModel> get rankings;
  @override
  @JsonKey(ignore: true)
  _$$RankingModelImplCopyWith<_$RankingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyRankingModel _$MyRankingModelFromJson(Map<String, dynamic> json) {
  return _MyRankingModel.fromJson(json);
}

/// @nodoc
mixin _$MyRankingModel {
  int get rank => throw _privateConstructorUsedError;
  ReportProfileModel get profile => throw _privateConstructorUsedError;
  num get goldAcquired => throw _privateConstructorUsedError;
  int? get miningPower => throw _privateConstructorUsedError;
  num? get miningCapacity => throw _privateConstructorUsedError;
  num? get earningsFromLooting => throw _privateConstructorUsedError;
  num? get attackProfit => throw _privateConstructorUsedError;
  int? get ofAttacks => throw _privateConstructorUsedError;
  num? get biggestWinnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRankingModelCopyWith<MyRankingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRankingModelCopyWith<$Res> {
  factory $MyRankingModelCopyWith(
          MyRankingModel value, $Res Function(MyRankingModel) then) =
      _$MyRankingModelCopyWithImpl<$Res, MyRankingModel>;
  @useResult
  $Res call(
      {int rank,
      ReportProfileModel profile,
      num goldAcquired,
      int? miningPower,
      num? miningCapacity,
      num? earningsFromLooting,
      num? attackProfit,
      int? ofAttacks,
      num? biggestWinnings});

  $ReportProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$MyRankingModelCopyWithImpl<$Res, $Val extends MyRankingModel>
    implements $MyRankingModelCopyWith<$Res> {
  _$MyRankingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? profile = null,
    Object? goldAcquired = null,
    Object? miningPower = freezed,
    Object? miningCapacity = freezed,
    Object? earningsFromLooting = freezed,
    Object? attackProfit = freezed,
    Object? ofAttacks = freezed,
    Object? biggestWinnings = freezed,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ReportProfileModel,
      goldAcquired: null == goldAcquired
          ? _value.goldAcquired
          : goldAcquired // ignore: cast_nullable_to_non_nullable
              as num,
      miningPower: freezed == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int?,
      miningCapacity: freezed == miningCapacity
          ? _value.miningCapacity
          : miningCapacity // ignore: cast_nullable_to_non_nullable
              as num?,
      earningsFromLooting: freezed == earningsFromLooting
          ? _value.earningsFromLooting
          : earningsFromLooting // ignore: cast_nullable_to_non_nullable
              as num?,
      attackProfit: freezed == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num?,
      ofAttacks: freezed == ofAttacks
          ? _value.ofAttacks
          : ofAttacks // ignore: cast_nullable_to_non_nullable
              as int?,
      biggestWinnings: freezed == biggestWinnings
          ? _value.biggestWinnings
          : biggestWinnings // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportProfileModelCopyWith<$Res> get profile {
    return $ReportProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyRankingModelImplCopyWith<$Res>
    implements $MyRankingModelCopyWith<$Res> {
  factory _$$MyRankingModelImplCopyWith(_$MyRankingModelImpl value,
          $Res Function(_$MyRankingModelImpl) then) =
      __$$MyRankingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int rank,
      ReportProfileModel profile,
      num goldAcquired,
      int? miningPower,
      num? miningCapacity,
      num? earningsFromLooting,
      num? attackProfit,
      int? ofAttacks,
      num? biggestWinnings});

  @override
  $ReportProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$MyRankingModelImplCopyWithImpl<$Res>
    extends _$MyRankingModelCopyWithImpl<$Res, _$MyRankingModelImpl>
    implements _$$MyRankingModelImplCopyWith<$Res> {
  __$$MyRankingModelImplCopyWithImpl(
      _$MyRankingModelImpl _value, $Res Function(_$MyRankingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? profile = null,
    Object? goldAcquired = null,
    Object? miningPower = freezed,
    Object? miningCapacity = freezed,
    Object? earningsFromLooting = freezed,
    Object? attackProfit = freezed,
    Object? ofAttacks = freezed,
    Object? biggestWinnings = freezed,
  }) {
    return _then(_$MyRankingModelImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ReportProfileModel,
      goldAcquired: null == goldAcquired
          ? _value.goldAcquired
          : goldAcquired // ignore: cast_nullable_to_non_nullable
              as num,
      miningPower: freezed == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int?,
      miningCapacity: freezed == miningCapacity
          ? _value.miningCapacity
          : miningCapacity // ignore: cast_nullable_to_non_nullable
              as num?,
      earningsFromLooting: freezed == earningsFromLooting
          ? _value.earningsFromLooting
          : earningsFromLooting // ignore: cast_nullable_to_non_nullable
              as num?,
      attackProfit: freezed == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num?,
      ofAttacks: freezed == ofAttacks
          ? _value.ofAttacks
          : ofAttacks // ignore: cast_nullable_to_non_nullable
              as int?,
      biggestWinnings: freezed == biggestWinnings
          ? _value.biggestWinnings
          : biggestWinnings // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRankingModelImpl implements _MyRankingModel {
  const _$MyRankingModelImpl(
      {required this.rank,
      required this.profile,
      required this.goldAcquired,
      required this.miningPower,
      required this.miningCapacity,
      required this.earningsFromLooting,
      required this.attackProfit,
      required this.ofAttacks,
      required this.biggestWinnings});

  factory _$MyRankingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyRankingModelImplFromJson(json);

  @override
  final int rank;
  @override
  final ReportProfileModel profile;
  @override
  final num goldAcquired;
  @override
  final int? miningPower;
  @override
  final num? miningCapacity;
  @override
  final num? earningsFromLooting;
  @override
  final num? attackProfit;
  @override
  final int? ofAttacks;
  @override
  final num? biggestWinnings;

  @override
  String toString() {
    return 'MyRankingModel(rank: $rank, profile: $profile, goldAcquired: $goldAcquired, miningPower: $miningPower, miningCapacity: $miningCapacity, earningsFromLooting: $earningsFromLooting, attackProfit: $attackProfit, ofAttacks: $ofAttacks, biggestWinnings: $biggestWinnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRankingModelImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.goldAcquired, goldAcquired) ||
                other.goldAcquired == goldAcquired) &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.miningCapacity, miningCapacity) ||
                other.miningCapacity == miningCapacity) &&
            (identical(other.earningsFromLooting, earningsFromLooting) ||
                other.earningsFromLooting == earningsFromLooting) &&
            (identical(other.attackProfit, attackProfit) ||
                other.attackProfit == attackProfit) &&
            (identical(other.ofAttacks, ofAttacks) ||
                other.ofAttacks == ofAttacks) &&
            (identical(other.biggestWinnings, biggestWinnings) ||
                other.biggestWinnings == biggestWinnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rank,
      profile,
      goldAcquired,
      miningPower,
      miningCapacity,
      earningsFromLooting,
      attackProfit,
      ofAttacks,
      biggestWinnings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRankingModelImplCopyWith<_$MyRankingModelImpl> get copyWith =>
      __$$MyRankingModelImplCopyWithImpl<_$MyRankingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyRankingModelImplToJson(
      this,
    );
  }
}

abstract class _MyRankingModel implements MyRankingModel {
  const factory _MyRankingModel(
      {required final int rank,
      required final ReportProfileModel profile,
      required final num goldAcquired,
      required final int? miningPower,
      required final num? miningCapacity,
      required final num? earningsFromLooting,
      required final num? attackProfit,
      required final int? ofAttacks,
      required final num? biggestWinnings}) = _$MyRankingModelImpl;

  factory _MyRankingModel.fromJson(Map<String, dynamic> json) =
      _$MyRankingModelImpl.fromJson;

  @override
  int get rank;
  @override
  ReportProfileModel get profile;
  @override
  num get goldAcquired;
  @override
  int? get miningPower;
  @override
  num? get miningCapacity;
  @override
  num? get earningsFromLooting;
  @override
  num? get attackProfit;
  @override
  int? get ofAttacks;
  @override
  num? get biggestWinnings;
  @override
  @JsonKey(ignore: true)
  _$$MyRankingModelImplCopyWith<_$MyRankingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportProfileModel _$ReportProfileModelFromJson(Map<String, dynamic> json) {
  return _ReportProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ReportProfileModel {
  String get profileType => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  ReportStatModel get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportProfileModelCopyWith<ReportProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportProfileModelCopyWith<$Res> {
  factory $ReportProfileModelCopyWith(
          ReportProfileModel value, $Res Function(ReportProfileModel) then) =
      _$ReportProfileModelCopyWithImpl<$Res, ReportProfileModel>;
  @useResult
  $Res call(
      {String profileType,
      String profileUrl,
      String? nickname,
      ReportStatModel stat});

  $ReportStatModelCopyWith<$Res> get stat;
}

/// @nodoc
class _$ReportProfileModelCopyWithImpl<$Res, $Val extends ReportProfileModel>
    implements $ReportProfileModelCopyWith<$Res> {
  _$ReportProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileType = null,
    Object? profileUrl = null,
    Object? nickname = freezed,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      profileType: null == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ReportStatModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportStatModelCopyWith<$Res> get stat {
    return $ReportStatModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportProfileModelImplCopyWith<$Res>
    implements $ReportProfileModelCopyWith<$Res> {
  factory _$$ReportProfileModelImplCopyWith(_$ReportProfileModelImpl value,
          $Res Function(_$ReportProfileModelImpl) then) =
      __$$ReportProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String profileType,
      String profileUrl,
      String? nickname,
      ReportStatModel stat});

  @override
  $ReportStatModelCopyWith<$Res> get stat;
}

/// @nodoc
class __$$ReportProfileModelImplCopyWithImpl<$Res>
    extends _$ReportProfileModelCopyWithImpl<$Res, _$ReportProfileModelImpl>
    implements _$$ReportProfileModelImplCopyWith<$Res> {
  __$$ReportProfileModelImplCopyWithImpl(_$ReportProfileModelImpl _value,
      $Res Function(_$ReportProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileType = null,
    Object? profileUrl = null,
    Object? nickname = freezed,
    Object? stat = null,
  }) {
    return _then(_$ReportProfileModelImpl(
      profileType: null == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ReportStatModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportProfileModelImpl implements _ReportProfileModel {
  const _$ReportProfileModelImpl(
      {required this.profileType,
      required this.profileUrl,
      this.nickname,
      required this.stat});

  factory _$ReportProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportProfileModelImplFromJson(json);

  @override
  final String profileType;
  @override
  final String profileUrl;
  @override
  final String? nickname;
  @override
  final ReportStatModel stat;

  @override
  String toString() {
    return 'ReportProfileModel(profileType: $profileType, profileUrl: $profileUrl, nickname: $nickname, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportProfileModelImpl &&
            (identical(other.profileType, profileType) ||
                other.profileType == profileType) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileType, profileUrl, nickname, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportProfileModelImplCopyWith<_$ReportProfileModelImpl> get copyWith =>
      __$$ReportProfileModelImplCopyWithImpl<_$ReportProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ReportProfileModel implements ReportProfileModel {
  const factory _ReportProfileModel(
      {required final String profileType,
      required final String profileUrl,
      final String? nickname,
      required final ReportStatModel stat}) = _$ReportProfileModelImpl;

  factory _ReportProfileModel.fromJson(Map<String, dynamic> json) =
      _$ReportProfileModelImpl.fromJson;

  @override
  String get profileType;
  @override
  String get profileUrl;
  @override
  String? get nickname;
  @override
  ReportStatModel get stat;
  @override
  @JsonKey(ignore: true)
  _$$ReportProfileModelImplCopyWith<_$ReportProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportStatModel _$ReportStatModelFromJson(Map<String, dynamic> json) {
  return _ReportStatModel.fromJson(json);
}

/// @nodoc
mixin _$ReportStatModel {
  int get luck => throw _privateConstructorUsedError;
  int get silverTongue => throw _privateConstructorUsedError;
  int get stamina => throw _privateConstructorUsedError;
  int get intuition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportStatModelCopyWith<ReportStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStatModelCopyWith<$Res> {
  factory $ReportStatModelCopyWith(
          ReportStatModel value, $Res Function(ReportStatModel) then) =
      _$ReportStatModelCopyWithImpl<$Res, ReportStatModel>;
  @useResult
  $Res call({int luck, int silverTongue, int stamina, int intuition});
}

/// @nodoc
class _$ReportStatModelCopyWithImpl<$Res, $Val extends ReportStatModel>
    implements $ReportStatModelCopyWith<$Res> {
  _$ReportStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? luck = null,
    Object? silverTongue = null,
    Object? stamina = null,
    Object? intuition = null,
  }) {
    return _then(_value.copyWith(
      luck: null == luck
          ? _value.luck
          : luck // ignore: cast_nullable_to_non_nullable
              as int,
      silverTongue: null == silverTongue
          ? _value.silverTongue
          : silverTongue // ignore: cast_nullable_to_non_nullable
              as int,
      stamina: null == stamina
          ? _value.stamina
          : stamina // ignore: cast_nullable_to_non_nullable
              as int,
      intuition: null == intuition
          ? _value.intuition
          : intuition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportStatModelImplCopyWith<$Res>
    implements $ReportStatModelCopyWith<$Res> {
  factory _$$ReportStatModelImplCopyWith(_$ReportStatModelImpl value,
          $Res Function(_$ReportStatModelImpl) then) =
      __$$ReportStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int luck, int silverTongue, int stamina, int intuition});
}

/// @nodoc
class __$$ReportStatModelImplCopyWithImpl<$Res>
    extends _$ReportStatModelCopyWithImpl<$Res, _$ReportStatModelImpl>
    implements _$$ReportStatModelImplCopyWith<$Res> {
  __$$ReportStatModelImplCopyWithImpl(
      _$ReportStatModelImpl _value, $Res Function(_$ReportStatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? luck = null,
    Object? silverTongue = null,
    Object? stamina = null,
    Object? intuition = null,
  }) {
    return _then(_$ReportStatModelImpl(
      luck: null == luck
          ? _value.luck
          : luck // ignore: cast_nullable_to_non_nullable
              as int,
      silverTongue: null == silverTongue
          ? _value.silverTongue
          : silverTongue // ignore: cast_nullable_to_non_nullable
              as int,
      stamina: null == stamina
          ? _value.stamina
          : stamina // ignore: cast_nullable_to_non_nullable
              as int,
      intuition: null == intuition
          ? _value.intuition
          : intuition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportStatModelImpl implements _ReportStatModel {
  const _$ReportStatModelImpl(
      {required this.luck,
      required this.silverTongue,
      required this.stamina,
      required this.intuition});

  factory _$ReportStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportStatModelImplFromJson(json);

  @override
  final int luck;
  @override
  final int silverTongue;
  @override
  final int stamina;
  @override
  final int intuition;

  @override
  String toString() {
    return 'ReportStatModel(luck: $luck, silverTongue: $silverTongue, stamina: $stamina, intuition: $intuition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStatModelImpl &&
            (identical(other.luck, luck) || other.luck == luck) &&
            (identical(other.silverTongue, silverTongue) ||
                other.silverTongue == silverTongue) &&
            (identical(other.stamina, stamina) || other.stamina == stamina) &&
            (identical(other.intuition, intuition) ||
                other.intuition == intuition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, luck, silverTongue, stamina, intuition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStatModelImplCopyWith<_$ReportStatModelImpl> get copyWith =>
      __$$ReportStatModelImplCopyWithImpl<_$ReportStatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportStatModelImplToJson(
      this,
    );
  }
}

abstract class _ReportStatModel implements ReportStatModel {
  const factory _ReportStatModel(
      {required final int luck,
      required final int silverTongue,
      required final int stamina,
      required final int intuition}) = _$ReportStatModelImpl;

  factory _ReportStatModel.fromJson(Map<String, dynamic> json) =
      _$ReportStatModelImpl.fromJson;

  @override
  int get luck;
  @override
  int get silverTongue;
  @override
  int get stamina;
  @override
  int get intuition;
  @override
  @JsonKey(ignore: true)
  _$$ReportStatModelImplCopyWith<_$ReportStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
