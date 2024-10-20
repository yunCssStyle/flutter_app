// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  bool get isDivision =>
      throw _privateConstructorUsedError; // 첫사용자인지 판단 여부가 될듯 ( 배당 여부 )
  int? get nextReferenceTime =>
      throw _privateConstructorUsedError; // snapshot : true 일경우 null / false 일경우 기준시까지 남은시간
  HomeDataModel get data =>
      throw _privateConstructorUsedError; // snapshot : true 일경우 데이터 있음 / false 일경우 null
  HomeNewBadgeModel get newBadge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {bool isDivision,
      int? nextReferenceTime,
      HomeDataModel data,
      HomeNewBadgeModel newBadge});

  $HomeDataModelCopyWith<$Res> get data;
  $HomeNewBadgeModelCopyWith<$Res> get newBadge;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDivision = null,
    Object? nextReferenceTime = freezed,
    Object? data = null,
    Object? newBadge = null,
  }) {
    return _then(_value.copyWith(
      isDivision: null == isDivision
          ? _value.isDivision
          : isDivision // ignore: cast_nullable_to_non_nullable
              as bool,
      nextReferenceTime: freezed == nextReferenceTime
          ? _value.nextReferenceTime
          : nextReferenceTime // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeDataModel,
      newBadge: null == newBadge
          ? _value.newBadge
          : newBadge // ignore: cast_nullable_to_non_nullable
              as HomeNewBadgeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDataModelCopyWith<$Res> get data {
    return $HomeDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeNewBadgeModelCopyWith<$Res> get newBadge {
    return $HomeNewBadgeModelCopyWith<$Res>(_value.newBadge, (value) {
      return _then(_value.copyWith(newBadge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDivision,
      int? nextReferenceTime,
      HomeDataModel data,
      HomeNewBadgeModel newBadge});

  @override
  $HomeDataModelCopyWith<$Res> get data;
  @override
  $HomeNewBadgeModelCopyWith<$Res> get newBadge;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDivision = null,
    Object? nextReferenceTime = freezed,
    Object? data = null,
    Object? newBadge = null,
  }) {
    return _then(_$HomeModelImpl(
      isDivision: null == isDivision
          ? _value.isDivision
          : isDivision // ignore: cast_nullable_to_non_nullable
              as bool,
      nextReferenceTime: freezed == nextReferenceTime
          ? _value.nextReferenceTime
          : nextReferenceTime // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeDataModel,
      newBadge: null == newBadge
          ? _value.newBadge
          : newBadge // ignore: cast_nullable_to_non_nullable
              as HomeNewBadgeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {required this.isDivision,
      this.nextReferenceTime,
      required this.data,
      required this.newBadge});

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final bool isDivision;
// 첫사용자인지 판단 여부가 될듯 ( 배당 여부 )
  @override
  final int? nextReferenceTime;
// snapshot : true 일경우 null / false 일경우 기준시까지 남은시간
  @override
  final HomeDataModel data;
// snapshot : true 일경우 데이터 있음 / false 일경우 null
  @override
  final HomeNewBadgeModel newBadge;

  @override
  String toString() {
    return 'HomeModel(isDivision: $isDivision, nextReferenceTime: $nextReferenceTime, data: $data, newBadge: $newBadge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.isDivision, isDivision) ||
                other.isDivision == isDivision) &&
            (identical(other.nextReferenceTime, nextReferenceTime) ||
                other.nextReferenceTime == nextReferenceTime) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.newBadge, newBadge) ||
                other.newBadge == newBadge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDivision, nextReferenceTime, data, newBadge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final bool isDivision,
      final int? nextReferenceTime,
      required final HomeDataModel data,
      required final HomeNewBadgeModel newBadge}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  bool get isDivision;
  @override // 첫사용자인지 판단 여부가 될듯 ( 배당 여부 )
  int? get nextReferenceTime;
  @override // snapshot : true 일경우 null / false 일경우 기준시까지 남은시간
  HomeDataModel get data;
  @override // snapshot : true 일경우 데이터 있음 / false 일경우 null
  HomeNewBadgeModel get newBadge;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  bool? get mysteryBox => throw _privateConstructorUsedError; // 미스터리 박스 여부
  int? get mineLevel => throw _privateConstructorUsedError; // 광산 레벨
  HomeDistributeModel? get distribute => throw _privateConstructorUsedError;
  HomeStorageModel get storage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res, HomeDataModel>;
  @useResult
  $Res call(
      {bool? mysteryBox,
      int? mineLevel,
      HomeDistributeModel? distribute,
      HomeStorageModel storage});

  $HomeDistributeModelCopyWith<$Res>? get distribute;
  $HomeStorageModelCopyWith<$Res> get storage;
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res, $Val extends HomeDataModel>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mysteryBox = freezed,
    Object? mineLevel = freezed,
    Object? distribute = freezed,
    Object? storage = null,
  }) {
    return _then(_value.copyWith(
      mysteryBox: freezed == mysteryBox
          ? _value.mysteryBox
          : mysteryBox // ignore: cast_nullable_to_non_nullable
              as bool?,
      mineLevel: freezed == mineLevel
          ? _value.mineLevel
          : mineLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      distribute: freezed == distribute
          ? _value.distribute
          : distribute // ignore: cast_nullable_to_non_nullable
              as HomeDistributeModel?,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as HomeStorageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDistributeModelCopyWith<$Res>? get distribute {
    if (_value.distribute == null) {
      return null;
    }

    return $HomeDistributeModelCopyWith<$Res>(_value.distribute!, (value) {
      return _then(_value.copyWith(distribute: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStorageModelCopyWith<$Res> get storage {
    return $HomeStorageModelCopyWith<$Res>(_value.storage, (value) {
      return _then(_value.copyWith(storage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDataModelImplCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$HomeDataModelImplCopyWith(
          _$HomeDataModelImpl value, $Res Function(_$HomeDataModelImpl) then) =
      __$$HomeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? mysteryBox,
      int? mineLevel,
      HomeDistributeModel? distribute,
      HomeStorageModel storage});

  @override
  $HomeDistributeModelCopyWith<$Res>? get distribute;
  @override
  $HomeStorageModelCopyWith<$Res> get storage;
}

/// @nodoc
class __$$HomeDataModelImplCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res, _$HomeDataModelImpl>
    implements _$$HomeDataModelImplCopyWith<$Res> {
  __$$HomeDataModelImplCopyWithImpl(
      _$HomeDataModelImpl _value, $Res Function(_$HomeDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mysteryBox = freezed,
    Object? mineLevel = freezed,
    Object? distribute = freezed,
    Object? storage = null,
  }) {
    return _then(_$HomeDataModelImpl(
      mysteryBox: freezed == mysteryBox
          ? _value.mysteryBox
          : mysteryBox // ignore: cast_nullable_to_non_nullable
              as bool?,
      mineLevel: freezed == mineLevel
          ? _value.mineLevel
          : mineLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      distribute: freezed == distribute
          ? _value.distribute
          : distribute // ignore: cast_nullable_to_non_nullable
              as HomeDistributeModel?,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as HomeStorageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataModelImpl implements _HomeDataModel {
  const _$HomeDataModelImpl(
      {this.mysteryBox,
      this.mineLevel,
      this.distribute,
      required this.storage});

  factory _$HomeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataModelImplFromJson(json);

  @override
  final bool? mysteryBox;
// 미스터리 박스 여부
  @override
  final int? mineLevel;
// 광산 레벨
  @override
  final HomeDistributeModel? distribute;
  @override
  final HomeStorageModel storage;

  @override
  String toString() {
    return 'HomeDataModel(mysteryBox: $mysteryBox, mineLevel: $mineLevel, distribute: $distribute, storage: $storage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataModelImpl &&
            (identical(other.mysteryBox, mysteryBox) ||
                other.mysteryBox == mysteryBox) &&
            (identical(other.mineLevel, mineLevel) ||
                other.mineLevel == mineLevel) &&
            (identical(other.distribute, distribute) ||
                other.distribute == distribute) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mysteryBox, mineLevel, distribute, storage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      __$$HomeDataModelImplCopyWithImpl<_$HomeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel(
      {final bool? mysteryBox,
      final int? mineLevel,
      final HomeDistributeModel? distribute,
      required final HomeStorageModel storage}) = _$HomeDataModelImpl;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeDataModelImpl.fromJson;

  @override
  bool? get mysteryBox;
  @override // 미스터리 박스 여부
  int? get mineLevel;
  @override // 광산 레벨
  HomeDistributeModel? get distribute;
  @override
  HomeStorageModel get storage;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeDistributeModel _$HomeDistributeModelFromJson(Map<String, dynamic> json) {
  return _HomeDistributeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDistributeModel {
  int get miningPower => throw _privateConstructorUsedError; // 오늘 적용 MP
  num get dividends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDistributeModelCopyWith<HomeDistributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDistributeModelCopyWith<$Res> {
  factory $HomeDistributeModelCopyWith(
          HomeDistributeModel value, $Res Function(HomeDistributeModel) then) =
      _$HomeDistributeModelCopyWithImpl<$Res, HomeDistributeModel>;
  @useResult
  $Res call({int miningPower, num dividends});
}

/// @nodoc
class _$HomeDistributeModelCopyWithImpl<$Res, $Val extends HomeDistributeModel>
    implements $HomeDistributeModelCopyWith<$Res> {
  _$HomeDistributeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miningPower = null,
    Object? dividends = null,
  }) {
    return _then(_value.copyWith(
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      dividends: null == dividends
          ? _value.dividends
          : dividends // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDistributeModelImplCopyWith<$Res>
    implements $HomeDistributeModelCopyWith<$Res> {
  factory _$$HomeDistributeModelImplCopyWith(_$HomeDistributeModelImpl value,
          $Res Function(_$HomeDistributeModelImpl) then) =
      __$$HomeDistributeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int miningPower, num dividends});
}

/// @nodoc
class __$$HomeDistributeModelImplCopyWithImpl<$Res>
    extends _$HomeDistributeModelCopyWithImpl<$Res, _$HomeDistributeModelImpl>
    implements _$$HomeDistributeModelImplCopyWith<$Res> {
  __$$HomeDistributeModelImplCopyWithImpl(_$HomeDistributeModelImpl _value,
      $Res Function(_$HomeDistributeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miningPower = null,
    Object? dividends = null,
  }) {
    return _then(_$HomeDistributeModelImpl(
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      dividends: null == dividends
          ? _value.dividends
          : dividends // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDistributeModelImpl implements _HomeDistributeModel {
  const _$HomeDistributeModelImpl(
      {required this.miningPower, required this.dividends});

  factory _$HomeDistributeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDistributeModelImplFromJson(json);

  @override
  final int miningPower;
// 오늘 적용 MP
  @override
  final num dividends;

  @override
  String toString() {
    return 'HomeDistributeModel(miningPower: $miningPower, dividends: $dividends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDistributeModelImpl &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.dividends, dividends) ||
                other.dividends == dividends));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, miningPower, dividends);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDistributeModelImplCopyWith<_$HomeDistributeModelImpl> get copyWith =>
      __$$HomeDistributeModelImplCopyWithImpl<_$HomeDistributeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDistributeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDistributeModel implements HomeDistributeModel {
  const factory _HomeDistributeModel(
      {required final int miningPower,
      required final num dividends}) = _$HomeDistributeModelImpl;

  factory _HomeDistributeModel.fromJson(Map<String, dynamic> json) =
      _$HomeDistributeModelImpl.fromJson;

  @override
  int get miningPower;
  @override // 오늘 적용 MP
  num get dividends;
  @override
  @JsonKey(ignore: true)
  _$$HomeDistributeModelImplCopyWith<_$HomeDistributeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeNewBadgeModel _$HomeNewBadgeModelFromJson(Map<String, dynamic> json) {
  return _HomeNewBadgeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeNewBadgeModel {
  bool get inventory => throw _privateConstructorUsedError; // ( 인벤토리 뱃지 여부 )
  bool get defence => throw _privateConstructorUsedError; // ( 방어 뱃지 여부 )
  bool get tradingPost => throw _privateConstructorUsedError; // ( 교역소 뱃지 여부 )
  bool get explore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeNewBadgeModelCopyWith<HomeNewBadgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewBadgeModelCopyWith<$Res> {
  factory $HomeNewBadgeModelCopyWith(
          HomeNewBadgeModel value, $Res Function(HomeNewBadgeModel) then) =
      _$HomeNewBadgeModelCopyWithImpl<$Res, HomeNewBadgeModel>;
  @useResult
  $Res call({bool inventory, bool defence, bool tradingPost, bool explore});
}

/// @nodoc
class _$HomeNewBadgeModelCopyWithImpl<$Res, $Val extends HomeNewBadgeModel>
    implements $HomeNewBadgeModelCopyWith<$Res> {
  _$HomeNewBadgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventory = null,
    Object? defence = null,
    Object? tradingPost = null,
    Object? explore = null,
  }) {
    return _then(_value.copyWith(
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as bool,
      defence: null == defence
          ? _value.defence
          : defence // ignore: cast_nullable_to_non_nullable
              as bool,
      tradingPost: null == tradingPost
          ? _value.tradingPost
          : tradingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      explore: null == explore
          ? _value.explore
          : explore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewBadgeModelImplCopyWith<$Res>
    implements $HomeNewBadgeModelCopyWith<$Res> {
  factory _$$HomeNewBadgeModelImplCopyWith(_$HomeNewBadgeModelImpl value,
          $Res Function(_$HomeNewBadgeModelImpl) then) =
      __$$HomeNewBadgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool inventory, bool defence, bool tradingPost, bool explore});
}

/// @nodoc
class __$$HomeNewBadgeModelImplCopyWithImpl<$Res>
    extends _$HomeNewBadgeModelCopyWithImpl<$Res, _$HomeNewBadgeModelImpl>
    implements _$$HomeNewBadgeModelImplCopyWith<$Res> {
  __$$HomeNewBadgeModelImplCopyWithImpl(_$HomeNewBadgeModelImpl _value,
      $Res Function(_$HomeNewBadgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventory = null,
    Object? defence = null,
    Object? tradingPost = null,
    Object? explore = null,
  }) {
    return _then(_$HomeNewBadgeModelImpl(
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as bool,
      defence: null == defence
          ? _value.defence
          : defence // ignore: cast_nullable_to_non_nullable
              as bool,
      tradingPost: null == tradingPost
          ? _value.tradingPost
          : tradingPost // ignore: cast_nullable_to_non_nullable
              as bool,
      explore: null == explore
          ? _value.explore
          : explore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeNewBadgeModelImpl implements _HomeNewBadgeModel {
  const _$HomeNewBadgeModelImpl(
      {required this.inventory,
      required this.defence,
      required this.tradingPost,
      required this.explore});

  factory _$HomeNewBadgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeNewBadgeModelImplFromJson(json);

  @override
  final bool inventory;
// ( 인벤토리 뱃지 여부 )
  @override
  final bool defence;
// ( 방어 뱃지 여부 )
  @override
  final bool tradingPost;
// ( 교역소 뱃지 여부 )
  @override
  final bool explore;

  @override
  String toString() {
    return 'HomeNewBadgeModel(inventory: $inventory, defence: $defence, tradingPost: $tradingPost, explore: $explore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeNewBadgeModelImpl &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.defence, defence) || other.defence == defence) &&
            (identical(other.tradingPost, tradingPost) ||
                other.tradingPost == tradingPost) &&
            (identical(other.explore, explore) || other.explore == explore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, inventory, defence, tradingPost, explore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewBadgeModelImplCopyWith<_$HomeNewBadgeModelImpl> get copyWith =>
      __$$HomeNewBadgeModelImplCopyWithImpl<_$HomeNewBadgeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeNewBadgeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeNewBadgeModel implements HomeNewBadgeModel {
  const factory _HomeNewBadgeModel(
      {required final bool inventory,
      required final bool defence,
      required final bool tradingPost,
      required final bool explore}) = _$HomeNewBadgeModelImpl;

  factory _HomeNewBadgeModel.fromJson(Map<String, dynamic> json) =
      _$HomeNewBadgeModelImpl.fromJson;

  @override
  bool get inventory;
  @override // ( 인벤토리 뱃지 여부 )
  bool get defence;
  @override // ( 방어 뱃지 여부 )
  bool get tradingPost;
  @override // ( 교역소 뱃지 여부 )
  bool get explore;
  @override
  @JsonKey(ignore: true)
  _$$HomeNewBadgeModelImplCopyWith<_$HomeNewBadgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeStorageModel _$HomeStorageModelFromJson(Map<String, dynamic> json) {
  return _HomeStorageModel.fromJson(json);
}

/// @nodoc
mixin _$HomeStorageModel {
  int? get dividendsCycle =>
      throw _privateConstructorUsedError; // (배당금 주기, 현재 10초)
  num? get dividendsCycleGold =>
      throw _privateConstructorUsedError; // (배당금 주기에 따른 지급 골드량)
  num? get accumulateGold =>
      throw _privateConstructorUsedError; // (현재 수송에 대한 배당금 축적량)
  num? get transportGold =>
      throw _privateConstructorUsedError; // (현재 수송에 대한 배당금 총량)
  num? get attackProfit =>
      throw _privateConstructorUsedError; // (현재 수송 시간에 대한 공격으로 인한 축적량)
  num? get minedGold =>
      throw _privateConstructorUsedError; // (현재 수송 시간에 대한 배당금 축적량)
  num? get lossesFromAttacks =>
      throw _privateConstructorUsedError; // (현재 수송 시간에 대한 약탈로 인한 잃은량)
  int? get nowDateTime => throw _privateConstructorUsedError; // (현재 서버시간 UTC)
  int? get previousTransportTime =>
      throw _privateConstructorUsedError; // (이전 수송 완료 시간 )
  int? get nextTransportTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStorageModelCopyWith<HomeStorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStorageModelCopyWith<$Res> {
  factory $HomeStorageModelCopyWith(
          HomeStorageModel value, $Res Function(HomeStorageModel) then) =
      _$HomeStorageModelCopyWithImpl<$Res, HomeStorageModel>;
  @useResult
  $Res call(
      {int? dividendsCycle,
      num? dividendsCycleGold,
      num? accumulateGold,
      num? transportGold,
      num? attackProfit,
      num? minedGold,
      num? lossesFromAttacks,
      int? nowDateTime,
      int? previousTransportTime,
      int? nextTransportTime});
}

/// @nodoc
class _$HomeStorageModelCopyWithImpl<$Res, $Val extends HomeStorageModel>
    implements $HomeStorageModelCopyWith<$Res> {
  _$HomeStorageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dividendsCycle = freezed,
    Object? dividendsCycleGold = freezed,
    Object? accumulateGold = freezed,
    Object? transportGold = freezed,
    Object? attackProfit = freezed,
    Object? minedGold = freezed,
    Object? lossesFromAttacks = freezed,
    Object? nowDateTime = freezed,
    Object? previousTransportTime = freezed,
    Object? nextTransportTime = freezed,
  }) {
    return _then(_value.copyWith(
      dividendsCycle: freezed == dividendsCycle
          ? _value.dividendsCycle
          : dividendsCycle // ignore: cast_nullable_to_non_nullable
              as int?,
      dividendsCycleGold: freezed == dividendsCycleGold
          ? _value.dividendsCycleGold
          : dividendsCycleGold // ignore: cast_nullable_to_non_nullable
              as num?,
      accumulateGold: freezed == accumulateGold
          ? _value.accumulateGold
          : accumulateGold // ignore: cast_nullable_to_non_nullable
              as num?,
      transportGold: freezed == transportGold
          ? _value.transportGold
          : transportGold // ignore: cast_nullable_to_non_nullable
              as num?,
      attackProfit: freezed == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num?,
      minedGold: freezed == minedGold
          ? _value.minedGold
          : minedGold // ignore: cast_nullable_to_non_nullable
              as num?,
      lossesFromAttacks: freezed == lossesFromAttacks
          ? _value.lossesFromAttacks
          : lossesFromAttacks // ignore: cast_nullable_to_non_nullable
              as num?,
      nowDateTime: freezed == nowDateTime
          ? _value.nowDateTime
          : nowDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      previousTransportTime: freezed == previousTransportTime
          ? _value.previousTransportTime
          : previousTransportTime // ignore: cast_nullable_to_non_nullable
              as int?,
      nextTransportTime: freezed == nextTransportTime
          ? _value.nextTransportTime
          : nextTransportTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStorageModelImplCopyWith<$Res>
    implements $HomeStorageModelCopyWith<$Res> {
  factory _$$HomeStorageModelImplCopyWith(_$HomeStorageModelImpl value,
          $Res Function(_$HomeStorageModelImpl) then) =
      __$$HomeStorageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dividendsCycle,
      num? dividendsCycleGold,
      num? accumulateGold,
      num? transportGold,
      num? attackProfit,
      num? minedGold,
      num? lossesFromAttacks,
      int? nowDateTime,
      int? previousTransportTime,
      int? nextTransportTime});
}

/// @nodoc
class __$$HomeStorageModelImplCopyWithImpl<$Res>
    extends _$HomeStorageModelCopyWithImpl<$Res, _$HomeStorageModelImpl>
    implements _$$HomeStorageModelImplCopyWith<$Res> {
  __$$HomeStorageModelImplCopyWithImpl(_$HomeStorageModelImpl _value,
      $Res Function(_$HomeStorageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dividendsCycle = freezed,
    Object? dividendsCycleGold = freezed,
    Object? accumulateGold = freezed,
    Object? transportGold = freezed,
    Object? attackProfit = freezed,
    Object? minedGold = freezed,
    Object? lossesFromAttacks = freezed,
    Object? nowDateTime = freezed,
    Object? previousTransportTime = freezed,
    Object? nextTransportTime = freezed,
  }) {
    return _then(_$HomeStorageModelImpl(
      dividendsCycle: freezed == dividendsCycle
          ? _value.dividendsCycle
          : dividendsCycle // ignore: cast_nullable_to_non_nullable
              as int?,
      dividendsCycleGold: freezed == dividendsCycleGold
          ? _value.dividendsCycleGold
          : dividendsCycleGold // ignore: cast_nullable_to_non_nullable
              as num?,
      accumulateGold: freezed == accumulateGold
          ? _value.accumulateGold
          : accumulateGold // ignore: cast_nullable_to_non_nullable
              as num?,
      transportGold: freezed == transportGold
          ? _value.transportGold
          : transportGold // ignore: cast_nullable_to_non_nullable
              as num?,
      attackProfit: freezed == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num?,
      minedGold: freezed == minedGold
          ? _value.minedGold
          : minedGold // ignore: cast_nullable_to_non_nullable
              as num?,
      lossesFromAttacks: freezed == lossesFromAttacks
          ? _value.lossesFromAttacks
          : lossesFromAttacks // ignore: cast_nullable_to_non_nullable
              as num?,
      nowDateTime: freezed == nowDateTime
          ? _value.nowDateTime
          : nowDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      previousTransportTime: freezed == previousTransportTime
          ? _value.previousTransportTime
          : previousTransportTime // ignore: cast_nullable_to_non_nullable
              as int?,
      nextTransportTime: freezed == nextTransportTime
          ? _value.nextTransportTime
          : nextTransportTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStorageModelImpl implements _HomeStorageModel {
  const _$HomeStorageModelImpl(
      {this.dividendsCycle,
      this.dividendsCycleGold,
      this.accumulateGold,
      this.transportGold,
      this.attackProfit,
      this.minedGold,
      this.lossesFromAttacks,
      this.nowDateTime,
      this.previousTransportTime,
      this.nextTransportTime});

  factory _$HomeStorageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStorageModelImplFromJson(json);

  @override
  final int? dividendsCycle;
// (배당금 주기, 현재 10초)
  @override
  final num? dividendsCycleGold;
// (배당금 주기에 따른 지급 골드량)
  @override
  final num? accumulateGold;
// (현재 수송에 대한 배당금 축적량)
  @override
  final num? transportGold;
// (현재 수송에 대한 배당금 총량)
  @override
  final num? attackProfit;
// (현재 수송 시간에 대한 공격으로 인한 축적량)
  @override
  final num? minedGold;
// (현재 수송 시간에 대한 배당금 축적량)
  @override
  final num? lossesFromAttacks;
// (현재 수송 시간에 대한 약탈로 인한 잃은량)
  @override
  final int? nowDateTime;
// (현재 서버시간 UTC)
  @override
  final int? previousTransportTime;
// (이전 수송 완료 시간 )
  @override
  final int? nextTransportTime;

  @override
  String toString() {
    return 'HomeStorageModel(dividendsCycle: $dividendsCycle, dividendsCycleGold: $dividendsCycleGold, accumulateGold: $accumulateGold, transportGold: $transportGold, attackProfit: $attackProfit, minedGold: $minedGold, lossesFromAttacks: $lossesFromAttacks, nowDateTime: $nowDateTime, previousTransportTime: $previousTransportTime, nextTransportTime: $nextTransportTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStorageModelImpl &&
            (identical(other.dividendsCycle, dividendsCycle) ||
                other.dividendsCycle == dividendsCycle) &&
            (identical(other.dividendsCycleGold, dividendsCycleGold) ||
                other.dividendsCycleGold == dividendsCycleGold) &&
            (identical(other.accumulateGold, accumulateGold) ||
                other.accumulateGold == accumulateGold) &&
            (identical(other.transportGold, transportGold) ||
                other.transportGold == transportGold) &&
            (identical(other.attackProfit, attackProfit) ||
                other.attackProfit == attackProfit) &&
            (identical(other.minedGold, minedGold) ||
                other.minedGold == minedGold) &&
            (identical(other.lossesFromAttacks, lossesFromAttacks) ||
                other.lossesFromAttacks == lossesFromAttacks) &&
            (identical(other.nowDateTime, nowDateTime) ||
                other.nowDateTime == nowDateTime) &&
            (identical(other.previousTransportTime, previousTransportTime) ||
                other.previousTransportTime == previousTransportTime) &&
            (identical(other.nextTransportTime, nextTransportTime) ||
                other.nextTransportTime == nextTransportTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dividendsCycle,
      dividendsCycleGold,
      accumulateGold,
      transportGold,
      attackProfit,
      minedGold,
      lossesFromAttacks,
      nowDateTime,
      previousTransportTime,
      nextTransportTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStorageModelImplCopyWith<_$HomeStorageModelImpl> get copyWith =>
      __$$HomeStorageModelImplCopyWithImpl<_$HomeStorageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStorageModelImplToJson(
      this,
    );
  }
}

abstract class _HomeStorageModel implements HomeStorageModel {
  const factory _HomeStorageModel(
      {final int? dividendsCycle,
      final num? dividendsCycleGold,
      final num? accumulateGold,
      final num? transportGold,
      final num? attackProfit,
      final num? minedGold,
      final num? lossesFromAttacks,
      final int? nowDateTime,
      final int? previousTransportTime,
      final int? nextTransportTime}) = _$HomeStorageModelImpl;

  factory _HomeStorageModel.fromJson(Map<String, dynamic> json) =
      _$HomeStorageModelImpl.fromJson;

  @override
  int? get dividendsCycle;
  @override // (배당금 주기, 현재 10초)
  num? get dividendsCycleGold;
  @override // (배당금 주기에 따른 지급 골드량)
  num? get accumulateGold;
  @override // (현재 수송에 대한 배당금 축적량)
  num? get transportGold;
  @override // (현재 수송에 대한 배당금 총량)
  num? get attackProfit;
  @override // (현재 수송 시간에 대한 공격으로 인한 축적량)
  num? get minedGold;
  @override // (현재 수송 시간에 대한 배당금 축적량)
  num? get lossesFromAttacks;
  @override // (현재 수송 시간에 대한 약탈로 인한 잃은량)
  int? get nowDateTime;
  @override // (현재 서버시간 UTC)
  int? get previousTransportTime;
  @override // (이전 수송 완료 시간 )
  int? get nextTransportTime;
  @override
  @JsonKey(ignore: true)
  _$$HomeStorageModelImplCopyWith<_$HomeStorageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MysteryboxModel _$MysteryboxModelFromJson(Map<String, dynamic> json) {
  return _MysteryboxModel.fromJson(json);
}

/// @nodoc
mixin _$MysteryboxModel {
  MysteryboxReward get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MysteryboxModelCopyWith<MysteryboxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MysteryboxModelCopyWith<$Res> {
  factory $MysteryboxModelCopyWith(
          MysteryboxModel value, $Res Function(MysteryboxModel) then) =
      _$MysteryboxModelCopyWithImpl<$Res, MysteryboxModel>;
  @useResult
  $Res call({MysteryboxReward reward});

  $MysteryboxRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$MysteryboxModelCopyWithImpl<$Res, $Val extends MysteryboxModel>
    implements $MysteryboxModelCopyWith<$Res> {
  _$MysteryboxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reward = null,
  }) {
    return _then(_value.copyWith(
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as MysteryboxReward,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MysteryboxRewardCopyWith<$Res> get reward {
    return $MysteryboxRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MysteryboxModelImplCopyWith<$Res>
    implements $MysteryboxModelCopyWith<$Res> {
  factory _$$MysteryboxModelImplCopyWith(_$MysteryboxModelImpl value,
          $Res Function(_$MysteryboxModelImpl) then) =
      __$$MysteryboxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MysteryboxReward reward});

  @override
  $MysteryboxRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$MysteryboxModelImplCopyWithImpl<$Res>
    extends _$MysteryboxModelCopyWithImpl<$Res, _$MysteryboxModelImpl>
    implements _$$MysteryboxModelImplCopyWith<$Res> {
  __$$MysteryboxModelImplCopyWithImpl(
      _$MysteryboxModelImpl _value, $Res Function(_$MysteryboxModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reward = null,
  }) {
    return _then(_$MysteryboxModelImpl(
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as MysteryboxReward,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MysteryboxModelImpl implements _MysteryboxModel {
  const _$MysteryboxModelImpl({required this.reward});

  factory _$MysteryboxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MysteryboxModelImplFromJson(json);

  @override
  final MysteryboxReward reward;

  @override
  String toString() {
    return 'MysteryboxModel(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MysteryboxModelImpl &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MysteryboxModelImplCopyWith<_$MysteryboxModelImpl> get copyWith =>
      __$$MysteryboxModelImplCopyWithImpl<_$MysteryboxModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MysteryboxModelImplToJson(
      this,
    );
  }
}

abstract class _MysteryboxModel implements MysteryboxModel {
  const factory _MysteryboxModel({required final MysteryboxReward reward}) =
      _$MysteryboxModelImpl;

  factory _MysteryboxModel.fromJson(Map<String, dynamic> json) =
      _$MysteryboxModelImpl.fromJson;

  @override
  MysteryboxReward get reward;
  @override
  @JsonKey(ignore: true)
  _$$MysteryboxModelImplCopyWith<_$MysteryboxModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MysteryboxReward _$MysteryboxRewardFromJson(Map<String, dynamic> json) {
  return _MysteryboxReward.fromJson(json);
}

/// @nodoc
mixin _$MysteryboxReward {
  String get type => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  int get boxGrade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MysteryboxRewardCopyWith<MysteryboxReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MysteryboxRewardCopyWith<$Res> {
  factory $MysteryboxRewardCopyWith(
          MysteryboxReward value, $Res Function(MysteryboxReward) then) =
      _$MysteryboxRewardCopyWithImpl<$Res, MysteryboxReward>;
  @useResult
  $Res call({String type, num amount, int boxGrade});
}

/// @nodoc
class _$MysteryboxRewardCopyWithImpl<$Res, $Val extends MysteryboxReward>
    implements $MysteryboxRewardCopyWith<$Res> {
  _$MysteryboxRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? boxGrade = null,
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
      boxGrade: null == boxGrade
          ? _value.boxGrade
          : boxGrade // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MysteryboxRewardImplCopyWith<$Res>
    implements $MysteryboxRewardCopyWith<$Res> {
  factory _$$MysteryboxRewardImplCopyWith(_$MysteryboxRewardImpl value,
          $Res Function(_$MysteryboxRewardImpl) then) =
      __$$MysteryboxRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, num amount, int boxGrade});
}

/// @nodoc
class __$$MysteryboxRewardImplCopyWithImpl<$Res>
    extends _$MysteryboxRewardCopyWithImpl<$Res, _$MysteryboxRewardImpl>
    implements _$$MysteryboxRewardImplCopyWith<$Res> {
  __$$MysteryboxRewardImplCopyWithImpl(_$MysteryboxRewardImpl _value,
      $Res Function(_$MysteryboxRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? boxGrade = null,
  }) {
    return _then(_$MysteryboxRewardImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      boxGrade: null == boxGrade
          ? _value.boxGrade
          : boxGrade // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MysteryboxRewardImpl implements _MysteryboxReward {
  const _$MysteryboxRewardImpl(
      {required this.type, required this.amount, required this.boxGrade});

  factory _$MysteryboxRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MysteryboxRewardImplFromJson(json);

  @override
  final String type;
  @override
  final num amount;
  @override
  final int boxGrade;

  @override
  String toString() {
    return 'MysteryboxReward(type: $type, amount: $amount, boxGrade: $boxGrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MysteryboxRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.boxGrade, boxGrade) ||
                other.boxGrade == boxGrade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount, boxGrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MysteryboxRewardImplCopyWith<_$MysteryboxRewardImpl> get copyWith =>
      __$$MysteryboxRewardImplCopyWithImpl<_$MysteryboxRewardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MysteryboxRewardImplToJson(
      this,
    );
  }
}

abstract class _MysteryboxReward implements MysteryboxReward {
  const factory _MysteryboxReward(
      {required final String type,
      required final num amount,
      required final int boxGrade}) = _$MysteryboxRewardImpl;

  factory _MysteryboxReward.fromJson(Map<String, dynamic> json) =
      _$MysteryboxRewardImpl.fromJson;

  @override
  String get type;
  @override
  num get amount;
  @override
  int get boxGrade;
  @override
  @JsonKey(ignore: true)
  _$$MysteryboxRewardImplCopyWith<_$MysteryboxRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
