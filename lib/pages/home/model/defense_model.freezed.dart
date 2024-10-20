// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'defense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefenseModel _$DefenseModelFromJson(Map<String, dynamic> json) {
  return _DefenseModel.fromJson(json);
}

/// @nodoc
mixin _$DefenseModel {
  int get myDefenceRounds => throw _privateConstructorUsedError;
  List<DefenseListModel> get defenceHistories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefenseModelCopyWith<DefenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefenseModelCopyWith<$Res> {
  factory $DefenseModelCopyWith(
          DefenseModel value, $Res Function(DefenseModel) then) =
      _$DefenseModelCopyWithImpl<$Res, DefenseModel>;
  @useResult
  $Res call({int myDefenceRounds, List<DefenseListModel> defenceHistories});
}

/// @nodoc
class _$DefenseModelCopyWithImpl<$Res, $Val extends DefenseModel>
    implements $DefenseModelCopyWith<$Res> {
  _$DefenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myDefenceRounds = null,
    Object? defenceHistories = null,
  }) {
    return _then(_value.copyWith(
      myDefenceRounds: null == myDefenceRounds
          ? _value.myDefenceRounds
          : myDefenceRounds // ignore: cast_nullable_to_non_nullable
              as int,
      defenceHistories: null == defenceHistories
          ? _value.defenceHistories
          : defenceHistories // ignore: cast_nullable_to_non_nullable
              as List<DefenseListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefenseModelImplCopyWith<$Res>
    implements $DefenseModelCopyWith<$Res> {
  factory _$$DefenseModelImplCopyWith(
          _$DefenseModelImpl value, $Res Function(_$DefenseModelImpl) then) =
      __$$DefenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int myDefenceRounds, List<DefenseListModel> defenceHistories});
}

/// @nodoc
class __$$DefenseModelImplCopyWithImpl<$Res>
    extends _$DefenseModelCopyWithImpl<$Res, _$DefenseModelImpl>
    implements _$$DefenseModelImplCopyWith<$Res> {
  __$$DefenseModelImplCopyWithImpl(
      _$DefenseModelImpl _value, $Res Function(_$DefenseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myDefenceRounds = null,
    Object? defenceHistories = null,
  }) {
    return _then(_$DefenseModelImpl(
      myDefenceRounds: null == myDefenceRounds
          ? _value.myDefenceRounds
          : myDefenceRounds // ignore: cast_nullable_to_non_nullable
              as int,
      defenceHistories: null == defenceHistories
          ? _value._defenceHistories
          : defenceHistories // ignore: cast_nullable_to_non_nullable
              as List<DefenseListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefenseModelImpl implements _DefenseModel {
  const _$DefenseModelImpl(
      {required this.myDefenceRounds,
      required final List<DefenseListModel> defenceHistories})
      : _defenceHistories = defenceHistories;

  factory _$DefenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefenseModelImplFromJson(json);

  @override
  final int myDefenceRounds;
  final List<DefenseListModel> _defenceHistories;
  @override
  List<DefenseListModel> get defenceHistories {
    if (_defenceHistories is EqualUnmodifiableListView)
      return _defenceHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defenceHistories);
  }

  @override
  String toString() {
    return 'DefenseModel(myDefenceRounds: $myDefenceRounds, defenceHistories: $defenceHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefenseModelImpl &&
            (identical(other.myDefenceRounds, myDefenceRounds) ||
                other.myDefenceRounds == myDefenceRounds) &&
            const DeepCollectionEquality()
                .equals(other._defenceHistories, _defenceHistories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myDefenceRounds,
      const DeepCollectionEquality().hash(_defenceHistories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefenseModelImplCopyWith<_$DefenseModelImpl> get copyWith =>
      __$$DefenseModelImplCopyWithImpl<_$DefenseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefenseModelImplToJson(
      this,
    );
  }
}

abstract class _DefenseModel implements DefenseModel {
  const factory _DefenseModel(
          {required final int myDefenceRounds,
          required final List<DefenseListModel> defenceHistories}) =
      _$DefenseModelImpl;

  factory _DefenseModel.fromJson(Map<String, dynamic> json) =
      _$DefenseModelImpl.fromJson;

  @override
  int get myDefenceRounds;
  @override
  List<DefenseListModel> get defenceHistories;
  @override
  @JsonKey(ignore: true)
  _$$DefenseModelImplCopyWith<_$DefenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefenseListModel _$DefenseListModelFromJson(Map<String, dynamic> json) {
  return _DefenseListModel.fromJson(json);
}

/// @nodoc
mixin _$DefenseListModel {
  int get defenceId => throw _privateConstructorUsedError;
  String get revengeExpiredTime => throw _privateConstructorUsedError;
  int get attackedTime => throw _privateConstructorUsedError;
  String get targetNickname => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  int get totalRound => throw _privateConstructorUsedError;
  num get lostAmount => throw _privateConstructorUsedError;
  int get statBonus => throw _privateConstructorUsedError;
  ProfileModel get profile => throw _privateConstructorUsedError;
  bool get readed => throw _privateConstructorUsedError;
  bool get isExecute => throw _privateConstructorUsedError;
  bool get isRevenge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefenseListModelCopyWith<DefenseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefenseListModelCopyWith<$Res> {
  factory $DefenseListModelCopyWith(
          DefenseListModel value, $Res Function(DefenseListModel) then) =
      _$DefenseListModelCopyWithImpl<$Res, DefenseListModel>;
  @useResult
  $Res call(
      {int defenceId,
      String revengeExpiredTime,
      int attackedTime,
      String targetNickname,
      int round,
      int totalRound,
      num lostAmount,
      int statBonus,
      ProfileModel profile,
      bool readed,
      bool isExecute,
      bool isRevenge});

  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$DefenseListModelCopyWithImpl<$Res, $Val extends DefenseListModel>
    implements $DefenseListModelCopyWith<$Res> {
  _$DefenseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defenceId = null,
    Object? revengeExpiredTime = null,
    Object? attackedTime = null,
    Object? targetNickname = null,
    Object? round = null,
    Object? totalRound = null,
    Object? lostAmount = null,
    Object? statBonus = null,
    Object? profile = null,
    Object? readed = null,
    Object? isExecute = null,
    Object? isRevenge = null,
  }) {
    return _then(_value.copyWith(
      defenceId: null == defenceId
          ? _value.defenceId
          : defenceId // ignore: cast_nullable_to_non_nullable
              as int,
      revengeExpiredTime: null == revengeExpiredTime
          ? _value.revengeExpiredTime
          : revengeExpiredTime // ignore: cast_nullable_to_non_nullable
              as String,
      attackedTime: null == attackedTime
          ? _value.attackedTime
          : attackedTime // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      lostAmount: null == lostAmount
          ? _value.lostAmount
          : lostAmount // ignore: cast_nullable_to_non_nullable
              as num,
      statBonus: null == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      isExecute: null == isExecute
          ? _value.isExecute
          : isExecute // ignore: cast_nullable_to_non_nullable
              as bool,
      isRevenge: null == isRevenge
          ? _value.isRevenge
          : isRevenge // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$DefenseListModelImplCopyWith<$Res>
    implements $DefenseListModelCopyWith<$Res> {
  factory _$$DefenseListModelImplCopyWith(_$DefenseListModelImpl value,
          $Res Function(_$DefenseListModelImpl) then) =
      __$$DefenseListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int defenceId,
      String revengeExpiredTime,
      int attackedTime,
      String targetNickname,
      int round,
      int totalRound,
      num lostAmount,
      int statBonus,
      ProfileModel profile,
      bool readed,
      bool isExecute,
      bool isRevenge});

  @override
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$DefenseListModelImplCopyWithImpl<$Res>
    extends _$DefenseListModelCopyWithImpl<$Res, _$DefenseListModelImpl>
    implements _$$DefenseListModelImplCopyWith<$Res> {
  __$$DefenseListModelImplCopyWithImpl(_$DefenseListModelImpl _value,
      $Res Function(_$DefenseListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defenceId = null,
    Object? revengeExpiredTime = null,
    Object? attackedTime = null,
    Object? targetNickname = null,
    Object? round = null,
    Object? totalRound = null,
    Object? lostAmount = null,
    Object? statBonus = null,
    Object? profile = null,
    Object? readed = null,
    Object? isExecute = null,
    Object? isRevenge = null,
  }) {
    return _then(_$DefenseListModelImpl(
      defenceId: null == defenceId
          ? _value.defenceId
          : defenceId // ignore: cast_nullable_to_non_nullable
              as int,
      revengeExpiredTime: null == revengeExpiredTime
          ? _value.revengeExpiredTime
          : revengeExpiredTime // ignore: cast_nullable_to_non_nullable
              as String,
      attackedTime: null == attackedTime
          ? _value.attackedTime
          : attackedTime // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      lostAmount: null == lostAmount
          ? _value.lostAmount
          : lostAmount // ignore: cast_nullable_to_non_nullable
              as num,
      statBonus: null == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      isExecute: null == isExecute
          ? _value.isExecute
          : isExecute // ignore: cast_nullable_to_non_nullable
              as bool,
      isRevenge: null == isRevenge
          ? _value.isRevenge
          : isRevenge // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefenseListModelImpl implements _DefenseListModel {
  const _$DefenseListModelImpl(
      {required this.defenceId,
      required this.revengeExpiredTime,
      required this.attackedTime,
      required this.targetNickname,
      required this.round,
      required this.totalRound,
      required this.lostAmount,
      required this.statBonus,
      required this.profile,
      required this.readed,
      required this.isExecute,
      required this.isRevenge});

  factory _$DefenseListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefenseListModelImplFromJson(json);

  @override
  final int defenceId;
  @override
  final String revengeExpiredTime;
  @override
  final int attackedTime;
  @override
  final String targetNickname;
  @override
  final int round;
  @override
  final int totalRound;
  @override
  final num lostAmount;
  @override
  final int statBonus;
  @override
  final ProfileModel profile;
  @override
  final bool readed;
  @override
  final bool isExecute;
  @override
  final bool isRevenge;

  @override
  String toString() {
    return 'DefenseListModel(defenceId: $defenceId, revengeExpiredTime: $revengeExpiredTime, attackedTime: $attackedTime, targetNickname: $targetNickname, round: $round, totalRound: $totalRound, lostAmount: $lostAmount, statBonus: $statBonus, profile: $profile, readed: $readed, isExecute: $isExecute, isRevenge: $isRevenge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefenseListModelImpl &&
            (identical(other.defenceId, defenceId) ||
                other.defenceId == defenceId) &&
            (identical(other.revengeExpiredTime, revengeExpiredTime) ||
                other.revengeExpiredTime == revengeExpiredTime) &&
            (identical(other.attackedTime, attackedTime) ||
                other.attackedTime == attackedTime) &&
            (identical(other.targetNickname, targetNickname) ||
                other.targetNickname == targetNickname) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.totalRound, totalRound) ||
                other.totalRound == totalRound) &&
            (identical(other.lostAmount, lostAmount) ||
                other.lostAmount == lostAmount) &&
            (identical(other.statBonus, statBonus) ||
                other.statBonus == statBonus) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.readed, readed) || other.readed == readed) &&
            (identical(other.isExecute, isExecute) ||
                other.isExecute == isExecute) &&
            (identical(other.isRevenge, isRevenge) ||
                other.isRevenge == isRevenge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      defenceId,
      revengeExpiredTime,
      attackedTime,
      targetNickname,
      round,
      totalRound,
      lostAmount,
      statBonus,
      profile,
      readed,
      isExecute,
      isRevenge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefenseListModelImplCopyWith<_$DefenseListModelImpl> get copyWith =>
      __$$DefenseListModelImplCopyWithImpl<_$DefenseListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefenseListModelImplToJson(
      this,
    );
  }
}

abstract class _DefenseListModel implements DefenseListModel {
  const factory _DefenseListModel(
      {required final int defenceId,
      required final String revengeExpiredTime,
      required final int attackedTime,
      required final String targetNickname,
      required final int round,
      required final int totalRound,
      required final num lostAmount,
      required final int statBonus,
      required final ProfileModel profile,
      required final bool readed,
      required final bool isExecute,
      required final bool isRevenge}) = _$DefenseListModelImpl;

  factory _DefenseListModel.fromJson(Map<String, dynamic> json) =
      _$DefenseListModelImpl.fromJson;

  @override
  int get defenceId;
  @override
  String get revengeExpiredTime;
  @override
  int get attackedTime;
  @override
  String get targetNickname;
  @override
  int get round;
  @override
  int get totalRound;
  @override
  num get lostAmount;
  @override
  int get statBonus;
  @override
  ProfileModel get profile;
  @override
  bool get readed;
  @override
  bool get isExecute;
  @override
  bool get isRevenge;
  @override
  @JsonKey(ignore: true)
  _$$DefenseListModelImplCopyWith<_$DefenseListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefenseIdsModel _$DefenseIdsModelFromJson(Map<String, dynamic> json) {
  return _DefenseIdsModel.fromJson(json);
}

/// @nodoc
mixin _$DefenseIdsModel {
  List<int> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefenseIdsModelCopyWith<DefenseIdsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefenseIdsModelCopyWith<$Res> {
  factory $DefenseIdsModelCopyWith(
          DefenseIdsModel value, $Res Function(DefenseIdsModel) then) =
      _$DefenseIdsModelCopyWithImpl<$Res, DefenseIdsModel>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$DefenseIdsModelCopyWithImpl<$Res, $Val extends DefenseIdsModel>
    implements $DefenseIdsModelCopyWith<$Res> {
  _$DefenseIdsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefenseIdsModelImplCopyWith<$Res>
    implements $DefenseIdsModelCopyWith<$Res> {
  factory _$$DefenseIdsModelImplCopyWith(_$DefenseIdsModelImpl value,
          $Res Function(_$DefenseIdsModelImpl) then) =
      __$$DefenseIdsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$DefenseIdsModelImplCopyWithImpl<$Res>
    extends _$DefenseIdsModelCopyWithImpl<$Res, _$DefenseIdsModelImpl>
    implements _$$DefenseIdsModelImplCopyWith<$Res> {
  __$$DefenseIdsModelImplCopyWithImpl(
      _$DefenseIdsModelImpl _value, $Res Function(_$DefenseIdsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$DefenseIdsModelImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefenseIdsModelImpl implements _DefenseIdsModel {
  _$DefenseIdsModelImpl({required final List<int> ids}) : _ids = ids;

  factory _$DefenseIdsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefenseIdsModelImplFromJson(json);

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'DefenseIdsModel(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefenseIdsModelImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefenseIdsModelImplCopyWith<_$DefenseIdsModelImpl> get copyWith =>
      __$$DefenseIdsModelImplCopyWithImpl<_$DefenseIdsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefenseIdsModelImplToJson(
      this,
    );
  }
}

abstract class _DefenseIdsModel implements DefenseIdsModel {
  factory _DefenseIdsModel({required final List<int> ids}) =
      _$DefenseIdsModelImpl;

  factory _DefenseIdsModel.fromJson(Map<String, dynamic> json) =
      _$DefenseIdsModelImpl.fromJson;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$DefenseIdsModelImplCopyWith<_$DefenseIdsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
