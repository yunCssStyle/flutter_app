// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trading_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TradingPostHistoryModel _$TradingPostHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _TradingPostHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$TradingPostHistoryModel {
  TradingPostHistoryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradingPostHistoryModelCopyWith<TradingPostHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingPostHistoryModelCopyWith<$Res> {
  factory $TradingPostHistoryModelCopyWith(TradingPostHistoryModel value,
          $Res Function(TradingPostHistoryModel) then) =
      _$TradingPostHistoryModelCopyWithImpl<$Res, TradingPostHistoryModel>;
  @useResult
  $Res call({TradingPostHistoryDataModel? data});

  $TradingPostHistoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TradingPostHistoryModelCopyWithImpl<$Res,
        $Val extends TradingPostHistoryModel>
    implements $TradingPostHistoryModelCopyWith<$Res> {
  _$TradingPostHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TradingPostHistoryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TradingPostHistoryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TradingPostHistoryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradingPostHistoryModelImplCopyWith<$Res>
    implements $TradingPostHistoryModelCopyWith<$Res> {
  factory _$$TradingPostHistoryModelImplCopyWith(
          _$TradingPostHistoryModelImpl value,
          $Res Function(_$TradingPostHistoryModelImpl) then) =
      __$$TradingPostHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TradingPostHistoryDataModel? data});

  @override
  $TradingPostHistoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TradingPostHistoryModelImplCopyWithImpl<$Res>
    extends _$TradingPostHistoryModelCopyWithImpl<$Res,
        _$TradingPostHistoryModelImpl>
    implements _$$TradingPostHistoryModelImplCopyWith<$Res> {
  __$$TradingPostHistoryModelImplCopyWithImpl(
      _$TradingPostHistoryModelImpl _value,
      $Res Function(_$TradingPostHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TradingPostHistoryModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TradingPostHistoryDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingPostHistoryModelImpl implements _TradingPostHistoryModel {
  const _$TradingPostHistoryModelImpl({this.data});

  factory _$TradingPostHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradingPostHistoryModelImplFromJson(json);

  @override
  final TradingPostHistoryDataModel? data;

  @override
  String toString() {
    return 'TradingPostHistoryModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingPostHistoryModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingPostHistoryModelImplCopyWith<_$TradingPostHistoryModelImpl>
      get copyWith => __$$TradingPostHistoryModelImplCopyWithImpl<
          _$TradingPostHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingPostHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _TradingPostHistoryModel implements TradingPostHistoryModel {
  const factory _TradingPostHistoryModel(
          {final TradingPostHistoryDataModel? data}) =
      _$TradingPostHistoryModelImpl;

  factory _TradingPostHistoryModel.fromJson(Map<String, dynamic> json) =
      _$TradingPostHistoryModelImpl.fromJson;

  @override
  TradingPostHistoryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$TradingPostHistoryModelImplCopyWith<_$TradingPostHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TradingPostHistoryDataModel _$TradingPostHistoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _TradingPostHistoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$TradingPostHistoryDataModel {
  String get type => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;
  num get gold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradingPostHistoryDataModelCopyWith<TradingPostHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingPostHistoryDataModelCopyWith<$Res> {
  factory $TradingPostHistoryDataModelCopyWith(
          TradingPostHistoryDataModel value,
          $Res Function(TradingPostHistoryDataModel) then) =
      _$TradingPostHistoryDataModelCopyWithImpl<$Res,
          TradingPostHistoryDataModel>;
  @useResult
  $Res call({String type, DateTime datetime, num gold});
}

/// @nodoc
class _$TradingPostHistoryDataModelCopyWithImpl<$Res,
        $Val extends TradingPostHistoryDataModel>
    implements $TradingPostHistoryDataModelCopyWith<$Res> {
  _$TradingPostHistoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? datetime = null,
    Object? gold = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradingPostHistoryDataModelImplCopyWith<$Res>
    implements $TradingPostHistoryDataModelCopyWith<$Res> {
  factory _$$TradingPostHistoryDataModelImplCopyWith(
          _$TradingPostHistoryDataModelImpl value,
          $Res Function(_$TradingPostHistoryDataModelImpl) then) =
      __$$TradingPostHistoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, DateTime datetime, num gold});
}

/// @nodoc
class __$$TradingPostHistoryDataModelImplCopyWithImpl<$Res>
    extends _$TradingPostHistoryDataModelCopyWithImpl<$Res,
        _$TradingPostHistoryDataModelImpl>
    implements _$$TradingPostHistoryDataModelImplCopyWith<$Res> {
  __$$TradingPostHistoryDataModelImplCopyWithImpl(
      _$TradingPostHistoryDataModelImpl _value,
      $Res Function(_$TradingPostHistoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? datetime = null,
    Object? gold = null,
  }) {
    return _then(_$TradingPostHistoryDataModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingPostHistoryDataModelImpl
    implements _TradingPostHistoryDataModel {
  const _$TradingPostHistoryDataModelImpl(
      {required this.type, required this.datetime, required this.gold});

  factory _$TradingPostHistoryDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TradingPostHistoryDataModelImplFromJson(json);

  @override
  final String type;
  @override
  final DateTime datetime;
  @override
  final num gold;

  @override
  String toString() {
    return 'TradingPostHistoryDataModel(type: $type, datetime: $datetime, gold: $gold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingPostHistoryDataModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.gold, gold) || other.gold == gold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, datetime, gold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingPostHistoryDataModelImplCopyWith<_$TradingPostHistoryDataModelImpl>
      get copyWith => __$$TradingPostHistoryDataModelImplCopyWithImpl<
          _$TradingPostHistoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingPostHistoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _TradingPostHistoryDataModel
    implements TradingPostHistoryDataModel {
  const factory _TradingPostHistoryDataModel(
      {required final String type,
      required final DateTime datetime,
      required final num gold}) = _$TradingPostHistoryDataModelImpl;

  factory _TradingPostHistoryDataModel.fromJson(Map<String, dynamic> json) =
      _$TradingPostHistoryDataModelImpl.fromJson;

  @override
  String get type;
  @override
  DateTime get datetime;
  @override
  num get gold;
  @override
  @JsonKey(ignore: true)
  _$$TradingPostHistoryDataModelImplCopyWith<_$TradingPostHistoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TradingPostModel _$TradingPostModelFromJson(Map<String, dynamic> json) {
  return _TradingPostModel.fromJson(json);
}

/// @nodoc
mixin _$TradingPostModel {
  num get ownedGold => throw _privateConstructorUsedError;
  num get packedGold => throw _privateConstructorUsedError;
  num get packingFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradingPostModelCopyWith<TradingPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingPostModelCopyWith<$Res> {
  factory $TradingPostModelCopyWith(
          TradingPostModel value, $Res Function(TradingPostModel) then) =
      _$TradingPostModelCopyWithImpl<$Res, TradingPostModel>;
  @useResult
  $Res call({num ownedGold, num packedGold, num packingFee});
}

/// @nodoc
class _$TradingPostModelCopyWithImpl<$Res, $Val extends TradingPostModel>
    implements $TradingPostModelCopyWith<$Res> {
  _$TradingPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedGold = null,
    Object? packedGold = null,
    Object? packingFee = null,
  }) {
    return _then(_value.copyWith(
      ownedGold: null == ownedGold
          ? _value.ownedGold
          : ownedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packedGold: null == packedGold
          ? _value.packedGold
          : packedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packingFee: null == packingFee
          ? _value.packingFee
          : packingFee // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradingPostModelImplCopyWith<$Res>
    implements $TradingPostModelCopyWith<$Res> {
  factory _$$TradingPostModelImplCopyWith(_$TradingPostModelImpl value,
          $Res Function(_$TradingPostModelImpl) then) =
      __$$TradingPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num ownedGold, num packedGold, num packingFee});
}

/// @nodoc
class __$$TradingPostModelImplCopyWithImpl<$Res>
    extends _$TradingPostModelCopyWithImpl<$Res, _$TradingPostModelImpl>
    implements _$$TradingPostModelImplCopyWith<$Res> {
  __$$TradingPostModelImplCopyWithImpl(_$TradingPostModelImpl _value,
      $Res Function(_$TradingPostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedGold = null,
    Object? packedGold = null,
    Object? packingFee = null,
  }) {
    return _then(_$TradingPostModelImpl(
      ownedGold: null == ownedGold
          ? _value.ownedGold
          : ownedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packedGold: null == packedGold
          ? _value.packedGold
          : packedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packingFee: null == packingFee
          ? _value.packingFee
          : packingFee // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingPostModelImpl implements _TradingPostModel {
  const _$TradingPostModelImpl(
      {required this.ownedGold,
      required this.packedGold,
      required this.packingFee});

  factory _$TradingPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradingPostModelImplFromJson(json);

  @override
  final num ownedGold;
  @override
  final num packedGold;
  @override
  final num packingFee;

  @override
  String toString() {
    return 'TradingPostModel(ownedGold: $ownedGold, packedGold: $packedGold, packingFee: $packingFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingPostModelImpl &&
            (identical(other.ownedGold, ownedGold) ||
                other.ownedGold == ownedGold) &&
            (identical(other.packedGold, packedGold) ||
                other.packedGold == packedGold) &&
            (identical(other.packingFee, packingFee) ||
                other.packingFee == packingFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ownedGold, packedGold, packingFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingPostModelImplCopyWith<_$TradingPostModelImpl> get copyWith =>
      __$$TradingPostModelImplCopyWithImpl<_$TradingPostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingPostModelImplToJson(
      this,
    );
  }
}

abstract class _TradingPostModel implements TradingPostModel {
  const factory _TradingPostModel(
      {required final num ownedGold,
      required final num packedGold,
      required final num packingFee}) = _$TradingPostModelImpl;

  factory _TradingPostModel.fromJson(Map<String, dynamic> json) =
      _$TradingPostModelImpl.fromJson;

  @override
  num get ownedGold;
  @override
  num get packedGold;
  @override
  num get packingFee;
  @override
  @JsonKey(ignore: true)
  _$$TradingPostModelImplCopyWith<_$TradingPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradingPostProcessingModel _$TradingPostProcessingModelFromJson(
    Map<String, dynamic> json) {
  return _TradingPostProcessingModel.fromJson(json);
}

/// @nodoc
mixin _$TradingPostProcessingModel {
  bool get isProcessing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradingPostProcessingModelCopyWith<TradingPostProcessingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingPostProcessingModelCopyWith<$Res> {
  factory $TradingPostProcessingModelCopyWith(TradingPostProcessingModel value,
          $Res Function(TradingPostProcessingModel) then) =
      _$TradingPostProcessingModelCopyWithImpl<$Res,
          TradingPostProcessingModel>;
  @useResult
  $Res call({bool isProcessing});
}

/// @nodoc
class _$TradingPostProcessingModelCopyWithImpl<$Res,
        $Val extends TradingPostProcessingModel>
    implements $TradingPostProcessingModelCopyWith<$Res> {
  _$TradingPostProcessingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
  }) {
    return _then(_value.copyWith(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradingPostProcessingModelImplCopyWith<$Res>
    implements $TradingPostProcessingModelCopyWith<$Res> {
  factory _$$TradingPostProcessingModelImplCopyWith(
          _$TradingPostProcessingModelImpl value,
          $Res Function(_$TradingPostProcessingModelImpl) then) =
      __$$TradingPostProcessingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isProcessing});
}

/// @nodoc
class __$$TradingPostProcessingModelImplCopyWithImpl<$Res>
    extends _$TradingPostProcessingModelCopyWithImpl<$Res,
        _$TradingPostProcessingModelImpl>
    implements _$$TradingPostProcessingModelImplCopyWith<$Res> {
  __$$TradingPostProcessingModelImplCopyWithImpl(
      _$TradingPostProcessingModelImpl _value,
      $Res Function(_$TradingPostProcessingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
  }) {
    return _then(_$TradingPostProcessingModelImpl(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradingPostProcessingModelImpl implements _TradingPostProcessingModel {
  const _$TradingPostProcessingModelImpl({required this.isProcessing});

  factory _$TradingPostProcessingModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TradingPostProcessingModelImplFromJson(json);

  @override
  final bool isProcessing;

  @override
  String toString() {
    return 'TradingPostProcessingModel(isProcessing: $isProcessing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradingPostProcessingModelImpl &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isProcessing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradingPostProcessingModelImplCopyWith<_$TradingPostProcessingModelImpl>
      get copyWith => __$$TradingPostProcessingModelImplCopyWithImpl<
          _$TradingPostProcessingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradingPostProcessingModelImplToJson(
      this,
    );
  }
}

abstract class _TradingPostProcessingModel
    implements TradingPostProcessingModel {
  const factory _TradingPostProcessingModel(
      {required final bool isProcessing}) = _$TradingPostProcessingModelImpl;

  factory _TradingPostProcessingModel.fromJson(Map<String, dynamic> json) =
      _$TradingPostProcessingModelImpl.fromJson;

  @override
  bool get isProcessing;
  @override
  @JsonKey(ignore: true)
  _$$TradingPostProcessingModelImplCopyWith<_$TradingPostProcessingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackingConfirmModel _$PackingConfirmModelFromJson(Map<String, dynamic> json) {
  return _PackingConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$PackingConfirmModel {
  num get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackingConfirmModelCopyWith<PackingConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingConfirmModelCopyWith<$Res> {
  factory $PackingConfirmModelCopyWith(
          PackingConfirmModel value, $Res Function(PackingConfirmModel) then) =
      _$PackingConfirmModelCopyWithImpl<$Res, PackingConfirmModel>;
  @useResult
  $Res call({num amount});
}

/// @nodoc
class _$PackingConfirmModelCopyWithImpl<$Res, $Val extends PackingConfirmModel>
    implements $PackingConfirmModelCopyWith<$Res> {
  _$PackingConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackingConfirmModelImplCopyWith<$Res>
    implements $PackingConfirmModelCopyWith<$Res> {
  factory _$$PackingConfirmModelImplCopyWith(_$PackingConfirmModelImpl value,
          $Res Function(_$PackingConfirmModelImpl) then) =
      __$$PackingConfirmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount});
}

/// @nodoc
class __$$PackingConfirmModelImplCopyWithImpl<$Res>
    extends _$PackingConfirmModelCopyWithImpl<$Res, _$PackingConfirmModelImpl>
    implements _$$PackingConfirmModelImplCopyWith<$Res> {
  __$$PackingConfirmModelImplCopyWithImpl(_$PackingConfirmModelImpl _value,
      $Res Function(_$PackingConfirmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$PackingConfirmModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackingConfirmModelImpl implements _PackingConfirmModel {
  const _$PackingConfirmModelImpl({required this.amount});

  factory _$PackingConfirmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackingConfirmModelImplFromJson(json);

  @override
  final num amount;

  @override
  String toString() {
    return 'PackingConfirmModel(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingConfirmModelImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingConfirmModelImplCopyWith<_$PackingConfirmModelImpl> get copyWith =>
      __$$PackingConfirmModelImplCopyWithImpl<_$PackingConfirmModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackingConfirmModelImplToJson(
      this,
    );
  }
}

abstract class _PackingConfirmModel implements PackingConfirmModel {
  const factory _PackingConfirmModel({required final num amount}) =
      _$PackingConfirmModelImpl;

  factory _PackingConfirmModel.fromJson(Map<String, dynamic> json) =
      _$PackingConfirmModelImpl.fromJson;

  @override
  num get amount;
  @override
  @JsonKey(ignore: true)
  _$$PackingConfirmModelImplCopyWith<_$PackingConfirmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfirmModel _$ConfirmModelFromJson(Map<String, dynamic> json) {
  return _ConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmModel {
  num get ownedGold => throw _privateConstructorUsedError;
  num get packedGold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmModelCopyWith<ConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmModelCopyWith<$Res> {
  factory $ConfirmModelCopyWith(
          ConfirmModel value, $Res Function(ConfirmModel) then) =
      _$ConfirmModelCopyWithImpl<$Res, ConfirmModel>;
  @useResult
  $Res call({num ownedGold, num packedGold});
}

/// @nodoc
class _$ConfirmModelCopyWithImpl<$Res, $Val extends ConfirmModel>
    implements $ConfirmModelCopyWith<$Res> {
  _$ConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedGold = null,
    Object? packedGold = null,
  }) {
    return _then(_value.copyWith(
      ownedGold: null == ownedGold
          ? _value.ownedGold
          : ownedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packedGold: null == packedGold
          ? _value.packedGold
          : packedGold // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmModelImplCopyWith<$Res>
    implements $ConfirmModelCopyWith<$Res> {
  factory _$$ConfirmModelImplCopyWith(
          _$ConfirmModelImpl value, $Res Function(_$ConfirmModelImpl) then) =
      __$$ConfirmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num ownedGold, num packedGold});
}

/// @nodoc
class __$$ConfirmModelImplCopyWithImpl<$Res>
    extends _$ConfirmModelCopyWithImpl<$Res, _$ConfirmModelImpl>
    implements _$$ConfirmModelImplCopyWith<$Res> {
  __$$ConfirmModelImplCopyWithImpl(
      _$ConfirmModelImpl _value, $Res Function(_$ConfirmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedGold = null,
    Object? packedGold = null,
  }) {
    return _then(_$ConfirmModelImpl(
      ownedGold: null == ownedGold
          ? _value.ownedGold
          : ownedGold // ignore: cast_nullable_to_non_nullable
              as num,
      packedGold: null == packedGold
          ? _value.packedGold
          : packedGold // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmModelImpl implements _ConfirmModel {
  const _$ConfirmModelImpl({required this.ownedGold, required this.packedGold});

  factory _$ConfirmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmModelImplFromJson(json);

  @override
  final num ownedGold;
  @override
  final num packedGold;

  @override
  String toString() {
    return 'ConfirmModel(ownedGold: $ownedGold, packedGold: $packedGold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmModelImpl &&
            (identical(other.ownedGold, ownedGold) ||
                other.ownedGold == ownedGold) &&
            (identical(other.packedGold, packedGold) ||
                other.packedGold == packedGold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownedGold, packedGold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmModelImplCopyWith<_$ConfirmModelImpl> get copyWith =>
      __$$ConfirmModelImplCopyWithImpl<_$ConfirmModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmModel implements ConfirmModel {
  const factory _ConfirmModel(
      {required final num ownedGold,
      required final num packedGold}) = _$ConfirmModelImpl;

  factory _ConfirmModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmModelImpl.fromJson;

  @override
  num get ownedGold;
  @override
  num get packedGold;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmModelImplCopyWith<_$ConfirmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
