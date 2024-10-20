// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InformationModel _$InformationModelFromJson(Map<String, dynamic> json) {
  return _InformationModel.fromJson(json);
}

/// @nodoc
mixin _$InformationModel {
  MyInModel get myInformation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformationModelCopyWith<InformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationModelCopyWith<$Res> {
  factory $InformationModelCopyWith(
          InformationModel value, $Res Function(InformationModel) then) =
      _$InformationModelCopyWithImpl<$Res, InformationModel>;
  @useResult
  $Res call({MyInModel myInformation});

  $MyInModelCopyWith<$Res> get myInformation;
}

/// @nodoc
class _$InformationModelCopyWithImpl<$Res, $Val extends InformationModel>
    implements $InformationModelCopyWith<$Res> {
  _$InformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myInformation = null,
  }) {
    return _then(_value.copyWith(
      myInformation: null == myInformation
          ? _value.myInformation
          : myInformation // ignore: cast_nullable_to_non_nullable
              as MyInModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyInModelCopyWith<$Res> get myInformation {
    return $MyInModelCopyWith<$Res>(_value.myInformation, (value) {
      return _then(_value.copyWith(myInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InformationModelImplCopyWith<$Res>
    implements $InformationModelCopyWith<$Res> {
  factory _$$InformationModelImplCopyWith(_$InformationModelImpl value,
          $Res Function(_$InformationModelImpl) then) =
      __$$InformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyInModel myInformation});

  @override
  $MyInModelCopyWith<$Res> get myInformation;
}

/// @nodoc
class __$$InformationModelImplCopyWithImpl<$Res>
    extends _$InformationModelCopyWithImpl<$Res, _$InformationModelImpl>
    implements _$$InformationModelImplCopyWith<$Res> {
  __$$InformationModelImplCopyWithImpl(_$InformationModelImpl _value,
      $Res Function(_$InformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myInformation = null,
  }) {
    return _then(_$InformationModelImpl(
      myInformation: null == myInformation
          ? _value.myInformation
          : myInformation // ignore: cast_nullable_to_non_nullable
              as MyInModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InformationModelImpl implements _InformationModel {
  const _$InformationModelImpl({required this.myInformation});

  factory _$InformationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InformationModelImplFromJson(json);

  @override
  final MyInModel myInformation;

  @override
  String toString() {
    return 'InformationModel(myInformation: $myInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationModelImpl &&
            (identical(other.myInformation, myInformation) ||
                other.myInformation == myInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationModelImplCopyWith<_$InformationModelImpl> get copyWith =>
      __$$InformationModelImplCopyWithImpl<_$InformationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformationModelImplToJson(
      this,
    );
  }
}

abstract class _InformationModel implements InformationModel {
  const factory _InformationModel({required final MyInModel myInformation}) =
      _$InformationModelImpl;

  factory _InformationModel.fromJson(Map<String, dynamic> json) =
      _$InformationModelImpl.fromJson;

  @override
  MyInModel get myInformation;
  @override
  @JsonKey(ignore: true)
  _$$InformationModelImplCopyWith<_$InformationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyInModel _$MyInModelFromJson(Map<String, dynamic> json) {
  return _MyInModel.fromJson(json);
}

/// @nodoc
mixin _$MyInModel {
  int get miningPower => throw _privateConstructorUsedError;
  num get miningCapacity => throw _privateConstructorUsedError;
  num get totalGoldAcquired => throw _privateConstructorUsedError;
  num get attackProfit => throw _privateConstructorUsedError;
  num get lossesFromAttacks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInModelCopyWith<MyInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInModelCopyWith<$Res> {
  factory $MyInModelCopyWith(MyInModel value, $Res Function(MyInModel) then) =
      _$MyInModelCopyWithImpl<$Res, MyInModel>;
  @useResult
  $Res call(
      {int miningPower,
      num miningCapacity,
      num totalGoldAcquired,
      num attackProfit,
      num lossesFromAttacks});
}

/// @nodoc
class _$MyInModelCopyWithImpl<$Res, $Val extends MyInModel>
    implements $MyInModelCopyWith<$Res> {
  _$MyInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miningPower = null,
    Object? miningCapacity = null,
    Object? totalGoldAcquired = null,
    Object? attackProfit = null,
    Object? lossesFromAttacks = null,
  }) {
    return _then(_value.copyWith(
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      miningCapacity: null == miningCapacity
          ? _value.miningCapacity
          : miningCapacity // ignore: cast_nullable_to_non_nullable
              as num,
      totalGoldAcquired: null == totalGoldAcquired
          ? _value.totalGoldAcquired
          : totalGoldAcquired // ignore: cast_nullable_to_non_nullable
              as num,
      attackProfit: null == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num,
      lossesFromAttacks: null == lossesFromAttacks
          ? _value.lossesFromAttacks
          : lossesFromAttacks // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyInModelImplCopyWith<$Res>
    implements $MyInModelCopyWith<$Res> {
  factory _$$MyInModelImplCopyWith(
          _$MyInModelImpl value, $Res Function(_$MyInModelImpl) then) =
      __$$MyInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int miningPower,
      num miningCapacity,
      num totalGoldAcquired,
      num attackProfit,
      num lossesFromAttacks});
}

/// @nodoc
class __$$MyInModelImplCopyWithImpl<$Res>
    extends _$MyInModelCopyWithImpl<$Res, _$MyInModelImpl>
    implements _$$MyInModelImplCopyWith<$Res> {
  __$$MyInModelImplCopyWithImpl(
      _$MyInModelImpl _value, $Res Function(_$MyInModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miningPower = null,
    Object? miningCapacity = null,
    Object? totalGoldAcquired = null,
    Object? attackProfit = null,
    Object? lossesFromAttacks = null,
  }) {
    return _then(_$MyInModelImpl(
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      miningCapacity: null == miningCapacity
          ? _value.miningCapacity
          : miningCapacity // ignore: cast_nullable_to_non_nullable
              as num,
      totalGoldAcquired: null == totalGoldAcquired
          ? _value.totalGoldAcquired
          : totalGoldAcquired // ignore: cast_nullable_to_non_nullable
              as num,
      attackProfit: null == attackProfit
          ? _value.attackProfit
          : attackProfit // ignore: cast_nullable_to_non_nullable
              as num,
      lossesFromAttacks: null == lossesFromAttacks
          ? _value.lossesFromAttacks
          : lossesFromAttacks // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyInModelImpl implements _MyInModel {
  const _$MyInModelImpl(
      {required this.miningPower,
      required this.miningCapacity,
      required this.totalGoldAcquired,
      required this.attackProfit,
      required this.lossesFromAttacks});

  factory _$MyInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyInModelImplFromJson(json);

  @override
  final int miningPower;
  @override
  final num miningCapacity;
  @override
  final num totalGoldAcquired;
  @override
  final num attackProfit;
  @override
  final num lossesFromAttacks;

  @override
  String toString() {
    return 'MyInModel(miningPower: $miningPower, miningCapacity: $miningCapacity, totalGoldAcquired: $totalGoldAcquired, attackProfit: $attackProfit, lossesFromAttacks: $lossesFromAttacks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyInModelImpl &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.miningCapacity, miningCapacity) ||
                other.miningCapacity == miningCapacity) &&
            (identical(other.totalGoldAcquired, totalGoldAcquired) ||
                other.totalGoldAcquired == totalGoldAcquired) &&
            (identical(other.attackProfit, attackProfit) ||
                other.attackProfit == attackProfit) &&
            (identical(other.lossesFromAttacks, lossesFromAttacks) ||
                other.lossesFromAttacks == lossesFromAttacks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, miningPower, miningCapacity,
      totalGoldAcquired, attackProfit, lossesFromAttacks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyInModelImplCopyWith<_$MyInModelImpl> get copyWith =>
      __$$MyInModelImplCopyWithImpl<_$MyInModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyInModelImplToJson(
      this,
    );
  }
}

abstract class _MyInModel implements MyInModel {
  const factory _MyInModel(
      {required final int miningPower,
      required final num miningCapacity,
      required final num totalGoldAcquired,
      required final num attackProfit,
      required final num lossesFromAttacks}) = _$MyInModelImpl;

  factory _MyInModel.fromJson(Map<String, dynamic> json) =
      _$MyInModelImpl.fromJson;

  @override
  int get miningPower;
  @override
  num get miningCapacity;
  @override
  num get totalGoldAcquired;
  @override
  num get attackProfit;
  @override
  num get lossesFromAttacks;
  @override
  @JsonKey(ignore: true)
  _$$MyInModelImplCopyWith<_$MyInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
