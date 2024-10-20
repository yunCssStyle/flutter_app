// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TargetModel _$TargetModelFromJson(Map<String, dynamic> json) {
  return _TargetModel.fromJson(json);
}

/// @nodoc
mixin _$TargetModel {
  int? get ticketRemainingTime => throw _privateConstructorUsedError;
  int get ticketCount => throw _privateConstructorUsedError;
  TargetDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetModelCopyWith<TargetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetModelCopyWith<$Res> {
  factory $TargetModelCopyWith(
          TargetModel value, $Res Function(TargetModel) then) =
      _$TargetModelCopyWithImpl<$Res, TargetModel>;
  @useResult
  $Res call({int? ticketRemainingTime, int ticketCount, TargetDataModel? data});

  $TargetDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TargetModelCopyWithImpl<$Res, $Val extends TargetModel>
    implements $TargetModelCopyWith<$Res> {
  _$TargetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketRemainingTime = freezed,
    Object? ticketCount = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      ticketRemainingTime: freezed == ticketRemainingTime
          ? _value.ticketRemainingTime
          : ticketRemainingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TargetDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TargetDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TargetDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TargetModelImplCopyWith<$Res>
    implements $TargetModelCopyWith<$Res> {
  factory _$$TargetModelImplCopyWith(
          _$TargetModelImpl value, $Res Function(_$TargetModelImpl) then) =
      __$$TargetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ticketRemainingTime, int ticketCount, TargetDataModel? data});

  @override
  $TargetDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TargetModelImplCopyWithImpl<$Res>
    extends _$TargetModelCopyWithImpl<$Res, _$TargetModelImpl>
    implements _$$TargetModelImplCopyWith<$Res> {
  __$$TargetModelImplCopyWithImpl(
      _$TargetModelImpl _value, $Res Function(_$TargetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketRemainingTime = freezed,
    Object? ticketCount = null,
    Object? data = freezed,
  }) {
    return _then(_$TargetModelImpl(
      ticketRemainingTime: freezed == ticketRemainingTime
          ? _value.ticketRemainingTime
          : ticketRemainingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TargetDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetModelImpl implements _TargetModel {
  const _$TargetModelImpl(
      {this.ticketRemainingTime, required this.ticketCount, this.data});

  factory _$TargetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetModelImplFromJson(json);

  @override
  final int? ticketRemainingTime;
  @override
  final int ticketCount;
  @override
  final TargetDataModel? data;

  @override
  String toString() {
    return 'TargetModel(ticketRemainingTime: $ticketRemainingTime, ticketCount: $ticketCount, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetModelImpl &&
            (identical(other.ticketRemainingTime, ticketRemainingTime) ||
                other.ticketRemainingTime == ticketRemainingTime) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ticketRemainingTime, ticketCount, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetModelImplCopyWith<_$TargetModelImpl> get copyWith =>
      __$$TargetModelImplCopyWithImpl<_$TargetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetModelImplToJson(
      this,
    );
  }
}

abstract class _TargetModel implements TargetModel {
  const factory _TargetModel(
      {final int? ticketRemainingTime,
      required final int ticketCount,
      final TargetDataModel? data}) = _$TargetModelImpl;

  factory _TargetModel.fromJson(Map<String, dynamic> json) =
      _$TargetModelImpl.fromJson;

  @override
  int? get ticketRemainingTime;
  @override
  int get ticketCount;
  @override
  TargetDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$TargetModelImplCopyWith<_$TargetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetDataModel _$TargetDataModelFromJson(Map<String, dynamic> json) {
  return _TargetDataModel.fromJson(json);
}

/// @nodoc
mixin _$TargetDataModel {
  int get targetResetTime => throw _privateConstructorUsedError;
  num get refreshCost => throw _privateConstructorUsedError;
  List<TargetListModel?> get attackTargets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetDataModelCopyWith<TargetDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDataModelCopyWith<$Res> {
  factory $TargetDataModelCopyWith(
          TargetDataModel value, $Res Function(TargetDataModel) then) =
      _$TargetDataModelCopyWithImpl<$Res, TargetDataModel>;
  @useResult
  $Res call(
      {int targetResetTime,
      num refreshCost,
      List<TargetListModel?> attackTargets});
}

/// @nodoc
class _$TargetDataModelCopyWithImpl<$Res, $Val extends TargetDataModel>
    implements $TargetDataModelCopyWith<$Res> {
  _$TargetDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetResetTime = null,
    Object? refreshCost = null,
    Object? attackTargets = null,
  }) {
    return _then(_value.copyWith(
      targetResetTime: null == targetResetTime
          ? _value.targetResetTime
          : targetResetTime // ignore: cast_nullable_to_non_nullable
              as int,
      refreshCost: null == refreshCost
          ? _value.refreshCost
          : refreshCost // ignore: cast_nullable_to_non_nullable
              as num,
      attackTargets: null == attackTargets
          ? _value.attackTargets
          : attackTargets // ignore: cast_nullable_to_non_nullable
              as List<TargetListModel?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetDataModelImplCopyWith<$Res>
    implements $TargetDataModelCopyWith<$Res> {
  factory _$$TargetDataModelImplCopyWith(_$TargetDataModelImpl value,
          $Res Function(_$TargetDataModelImpl) then) =
      __$$TargetDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int targetResetTime,
      num refreshCost,
      List<TargetListModel?> attackTargets});
}

/// @nodoc
class __$$TargetDataModelImplCopyWithImpl<$Res>
    extends _$TargetDataModelCopyWithImpl<$Res, _$TargetDataModelImpl>
    implements _$$TargetDataModelImplCopyWith<$Res> {
  __$$TargetDataModelImplCopyWithImpl(
      _$TargetDataModelImpl _value, $Res Function(_$TargetDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetResetTime = null,
    Object? refreshCost = null,
    Object? attackTargets = null,
  }) {
    return _then(_$TargetDataModelImpl(
      targetResetTime: null == targetResetTime
          ? _value.targetResetTime
          : targetResetTime // ignore: cast_nullable_to_non_nullable
              as int,
      refreshCost: null == refreshCost
          ? _value.refreshCost
          : refreshCost // ignore: cast_nullable_to_non_nullable
              as num,
      attackTargets: null == attackTargets
          ? _value._attackTargets
          : attackTargets // ignore: cast_nullable_to_non_nullable
              as List<TargetListModel?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetDataModelImpl implements _TargetDataModel {
  const _$TargetDataModelImpl(
      {required this.targetResetTime,
      required this.refreshCost,
      required final List<TargetListModel?> attackTargets})
      : _attackTargets = attackTargets;

  factory _$TargetDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetDataModelImplFromJson(json);

  @override
  final int targetResetTime;
  @override
  final num refreshCost;
  final List<TargetListModel?> _attackTargets;
  @override
  List<TargetListModel?> get attackTargets {
    if (_attackTargets is EqualUnmodifiableListView) return _attackTargets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attackTargets);
  }

  @override
  String toString() {
    return 'TargetDataModel(targetResetTime: $targetResetTime, refreshCost: $refreshCost, attackTargets: $attackTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetDataModelImpl &&
            (identical(other.targetResetTime, targetResetTime) ||
                other.targetResetTime == targetResetTime) &&
            (identical(other.refreshCost, refreshCost) ||
                other.refreshCost == refreshCost) &&
            const DeepCollectionEquality()
                .equals(other._attackTargets, _attackTargets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetResetTime, refreshCost,
      const DeepCollectionEquality().hash(_attackTargets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetDataModelImplCopyWith<_$TargetDataModelImpl> get copyWith =>
      __$$TargetDataModelImplCopyWithImpl<_$TargetDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetDataModelImplToJson(
      this,
    );
  }
}

abstract class _TargetDataModel implements TargetDataModel {
  const factory _TargetDataModel(
          {required final int targetResetTime,
          required final num refreshCost,
          required final List<TargetListModel?> attackTargets}) =
      _$TargetDataModelImpl;

  factory _TargetDataModel.fromJson(Map<String, dynamic> json) =
      _$TargetDataModelImpl.fromJson;

  @override
  int get targetResetTime;
  @override
  num get refreshCost;
  @override
  List<TargetListModel?> get attackTargets;
  @override
  @JsonKey(ignore: true)
  _$$TargetDataModelImplCopyWith<_$TargetDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetListModel _$TargetListModelFromJson(Map<String, dynamic> json) {
  return _TargetListModel.fromJson(json);
}

/// @nodoc
mixin _$TargetListModel {
  int get targetId => throw _privateConstructorUsedError;
  String? get targetNickname => throw _privateConstructorUsedError;
  int get totalRound => throw _privateConstructorUsedError;
  num get maxProfit => throw _privateConstructorUsedError;
  num get expectedProfit => throw _privateConstructorUsedError;
  TargetCostModel get cost => throw _privateConstructorUsedError;
  ProfileModel get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetListModelCopyWith<TargetListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetListModelCopyWith<$Res> {
  factory $TargetListModelCopyWith(
          TargetListModel value, $Res Function(TargetListModel) then) =
      _$TargetListModelCopyWithImpl<$Res, TargetListModel>;
  @useResult
  $Res call(
      {int targetId,
      String? targetNickname,
      int totalRound,
      num maxProfit,
      num expectedProfit,
      TargetCostModel cost,
      ProfileModel profile});

  $TargetCostModelCopyWith<$Res> get cost;
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$TargetListModelCopyWithImpl<$Res, $Val extends TargetListModel>
    implements $TargetListModelCopyWith<$Res> {
  _$TargetListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetId = null,
    Object? targetNickname = freezed,
    Object? totalRound = null,
    Object? maxProfit = null,
    Object? expectedProfit = null,
    Object? cost = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: freezed == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      maxProfit: null == maxProfit
          ? _value.maxProfit
          : maxProfit // ignore: cast_nullable_to_non_nullable
              as num,
      expectedProfit: null == expectedProfit
          ? _value.expectedProfit
          : expectedProfit // ignore: cast_nullable_to_non_nullable
              as num,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as TargetCostModel,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
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
abstract class _$$TargetListModelImplCopyWith<$Res>
    implements $TargetListModelCopyWith<$Res> {
  factory _$$TargetListModelImplCopyWith(_$TargetListModelImpl value,
          $Res Function(_$TargetListModelImpl) then) =
      __$$TargetListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int targetId,
      String? targetNickname,
      int totalRound,
      num maxProfit,
      num expectedProfit,
      TargetCostModel cost,
      ProfileModel profile});

  @override
  $TargetCostModelCopyWith<$Res> get cost;
  @override
  $ProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$TargetListModelImplCopyWithImpl<$Res>
    extends _$TargetListModelCopyWithImpl<$Res, _$TargetListModelImpl>
    implements _$$TargetListModelImplCopyWith<$Res> {
  __$$TargetListModelImplCopyWithImpl(
      _$TargetListModelImpl _value, $Res Function(_$TargetListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetId = null,
    Object? targetNickname = freezed,
    Object? totalRound = null,
    Object? maxProfit = null,
    Object? expectedProfit = null,
    Object? cost = null,
    Object? profile = null,
  }) {
    return _then(_$TargetListModelImpl(
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      targetNickname: freezed == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRound: null == totalRound
          ? _value.totalRound
          : totalRound // ignore: cast_nullable_to_non_nullable
              as int,
      maxProfit: null == maxProfit
          ? _value.maxProfit
          : maxProfit // ignore: cast_nullable_to_non_nullable
              as num,
      expectedProfit: null == expectedProfit
          ? _value.expectedProfit
          : expectedProfit // ignore: cast_nullable_to_non_nullable
              as num,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as TargetCostModel,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetListModelImpl implements _TargetListModel {
  const _$TargetListModelImpl(
      {required this.targetId,
      required this.targetNickname,
      required this.totalRound,
      required this.maxProfit,
      required this.expectedProfit,
      required this.cost,
      required this.profile});

  factory _$TargetListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetListModelImplFromJson(json);

  @override
  final int targetId;
  @override
  final String? targetNickname;
  @override
  final int totalRound;
  @override
  final num maxProfit;
  @override
  final num expectedProfit;
  @override
  final TargetCostModel cost;
  @override
  final ProfileModel profile;

  @override
  String toString() {
    return 'TargetListModel(targetId: $targetId, targetNickname: $targetNickname, totalRound: $totalRound, maxProfit: $maxProfit, expectedProfit: $expectedProfit, cost: $cost, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetListModelImpl &&
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
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetId, targetNickname,
      totalRound, maxProfit, expectedProfit, cost, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetListModelImplCopyWith<_$TargetListModelImpl> get copyWith =>
      __$$TargetListModelImplCopyWithImpl<_$TargetListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetListModelImplToJson(
      this,
    );
  }
}

abstract class _TargetListModel implements TargetListModel {
  const factory _TargetListModel(
      {required final int targetId,
      required final String? targetNickname,
      required final int totalRound,
      required final num maxProfit,
      required final num expectedProfit,
      required final TargetCostModel cost,
      required final ProfileModel profile}) = _$TargetListModelImpl;

  factory _TargetListModel.fromJson(Map<String, dynamic> json) =
      _$TargetListModelImpl.fromJson;

  @override
  int get targetId;
  @override
  String? get targetNickname;
  @override
  int get totalRound;
  @override
  num get maxProfit;
  @override
  num get expectedProfit;
  @override
  TargetCostModel get cost;
  @override
  ProfileModel get profile;
  @override
  @JsonKey(ignore: true)
  _$$TargetListModelImplCopyWith<_$TargetListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({String url, String type});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String type});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$ProfileModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl({required this.url, required this.type});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String url;
  @override
  final String type;

  @override
  String toString() {
    return 'ProfileModel(url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final String url,
      required final String type}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String get url;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetCostModel _$TargetCostModelFromJson(Map<String, dynamic> json) {
  return _TargetCostModel.fromJson(json);
}

/// @nodoc
mixin _$TargetCostModel {
  String get type => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetCostModelCopyWith<TargetCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCostModelCopyWith<$Res> {
  factory $TargetCostModelCopyWith(
          TargetCostModel value, $Res Function(TargetCostModel) then) =
      _$TargetCostModelCopyWithImpl<$Res, TargetCostModel>;
  @useResult
  $Res call({String type, num amount});
}

/// @nodoc
class _$TargetCostModelCopyWithImpl<$Res, $Val extends TargetCostModel>
    implements $TargetCostModelCopyWith<$Res> {
  _$TargetCostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetCostModelImplCopyWith<$Res>
    implements $TargetCostModelCopyWith<$Res> {
  factory _$$TargetCostModelImplCopyWith(_$TargetCostModelImpl value,
          $Res Function(_$TargetCostModelImpl) then) =
      __$$TargetCostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, num amount});
}

/// @nodoc
class __$$TargetCostModelImplCopyWithImpl<$Res>
    extends _$TargetCostModelCopyWithImpl<$Res, _$TargetCostModelImpl>
    implements _$$TargetCostModelImplCopyWith<$Res> {
  __$$TargetCostModelImplCopyWithImpl(
      _$TargetCostModelImpl _value, $Res Function(_$TargetCostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$TargetCostModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetCostModelImpl implements _TargetCostModel {
  const _$TargetCostModelImpl({required this.type, required this.amount});

  factory _$TargetCostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetCostModelImplFromJson(json);

  @override
  final String type;
  @override
  final num amount;

  @override
  String toString() {
    return 'TargetCostModel(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetCostModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetCostModelImplCopyWith<_$TargetCostModelImpl> get copyWith =>
      __$$TargetCostModelImplCopyWithImpl<_$TargetCostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetCostModelImplToJson(
      this,
    );
  }
}

abstract class _TargetCostModel implements TargetCostModel {
  const factory _TargetCostModel(
      {required final String type,
      required final num amount}) = _$TargetCostModelImpl;

  factory _TargetCostModel.fromJson(Map<String, dynamic> json) =
      _$TargetCostModelImpl.fromJson;

  @override
  String get type;
  @override
  num get amount;
  @override
  @JsonKey(ignore: true)
  _$$TargetCostModelImplCopyWith<_$TargetCostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
