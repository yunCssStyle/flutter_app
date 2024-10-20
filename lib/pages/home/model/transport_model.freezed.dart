// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportModel _$TransportModelFromJson(Map<String, dynamic> json) {
  return _TransportModel.fromJson(json);
}

/// @nodoc
mixin _$TransportModel {
  num get transportedGold => throw _privateConstructorUsedError;
  num get transportFeeRate => throw _privateConstructorUsedError;
  List<TransportDataModel> get transportSchedules =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportModelCopyWith<TransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModelCopyWith<$Res> {
  factory $TransportModelCopyWith(
          TransportModel value, $Res Function(TransportModel) then) =
      _$TransportModelCopyWithImpl<$Res, TransportModel>;
  @useResult
  $Res call(
      {num transportedGold,
      num transportFeeRate,
      List<TransportDataModel> transportSchedules});
}

/// @nodoc
class _$TransportModelCopyWithImpl<$Res, $Val extends TransportModel>
    implements $TransportModelCopyWith<$Res> {
  _$TransportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportedGold = null,
    Object? transportFeeRate = null,
    Object? transportSchedules = null,
  }) {
    return _then(_value.copyWith(
      transportedGold: null == transportedGold
          ? _value.transportedGold
          : transportedGold // ignore: cast_nullable_to_non_nullable
              as num,
      transportFeeRate: null == transportFeeRate
          ? _value.transportFeeRate
          : transportFeeRate // ignore: cast_nullable_to_non_nullable
              as num,
      transportSchedules: null == transportSchedules
          ? _value.transportSchedules
          : transportSchedules // ignore: cast_nullable_to_non_nullable
              as List<TransportDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportModelImplCopyWith<$Res>
    implements $TransportModelCopyWith<$Res> {
  factory _$$TransportModelImplCopyWith(_$TransportModelImpl value,
          $Res Function(_$TransportModelImpl) then) =
      __$$TransportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num transportedGold,
      num transportFeeRate,
      List<TransportDataModel> transportSchedules});
}

/// @nodoc
class __$$TransportModelImplCopyWithImpl<$Res>
    extends _$TransportModelCopyWithImpl<$Res, _$TransportModelImpl>
    implements _$$TransportModelImplCopyWith<$Res> {
  __$$TransportModelImplCopyWithImpl(
      _$TransportModelImpl _value, $Res Function(_$TransportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportedGold = null,
    Object? transportFeeRate = null,
    Object? transportSchedules = null,
  }) {
    return _then(_$TransportModelImpl(
      transportedGold: null == transportedGold
          ? _value.transportedGold
          : transportedGold // ignore: cast_nullable_to_non_nullable
              as num,
      transportFeeRate: null == transportFeeRate
          ? _value.transportFeeRate
          : transportFeeRate // ignore: cast_nullable_to_non_nullable
              as num,
      transportSchedules: null == transportSchedules
          ? _value._transportSchedules
          : transportSchedules // ignore: cast_nullable_to_non_nullable
              as List<TransportDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportModelImpl implements _TransportModel {
  const _$TransportModelImpl(
      {required this.transportedGold,
      required this.transportFeeRate,
      required final List<TransportDataModel> transportSchedules})
      : _transportSchedules = transportSchedules;

  factory _$TransportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportModelImplFromJson(json);

  @override
  final num transportedGold;
  @override
  final num transportFeeRate;
  final List<TransportDataModel> _transportSchedules;
  @override
  List<TransportDataModel> get transportSchedules {
    if (_transportSchedules is EqualUnmodifiableListView)
      return _transportSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportSchedules);
  }

  @override
  String toString() {
    return 'TransportModel(transportedGold: $transportedGold, transportFeeRate: $transportFeeRate, transportSchedules: $transportSchedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportModelImpl &&
            (identical(other.transportedGold, transportedGold) ||
                other.transportedGold == transportedGold) &&
            (identical(other.transportFeeRate, transportFeeRate) ||
                other.transportFeeRate == transportFeeRate) &&
            const DeepCollectionEquality()
                .equals(other._transportSchedules, _transportSchedules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transportedGold,
      transportFeeRate,
      const DeepCollectionEquality().hash(_transportSchedules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      __$$TransportModelImplCopyWithImpl<_$TransportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportModelImplToJson(
      this,
    );
  }
}

abstract class _TransportModel implements TransportModel {
  const factory _TransportModel(
          {required final num transportedGold,
          required final num transportFeeRate,
          required final List<TransportDataModel> transportSchedules}) =
      _$TransportModelImpl;

  factory _TransportModel.fromJson(Map<String, dynamic> json) =
      _$TransportModelImpl.fromJson;

  @override
  num get transportedGold;
  @override
  num get transportFeeRate;
  @override
  List<TransportDataModel> get transportSchedules;
  @override
  @JsonKey(ignore: true)
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportDataModel _$TransportDataModelFromJson(Map<String, dynamic> json) {
  return _TransportDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransportDataModel {
  int get departureTime => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportDataModelCopyWith<TransportDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportDataModelCopyWith<$Res> {
  factory $TransportDataModelCopyWith(
          TransportDataModel value, $Res Function(TransportDataModel) then) =
      _$TransportDataModelCopyWithImpl<$Res, TransportDataModel>;
  @useResult
  $Res call({int departureTime, bool completed});
}

/// @nodoc
class _$TransportDataModelCopyWithImpl<$Res, $Val extends TransportDataModel>
    implements $TransportDataModelCopyWith<$Res> {
  _$TransportDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportDataModelImplCopyWith<$Res>
    implements $TransportDataModelCopyWith<$Res> {
  factory _$$TransportDataModelImplCopyWith(_$TransportDataModelImpl value,
          $Res Function(_$TransportDataModelImpl) then) =
      __$$TransportDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departureTime, bool completed});
}

/// @nodoc
class __$$TransportDataModelImplCopyWithImpl<$Res>
    extends _$TransportDataModelCopyWithImpl<$Res, _$TransportDataModelImpl>
    implements _$$TransportDataModelImplCopyWith<$Res> {
  __$$TransportDataModelImplCopyWithImpl(_$TransportDataModelImpl _value,
      $Res Function(_$TransportDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? completed = null,
  }) {
    return _then(_$TransportDataModelImpl(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportDataModelImpl implements _TransportDataModel {
  const _$TransportDataModelImpl(
      {required this.departureTime, required this.completed});

  factory _$TransportDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportDataModelImplFromJson(json);

  @override
  final int departureTime;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TransportDataModel(departureTime: $departureTime, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportDataModelImpl &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departureTime, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportDataModelImplCopyWith<_$TransportDataModelImpl> get copyWith =>
      __$$TransportDataModelImplCopyWithImpl<_$TransportDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransportDataModel implements TransportDataModel {
  const factory _TransportDataModel(
      {required final int departureTime,
      required final bool completed}) = _$TransportDataModelImpl;

  factory _TransportDataModel.fromJson(Map<String, dynamic> json) =
      _$TransportDataModelImpl.fromJson;

  @override
  int get departureTime;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TransportDataModelImplCopyWith<_$TransportDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportHistoryModel _$TransportHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _TransportHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$TransportHistoryModel {
  List<TransportsModel> get transports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportHistoryModelCopyWith<TransportHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportHistoryModelCopyWith<$Res> {
  factory $TransportHistoryModelCopyWith(TransportHistoryModel value,
          $Res Function(TransportHistoryModel) then) =
      _$TransportHistoryModelCopyWithImpl<$Res, TransportHistoryModel>;
  @useResult
  $Res call({List<TransportsModel> transports});
}

/// @nodoc
class _$TransportHistoryModelCopyWithImpl<$Res,
        $Val extends TransportHistoryModel>
    implements $TransportHistoryModelCopyWith<$Res> {
  _$TransportHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transports = null,
  }) {
    return _then(_value.copyWith(
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportHistoryModelImplCopyWith<$Res>
    implements $TransportHistoryModelCopyWith<$Res> {
  factory _$$TransportHistoryModelImplCopyWith(
          _$TransportHistoryModelImpl value,
          $Res Function(_$TransportHistoryModelImpl) then) =
      __$$TransportHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransportsModel> transports});
}

/// @nodoc
class __$$TransportHistoryModelImplCopyWithImpl<$Res>
    extends _$TransportHistoryModelCopyWithImpl<$Res,
        _$TransportHistoryModelImpl>
    implements _$$TransportHistoryModelImplCopyWith<$Res> {
  __$$TransportHistoryModelImplCopyWithImpl(_$TransportHistoryModelImpl _value,
      $Res Function(_$TransportHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transports = null,
  }) {
    return _then(_$TransportHistoryModelImpl(
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportHistoryModelImpl implements _TransportHistoryModel {
  const _$TransportHistoryModelImpl(
      {required final List<TransportsModel> transports})
      : _transports = transports;

  factory _$TransportHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportHistoryModelImplFromJson(json);

  final List<TransportsModel> _transports;
  @override
  List<TransportsModel> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @override
  String toString() {
    return 'TransportHistoryModel(transports: $transports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportHistoryModelImpl &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportHistoryModelImplCopyWith<_$TransportHistoryModelImpl>
      get copyWith => __$$TransportHistoryModelImplCopyWithImpl<
          _$TransportHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _TransportHistoryModel implements TransportHistoryModel {
  const factory _TransportHistoryModel(
          {required final List<TransportsModel> transports}) =
      _$TransportHistoryModelImpl;

  factory _TransportHistoryModel.fromJson(Map<String, dynamic> json) =
      _$TransportHistoryModelImpl.fromJson;

  @override
  List<TransportsModel> get transports;
  @override
  @JsonKey(ignore: true)
  _$$TransportHistoryModelImplCopyWith<_$TransportHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransportsModel _$TransportsModelFromJson(Map<String, dynamic> json) {
  return _TransportsModel.fromJson(json);
}

/// @nodoc
mixin _$TransportsModel {
  int get departureTime => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  TransportsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportsModelCopyWith<TransportsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportsModelCopyWith<$Res> {
  factory $TransportsModelCopyWith(
          TransportsModel value, $Res Function(TransportsModel) then) =
      _$TransportsModelCopyWithImpl<$Res, TransportsModel>;
  @useResult
  $Res call({int departureTime, bool completed, TransportsDataModel? data});

  $TransportsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransportsModelCopyWithImpl<$Res, $Val extends TransportsModel>
    implements $TransportsModelCopyWith<$Res> {
  _$TransportsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? completed = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransportsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransportsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransportsModelImplCopyWith<$Res>
    implements $TransportsModelCopyWith<$Res> {
  factory _$$TransportsModelImplCopyWith(_$TransportsModelImpl value,
          $Res Function(_$TransportsModelImpl) then) =
      __$$TransportsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departureTime, bool completed, TransportsDataModel? data});

  @override
  $TransportsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TransportsModelImplCopyWithImpl<$Res>
    extends _$TransportsModelCopyWithImpl<$Res, _$TransportsModelImpl>
    implements _$$TransportsModelImplCopyWith<$Res> {
  __$$TransportsModelImplCopyWithImpl(
      _$TransportsModelImpl _value, $Res Function(_$TransportsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? completed = null,
    Object? data = freezed,
  }) {
    return _then(_$TransportsModelImpl(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransportsDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportsModelImpl implements _TransportsModel {
  const _$TransportsModelImpl(
      {required this.departureTime, required this.completed, this.data});

  factory _$TransportsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportsModelImplFromJson(json);

  @override
  final int departureTime;
  @override
  final bool completed;
  @override
  final TransportsDataModel? data;

  @override
  String toString() {
    return 'TransportsModel(departureTime: $departureTime, completed: $completed, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportsModelImpl &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departureTime, completed, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportsModelImplCopyWith<_$TransportsModelImpl> get copyWith =>
      __$$TransportsModelImplCopyWithImpl<_$TransportsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportsModelImplToJson(
      this,
    );
  }
}

abstract class _TransportsModel implements TransportsModel {
  const factory _TransportsModel(
      {required final int departureTime,
      required final bool completed,
      final TransportsDataModel? data}) = _$TransportsModelImpl;

  factory _TransportsModel.fromJson(Map<String, dynamic> json) =
      _$TransportsModelImpl.fromJson;

  @override
  int get departureTime;
  @override
  bool get completed;
  @override
  TransportsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$TransportsModelImplCopyWith<_$TransportsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportsDataModel _$TransportsDataModelFromJson(Map<String, dynamic> json) {
  return _TransportsDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransportsDataModel {
  num get transportAmount => throw _privateConstructorUsedError;
  num get transportFee => throw _privateConstructorUsedError;
  num get jackpotFund => throw _privateConstructorUsedError;
  num get acquiredAmount => throw _privateConstructorUsedError;
  bool get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportsDataModelCopyWith<TransportsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportsDataModelCopyWith<$Res> {
  factory $TransportsDataModelCopyWith(
          TransportsDataModel value, $Res Function(TransportsDataModel) then) =
      _$TransportsDataModelCopyWithImpl<$Res, TransportsDataModel>;
  @useResult
  $Res call(
      {num transportAmount,
      num transportFee,
      num jackpotFund,
      num acquiredAmount,
      bool bonus});
}

/// @nodoc
class _$TransportsDataModelCopyWithImpl<$Res, $Val extends TransportsDataModel>
    implements $TransportsDataModelCopyWith<$Res> {
  _$TransportsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportAmount = null,
    Object? transportFee = null,
    Object? jackpotFund = null,
    Object? acquiredAmount = null,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      transportAmount: null == transportAmount
          ? _value.transportAmount
          : transportAmount // ignore: cast_nullable_to_non_nullable
              as num,
      transportFee: null == transportFee
          ? _value.transportFee
          : transportFee // ignore: cast_nullable_to_non_nullable
              as num,
      jackpotFund: null == jackpotFund
          ? _value.jackpotFund
          : jackpotFund // ignore: cast_nullable_to_non_nullable
              as num,
      acquiredAmount: null == acquiredAmount
          ? _value.acquiredAmount
          : acquiredAmount // ignore: cast_nullable_to_non_nullable
              as num,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportsDataModelImplCopyWith<$Res>
    implements $TransportsDataModelCopyWith<$Res> {
  factory _$$TransportsDataModelImplCopyWith(_$TransportsDataModelImpl value,
          $Res Function(_$TransportsDataModelImpl) then) =
      __$$TransportsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num transportAmount,
      num transportFee,
      num jackpotFund,
      num acquiredAmount,
      bool bonus});
}

/// @nodoc
class __$$TransportsDataModelImplCopyWithImpl<$Res>
    extends _$TransportsDataModelCopyWithImpl<$Res, _$TransportsDataModelImpl>
    implements _$$TransportsDataModelImplCopyWith<$Res> {
  __$$TransportsDataModelImplCopyWithImpl(_$TransportsDataModelImpl _value,
      $Res Function(_$TransportsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportAmount = null,
    Object? transportFee = null,
    Object? jackpotFund = null,
    Object? acquiredAmount = null,
    Object? bonus = null,
  }) {
    return _then(_$TransportsDataModelImpl(
      transportAmount: null == transportAmount
          ? _value.transportAmount
          : transportAmount // ignore: cast_nullable_to_non_nullable
              as num,
      transportFee: null == transportFee
          ? _value.transportFee
          : transportFee // ignore: cast_nullable_to_non_nullable
              as num,
      jackpotFund: null == jackpotFund
          ? _value.jackpotFund
          : jackpotFund // ignore: cast_nullable_to_non_nullable
              as num,
      acquiredAmount: null == acquiredAmount
          ? _value.acquiredAmount
          : acquiredAmount // ignore: cast_nullable_to_non_nullable
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
class _$TransportsDataModelImpl implements _TransportsDataModel {
  const _$TransportsDataModelImpl(
      {required this.transportAmount,
      required this.transportFee,
      required this.jackpotFund,
      required this.acquiredAmount,
      required this.bonus});

  factory _$TransportsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportsDataModelImplFromJson(json);

  @override
  final num transportAmount;
  @override
  final num transportFee;
  @override
  final num jackpotFund;
  @override
  final num acquiredAmount;
  @override
  final bool bonus;

  @override
  String toString() {
    return 'TransportsDataModel(transportAmount: $transportAmount, transportFee: $transportFee, jackpotFund: $jackpotFund, acquiredAmount: $acquiredAmount, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportsDataModelImpl &&
            (identical(other.transportAmount, transportAmount) ||
                other.transportAmount == transportAmount) &&
            (identical(other.transportFee, transportFee) ||
                other.transportFee == transportFee) &&
            (identical(other.jackpotFund, jackpotFund) ||
                other.jackpotFund == jackpotFund) &&
            (identical(other.acquiredAmount, acquiredAmount) ||
                other.acquiredAmount == acquiredAmount) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transportAmount, transportFee,
      jackpotFund, acquiredAmount, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportsDataModelImplCopyWith<_$TransportsDataModelImpl> get copyWith =>
      __$$TransportsDataModelImplCopyWithImpl<_$TransportsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportsDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransportsDataModel implements TransportsDataModel {
  const factory _TransportsDataModel(
      {required final num transportAmount,
      required final num transportFee,
      required final num jackpotFund,
      required final num acquiredAmount,
      required final bool bonus}) = _$TransportsDataModelImpl;

  factory _TransportsDataModel.fromJson(Map<String, dynamic> json) =
      _$TransportsDataModelImpl.fromJson;

  @override
  num get transportAmount;
  @override
  num get transportFee;
  @override
  num get jackpotFund;
  @override
  num get acquiredAmount;
  @override
  bool get bonus;
  @override
  @JsonKey(ignore: true)
  _$$TransportsDataModelImplCopyWith<_$TransportsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
