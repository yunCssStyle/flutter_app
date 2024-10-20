// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exploration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExplorationModel _$ExplorationModelFromJson(Map<String, dynamic> json) {
  return _ExplorationModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorationModel {
  String get status => throw _privateConstructorUsedError;
  ExplorationDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorationModelCopyWith<ExplorationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorationModelCopyWith<$Res> {
  factory $ExplorationModelCopyWith(
          ExplorationModel value, $Res Function(ExplorationModel) then) =
      _$ExplorationModelCopyWithImpl<$Res, ExplorationModel>;
  @useResult
  $Res call({String status, ExplorationDataModel data});

  $ExplorationDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ExplorationModelCopyWithImpl<$Res, $Val extends ExplorationModel>
    implements $ExplorationModelCopyWith<$Res> {
  _$ExplorationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExplorationDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExplorationDataModelCopyWith<$Res> get data {
    return $ExplorationDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExplorationModelImplCopyWith<$Res>
    implements $ExplorationModelCopyWith<$Res> {
  factory _$$ExplorationModelImplCopyWith(_$ExplorationModelImpl value,
          $Res Function(_$ExplorationModelImpl) then) =
      __$$ExplorationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, ExplorationDataModel data});

  @override
  $ExplorationDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExplorationModelImplCopyWithImpl<$Res>
    extends _$ExplorationModelCopyWithImpl<$Res, _$ExplorationModelImpl>
    implements _$$ExplorationModelImplCopyWith<$Res> {
  __$$ExplorationModelImplCopyWithImpl(_$ExplorationModelImpl _value,
      $Res Function(_$ExplorationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ExplorationModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExplorationDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorationModelImpl implements _ExplorationModel {
  const _$ExplorationModelImpl({required this.status, required this.data});

  factory _$ExplorationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorationModelImplFromJson(json);

  @override
  final String status;
  @override
  final ExplorationDataModel data;

  @override
  String toString() {
    return 'ExplorationModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorationModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorationModelImplCopyWith<_$ExplorationModelImpl> get copyWith =>
      __$$ExplorationModelImplCopyWithImpl<_$ExplorationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorationModelImplToJson(
      this,
    );
  }
}

abstract class _ExplorationModel implements ExplorationModel {
  const factory _ExplorationModel(
      {required final String status,
      required final ExplorationDataModel data}) = _$ExplorationModelImpl;

  factory _ExplorationModel.fromJson(Map<String, dynamic> json) =
      _$ExplorationModelImpl.fromJson;

  @override
  String get status;
  @override
  ExplorationDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ExplorationModelImplCopyWith<_$ExplorationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplorationDataModel _$ExplorationDataModelFromJson(Map<String, dynamic> json) {
  return _ExplorationDataModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorationDataModel {
  int get time => throw _privateConstructorUsedError;
  int? get shortenedTime => throw _privateConstructorUsedError;
  int? get tabRemainingCount => throw _privateConstructorUsedError;
  List<RewardsModel>? get rewards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorationDataModelCopyWith<ExplorationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorationDataModelCopyWith<$Res> {
  factory $ExplorationDataModelCopyWith(ExplorationDataModel value,
          $Res Function(ExplorationDataModel) then) =
      _$ExplorationDataModelCopyWithImpl<$Res, ExplorationDataModel>;
  @useResult
  $Res call(
      {int time,
      int? shortenedTime,
      int? tabRemainingCount,
      List<RewardsModel>? rewards});
}

/// @nodoc
class _$ExplorationDataModelCopyWithImpl<$Res,
        $Val extends ExplorationDataModel>
    implements $ExplorationDataModelCopyWith<$Res> {
  _$ExplorationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? shortenedTime = freezed,
    Object? tabRemainingCount = freezed,
    Object? rewards = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      shortenedTime: freezed == shortenedTime
          ? _value.shortenedTime
          : shortenedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      tabRemainingCount: freezed == tabRemainingCount
          ? _value.tabRemainingCount
          : tabRemainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rewards: freezed == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExplorationDataModelImplCopyWith<$Res>
    implements $ExplorationDataModelCopyWith<$Res> {
  factory _$$ExplorationDataModelImplCopyWith(_$ExplorationDataModelImpl value,
          $Res Function(_$ExplorationDataModelImpl) then) =
      __$$ExplorationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int time,
      int? shortenedTime,
      int? tabRemainingCount,
      List<RewardsModel>? rewards});
}

/// @nodoc
class __$$ExplorationDataModelImplCopyWithImpl<$Res>
    extends _$ExplorationDataModelCopyWithImpl<$Res, _$ExplorationDataModelImpl>
    implements _$$ExplorationDataModelImplCopyWith<$Res> {
  __$$ExplorationDataModelImplCopyWithImpl(_$ExplorationDataModelImpl _value,
      $Res Function(_$ExplorationDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? shortenedTime = freezed,
    Object? tabRemainingCount = freezed,
    Object? rewards = freezed,
  }) {
    return _then(_$ExplorationDataModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      shortenedTime: freezed == shortenedTime
          ? _value.shortenedTime
          : shortenedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      tabRemainingCount: freezed == tabRemainingCount
          ? _value.tabRemainingCount
          : tabRemainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rewards: freezed == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorationDataModelImpl implements _ExplorationDataModel {
  const _$ExplorationDataModelImpl(
      {required this.time,
      this.shortenedTime,
      this.tabRemainingCount,
      final List<RewardsModel>? rewards})
      : _rewards = rewards;

  factory _$ExplorationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorationDataModelImplFromJson(json);

  @override
  final int time;
  @override
  final int? shortenedTime;
  @override
  final int? tabRemainingCount;
  final List<RewardsModel>? _rewards;
  @override
  List<RewardsModel>? get rewards {
    final value = _rewards;
    if (value == null) return null;
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExplorationDataModel(time: $time, shortenedTime: $shortenedTime, tabRemainingCount: $tabRemainingCount, rewards: $rewards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorationDataModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.shortenedTime, shortenedTime) ||
                other.shortenedTime == shortenedTime) &&
            (identical(other.tabRemainingCount, tabRemainingCount) ||
                other.tabRemainingCount == tabRemainingCount) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, shortenedTime,
      tabRemainingCount, const DeepCollectionEquality().hash(_rewards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorationDataModelImplCopyWith<_$ExplorationDataModelImpl>
      get copyWith =>
          __$$ExplorationDataModelImplCopyWithImpl<_$ExplorationDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorationDataModelImplToJson(
      this,
    );
  }
}

abstract class _ExplorationDataModel implements ExplorationDataModel {
  const factory _ExplorationDataModel(
      {required final int time,
      final int? shortenedTime,
      final int? tabRemainingCount,
      final List<RewardsModel>? rewards}) = _$ExplorationDataModelImpl;

  factory _ExplorationDataModel.fromJson(Map<String, dynamic> json) =
      _$ExplorationDataModelImpl.fromJson;

  @override
  int get time;
  @override
  int? get shortenedTime;
  @override
  int? get tabRemainingCount;
  @override
  List<RewardsModel>? get rewards;
  @override
  @JsonKey(ignore: true)
  _$$ExplorationDataModelImplCopyWith<_$ExplorationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RewardsModel _$RewardsModelFromJson(Map<String, dynamic> json) {
  return _RewardsModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsModel {
  String get type => throw _privateConstructorUsedError;
  int get boxGrade => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  bool get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsModelCopyWith<RewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsModelCopyWith<$Res> {
  factory $RewardsModelCopyWith(
          RewardsModel value, $Res Function(RewardsModel) then) =
      _$RewardsModelCopyWithImpl<$Res, RewardsModel>;
  @useResult
  $Res call({String type, int boxGrade, num amount, bool bonus});
}

/// @nodoc
class _$RewardsModelCopyWithImpl<$Res, $Val extends RewardsModel>
    implements $RewardsModelCopyWith<$Res> {
  _$RewardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? boxGrade = null,
    Object? amount = null,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      boxGrade: null == boxGrade
          ? _value.boxGrade
          : boxGrade // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardsModelImplCopyWith<$Res>
    implements $RewardsModelCopyWith<$Res> {
  factory _$$RewardsModelImplCopyWith(
          _$RewardsModelImpl value, $Res Function(_$RewardsModelImpl) then) =
      __$$RewardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int boxGrade, num amount, bool bonus});
}

/// @nodoc
class __$$RewardsModelImplCopyWithImpl<$Res>
    extends _$RewardsModelCopyWithImpl<$Res, _$RewardsModelImpl>
    implements _$$RewardsModelImplCopyWith<$Res> {
  __$$RewardsModelImplCopyWithImpl(
      _$RewardsModelImpl _value, $Res Function(_$RewardsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? boxGrade = null,
    Object? amount = null,
    Object? bonus = null,
  }) {
    return _then(_$RewardsModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      boxGrade: null == boxGrade
          ? _value.boxGrade
          : boxGrade // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardsModelImpl implements _RewardsModel {
  const _$RewardsModelImpl(
      {required this.type,
      required this.boxGrade,
      required this.amount,
      required this.bonus});

  factory _$RewardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardsModelImplFromJson(json);

  @override
  final String type;
  @override
  final int boxGrade;
  @override
  final num amount;
  @override
  final bool bonus;

  @override
  String toString() {
    return 'RewardsModel(type: $type, boxGrade: $boxGrade, amount: $amount, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.boxGrade, boxGrade) ||
                other.boxGrade == boxGrade) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, boxGrade, amount, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsModelImplCopyWith<_$RewardsModelImpl> get copyWith =>
      __$$RewardsModelImplCopyWithImpl<_$RewardsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardsModelImplToJson(
      this,
    );
  }
}

abstract class _RewardsModel implements RewardsModel {
  const factory _RewardsModel(
      {required final String type,
      required final int boxGrade,
      required final num amount,
      required final bool bonus}) = _$RewardsModelImpl;

  factory _RewardsModel.fromJson(Map<String, dynamic> json) =
      _$RewardsModelImpl.fromJson;

  @override
  String get type;
  @override
  int get boxGrade;
  @override
  num get amount;
  @override
  bool get bonus;
  @override
  @JsonKey(ignore: true)
  _$$RewardsModelImplCopyWith<_$RewardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplorationTabModel _$ExplorationTabModelFromJson(Map<String, dynamic> json) {
  return _ExplorationTabModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorationTabModel {
  bool get bonus => throw _privateConstructorUsedError;
  int get shortenedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorationTabModelCopyWith<ExplorationTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorationTabModelCopyWith<$Res> {
  factory $ExplorationTabModelCopyWith(
          ExplorationTabModel value, $Res Function(ExplorationTabModel) then) =
      _$ExplorationTabModelCopyWithImpl<$Res, ExplorationTabModel>;
  @useResult
  $Res call({bool bonus, int shortenedTime});
}

/// @nodoc
class _$ExplorationTabModelCopyWithImpl<$Res, $Val extends ExplorationTabModel>
    implements $ExplorationTabModelCopyWith<$Res> {
  _$ExplorationTabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? shortenedTime = null,
  }) {
    return _then(_value.copyWith(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as bool,
      shortenedTime: null == shortenedTime
          ? _value.shortenedTime
          : shortenedTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExplorationTabModelImplCopyWith<$Res>
    implements $ExplorationTabModelCopyWith<$Res> {
  factory _$$ExplorationTabModelImplCopyWith(_$ExplorationTabModelImpl value,
          $Res Function(_$ExplorationTabModelImpl) then) =
      __$$ExplorationTabModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool bonus, int shortenedTime});
}

/// @nodoc
class __$$ExplorationTabModelImplCopyWithImpl<$Res>
    extends _$ExplorationTabModelCopyWithImpl<$Res, _$ExplorationTabModelImpl>
    implements _$$ExplorationTabModelImplCopyWith<$Res> {
  __$$ExplorationTabModelImplCopyWithImpl(_$ExplorationTabModelImpl _value,
      $Res Function(_$ExplorationTabModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? shortenedTime = null,
  }) {
    return _then(_$ExplorationTabModelImpl(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as bool,
      shortenedTime: null == shortenedTime
          ? _value.shortenedTime
          : shortenedTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorationTabModelImpl implements _ExplorationTabModel {
  const _$ExplorationTabModelImpl(
      {required this.bonus, required this.shortenedTime});

  factory _$ExplorationTabModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorationTabModelImplFromJson(json);

  @override
  final bool bonus;
  @override
  final int shortenedTime;

  @override
  String toString() {
    return 'ExplorationTabModel(bonus: $bonus, shortenedTime: $shortenedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorationTabModelImpl &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.shortenedTime, shortenedTime) ||
                other.shortenedTime == shortenedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bonus, shortenedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorationTabModelImplCopyWith<_$ExplorationTabModelImpl> get copyWith =>
      __$$ExplorationTabModelImplCopyWithImpl<_$ExplorationTabModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorationTabModelImplToJson(
      this,
    );
  }
}

abstract class _ExplorationTabModel implements ExplorationTabModel {
  const factory _ExplorationTabModel(
      {required final bool bonus,
      required final int shortenedTime}) = _$ExplorationTabModelImpl;

  factory _ExplorationTabModel.fromJson(Map<String, dynamic> json) =
      _$ExplorationTabModelImpl.fromJson;

  @override
  bool get bonus;
  @override
  int get shortenedTime;
  @override
  @JsonKey(ignore: true)
  _$$ExplorationTabModelImplCopyWith<_$ExplorationTabModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
