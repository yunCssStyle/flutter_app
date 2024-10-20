// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleModel {
  List<TransportSchedulesModel> get transportSchedules =>
      throw _privateConstructorUsedError;
  ConfirmStatusModel get confirmStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res, ScheduleModel>;
  @useResult
  $Res call(
      {List<TransportSchedulesModel> transportSchedules,
      ConfirmStatusModel confirmStatus});

  $ConfirmStatusModelCopyWith<$Res> get confirmStatus;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res, $Val extends ScheduleModel>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportSchedules = null,
    Object? confirmStatus = null,
  }) {
    return _then(_value.copyWith(
      transportSchedules: null == transportSchedules
          ? _value.transportSchedules
          : transportSchedules // ignore: cast_nullable_to_non_nullable
              as List<TransportSchedulesModel>,
      confirmStatus: null == confirmStatus
          ? _value.confirmStatus
          : confirmStatus // ignore: cast_nullable_to_non_nullable
              as ConfirmStatusModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfirmStatusModelCopyWith<$Res> get confirmStatus {
    return $ConfirmStatusModelCopyWith<$Res>(_value.confirmStatus, (value) {
      return _then(_value.copyWith(confirmStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleModelImplCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$ScheduleModelImplCopyWith(
          _$ScheduleModelImpl value, $Res Function(_$ScheduleModelImpl) then) =
      __$$ScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransportSchedulesModel> transportSchedules,
      ConfirmStatusModel confirmStatus});

  @override
  $ConfirmStatusModelCopyWith<$Res> get confirmStatus;
}

/// @nodoc
class __$$ScheduleModelImplCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res, _$ScheduleModelImpl>
    implements _$$ScheduleModelImplCopyWith<$Res> {
  __$$ScheduleModelImplCopyWithImpl(
      _$ScheduleModelImpl _value, $Res Function(_$ScheduleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportSchedules = null,
    Object? confirmStatus = null,
  }) {
    return _then(_$ScheduleModelImpl(
      transportSchedules: null == transportSchedules
          ? _value._transportSchedules
          : transportSchedules // ignore: cast_nullable_to_non_nullable
              as List<TransportSchedulesModel>,
      confirmStatus: null == confirmStatus
          ? _value.confirmStatus
          : confirmStatus // ignore: cast_nullable_to_non_nullable
              as ConfirmStatusModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleModelImpl implements _ScheduleModel {
  const _$ScheduleModelImpl(
      {required final List<TransportSchedulesModel> transportSchedules,
      required this.confirmStatus})
      : _transportSchedules = transportSchedules;

  factory _$ScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleModelImplFromJson(json);

  final List<TransportSchedulesModel> _transportSchedules;
  @override
  List<TransportSchedulesModel> get transportSchedules {
    if (_transportSchedules is EqualUnmodifiableListView)
      return _transportSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportSchedules);
  }

  @override
  final ConfirmStatusModel confirmStatus;

  @override
  String toString() {
    return 'ScheduleModel(transportSchedules: $transportSchedules, confirmStatus: $confirmStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleModelImpl &&
            const DeepCollectionEquality()
                .equals(other._transportSchedules, _transportSchedules) &&
            (identical(other.confirmStatus, confirmStatus) ||
                other.confirmStatus == confirmStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transportSchedules), confirmStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      __$$ScheduleModelImplCopyWithImpl<_$ScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  const factory _ScheduleModel(
      {required final List<TransportSchedulesModel> transportSchedules,
      required final ConfirmStatusModel confirmStatus}) = _$ScheduleModelImpl;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleModelImpl.fromJson;

  @override
  List<TransportSchedulesModel> get transportSchedules;
  @override
  ConfirmStatusModel get confirmStatus;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportSchedulesModel _$TransportSchedulesModelFromJson(
    Map<String, dynamic> json) {
  return _TransportSchedulesModel.fromJson(json);
}

/// @nodoc
mixin _$TransportSchedulesModel {
  int get departureTime => throw _privateConstructorUsedError;
  bool get reserved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportSchedulesModelCopyWith<TransportSchedulesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportSchedulesModelCopyWith<$Res> {
  factory $TransportSchedulesModelCopyWith(TransportSchedulesModel value,
          $Res Function(TransportSchedulesModel) then) =
      _$TransportSchedulesModelCopyWithImpl<$Res, TransportSchedulesModel>;
  @useResult
  $Res call({int departureTime, bool reserved});
}

/// @nodoc
class _$TransportSchedulesModelCopyWithImpl<$Res,
        $Val extends TransportSchedulesModel>
    implements $TransportSchedulesModelCopyWith<$Res> {
  _$TransportSchedulesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? reserved = null,
  }) {
    return _then(_value.copyWith(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      reserved: null == reserved
          ? _value.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportSchedulesModelImplCopyWith<$Res>
    implements $TransportSchedulesModelCopyWith<$Res> {
  factory _$$TransportSchedulesModelImplCopyWith(
          _$TransportSchedulesModelImpl value,
          $Res Function(_$TransportSchedulesModelImpl) then) =
      __$$TransportSchedulesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departureTime, bool reserved});
}

/// @nodoc
class __$$TransportSchedulesModelImplCopyWithImpl<$Res>
    extends _$TransportSchedulesModelCopyWithImpl<$Res,
        _$TransportSchedulesModelImpl>
    implements _$$TransportSchedulesModelImplCopyWith<$Res> {
  __$$TransportSchedulesModelImplCopyWithImpl(
      _$TransportSchedulesModelImpl _value,
      $Res Function(_$TransportSchedulesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = null,
    Object? reserved = null,
  }) {
    return _then(_$TransportSchedulesModelImpl(
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as int,
      reserved: null == reserved
          ? _value.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportSchedulesModelImpl implements _TransportSchedulesModel {
  const _$TransportSchedulesModelImpl(
      {required this.departureTime, required this.reserved});

  factory _$TransportSchedulesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportSchedulesModelImplFromJson(json);

  @override
  final int departureTime;
  @override
  final bool reserved;

  @override
  String toString() {
    return 'TransportSchedulesModel(departureTime: $departureTime, reserved: $reserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportSchedulesModelImpl &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.reserved, reserved) ||
                other.reserved == reserved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departureTime, reserved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportSchedulesModelImplCopyWith<_$TransportSchedulesModelImpl>
      get copyWith => __$$TransportSchedulesModelImplCopyWithImpl<
          _$TransportSchedulesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportSchedulesModelImplToJson(
      this,
    );
  }
}

abstract class _TransportSchedulesModel implements TransportSchedulesModel {
  const factory _TransportSchedulesModel(
      {required final int departureTime,
      required final bool reserved}) = _$TransportSchedulesModelImpl;

  factory _TransportSchedulesModel.fromJson(Map<String, dynamic> json) =
      _$TransportSchedulesModelImpl.fromJson;

  @override
  int get departureTime;
  @override
  bool get reserved;
  @override
  @JsonKey(ignore: true)
  _$$TransportSchedulesModelImplCopyWith<_$TransportSchedulesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmStatusModel _$ConfirmStatusModelFromJson(Map<String, dynamic> json) {
  return _ConfirmStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmStatusModel {
  int get reservedCount => throw _privateConstructorUsedError;
  int get maxCount => throw _privateConstructorUsedError;
  List<FeeRateModel> get feeRates => throw _privateConstructorUsedError;
  num get jackpotFundRate => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmStatusModelCopyWith<ConfirmStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmStatusModelCopyWith<$Res> {
  factory $ConfirmStatusModelCopyWith(
          ConfirmStatusModel value, $Res Function(ConfirmStatusModel) then) =
      _$ConfirmStatusModelCopyWithImpl<$Res, ConfirmStatusModel>;
  @useResult
  $Res call(
      {int reservedCount,
      int maxCount,
      List<FeeRateModel> feeRates,
      num jackpotFundRate,
      bool locked});
}

/// @nodoc
class _$ConfirmStatusModelCopyWithImpl<$Res, $Val extends ConfirmStatusModel>
    implements $ConfirmStatusModelCopyWith<$Res> {
  _$ConfirmStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservedCount = null,
    Object? maxCount = null,
    Object? feeRates = null,
    Object? jackpotFundRate = null,
    Object? locked = null,
  }) {
    return _then(_value.copyWith(
      reservedCount: null == reservedCount
          ? _value.reservedCount
          : reservedCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: null == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int,
      feeRates: null == feeRates
          ? _value.feeRates
          : feeRates // ignore: cast_nullable_to_non_nullable
              as List<FeeRateModel>,
      jackpotFundRate: null == jackpotFundRate
          ? _value.jackpotFundRate
          : jackpotFundRate // ignore: cast_nullable_to_non_nullable
              as num,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmStatusModelImplCopyWith<$Res>
    implements $ConfirmStatusModelCopyWith<$Res> {
  factory _$$ConfirmStatusModelImplCopyWith(_$ConfirmStatusModelImpl value,
          $Res Function(_$ConfirmStatusModelImpl) then) =
      __$$ConfirmStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reservedCount,
      int maxCount,
      List<FeeRateModel> feeRates,
      num jackpotFundRate,
      bool locked});
}

/// @nodoc
class __$$ConfirmStatusModelImplCopyWithImpl<$Res>
    extends _$ConfirmStatusModelCopyWithImpl<$Res, _$ConfirmStatusModelImpl>
    implements _$$ConfirmStatusModelImplCopyWith<$Res> {
  __$$ConfirmStatusModelImplCopyWithImpl(_$ConfirmStatusModelImpl _value,
      $Res Function(_$ConfirmStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservedCount = null,
    Object? maxCount = null,
    Object? feeRates = null,
    Object? jackpotFundRate = null,
    Object? locked = null,
  }) {
    return _then(_$ConfirmStatusModelImpl(
      reservedCount: null == reservedCount
          ? _value.reservedCount
          : reservedCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: null == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int,
      feeRates: null == feeRates
          ? _value._feeRates
          : feeRates // ignore: cast_nullable_to_non_nullable
              as List<FeeRateModel>,
      jackpotFundRate: null == jackpotFundRate
          ? _value.jackpotFundRate
          : jackpotFundRate // ignore: cast_nullable_to_non_nullable
              as num,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmStatusModelImpl implements _ConfirmStatusModel {
  const _$ConfirmStatusModelImpl(
      {required this.reservedCount,
      required this.maxCount,
      required final List<FeeRateModel> feeRates,
      required this.jackpotFundRate,
      required this.locked})
      : _feeRates = feeRates;

  factory _$ConfirmStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmStatusModelImplFromJson(json);

  @override
  final int reservedCount;
  @override
  final int maxCount;
  final List<FeeRateModel> _feeRates;
  @override
  List<FeeRateModel> get feeRates {
    if (_feeRates is EqualUnmodifiableListView) return _feeRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeRates);
  }

  @override
  final num jackpotFundRate;
  @override
  final bool locked;

  @override
  String toString() {
    return 'ConfirmStatusModel(reservedCount: $reservedCount, maxCount: $maxCount, feeRates: $feeRates, jackpotFundRate: $jackpotFundRate, locked: $locked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmStatusModelImpl &&
            (identical(other.reservedCount, reservedCount) ||
                other.reservedCount == reservedCount) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            const DeepCollectionEquality().equals(other._feeRates, _feeRates) &&
            (identical(other.jackpotFundRate, jackpotFundRate) ||
                other.jackpotFundRate == jackpotFundRate) &&
            (identical(other.locked, locked) || other.locked == locked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reservedCount, maxCount,
      const DeepCollectionEquality().hash(_feeRates), jackpotFundRate, locked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmStatusModelImplCopyWith<_$ConfirmStatusModelImpl> get copyWith =>
      __$$ConfirmStatusModelImplCopyWithImpl<_$ConfirmStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmStatusModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmStatusModel implements ConfirmStatusModel {
  const factory _ConfirmStatusModel(
      {required final int reservedCount,
      required final int maxCount,
      required final List<FeeRateModel> feeRates,
      required final num jackpotFundRate,
      required final bool locked}) = _$ConfirmStatusModelImpl;

  factory _ConfirmStatusModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmStatusModelImpl.fromJson;

  @override
  int get reservedCount;
  @override
  int get maxCount;
  @override
  List<FeeRateModel> get feeRates;
  @override
  num get jackpotFundRate;
  @override
  bool get locked;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmStatusModelImplCopyWith<_$ConfirmStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeeRateModel _$FeeRateModelFromJson(Map<String, dynamic> json) {
  return _FeeRateModel.fromJson(json);
}

/// @nodoc
mixin _$FeeRateModel {
  int get count => throw _privateConstructorUsedError;
  num get feeRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeRateModelCopyWith<FeeRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeRateModelCopyWith<$Res> {
  factory $FeeRateModelCopyWith(
          FeeRateModel value, $Res Function(FeeRateModel) then) =
      _$FeeRateModelCopyWithImpl<$Res, FeeRateModel>;
  @useResult
  $Res call({int count, num feeRate});
}

/// @nodoc
class _$FeeRateModelCopyWithImpl<$Res, $Val extends FeeRateModel>
    implements $FeeRateModelCopyWith<$Res> {
  _$FeeRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? feeRate = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      feeRate: null == feeRate
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeRateModelImplCopyWith<$Res>
    implements $FeeRateModelCopyWith<$Res> {
  factory _$$FeeRateModelImplCopyWith(
          _$FeeRateModelImpl value, $Res Function(_$FeeRateModelImpl) then) =
      __$$FeeRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, num feeRate});
}

/// @nodoc
class __$$FeeRateModelImplCopyWithImpl<$Res>
    extends _$FeeRateModelCopyWithImpl<$Res, _$FeeRateModelImpl>
    implements _$$FeeRateModelImplCopyWith<$Res> {
  __$$FeeRateModelImplCopyWithImpl(
      _$FeeRateModelImpl _value, $Res Function(_$FeeRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? feeRate = null,
  }) {
    return _then(_$FeeRateModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      feeRate: null == feeRate
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeRateModelImpl implements _FeeRateModel {
  const _$FeeRateModelImpl({required this.count, required this.feeRate});

  factory _$FeeRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeRateModelImplFromJson(json);

  @override
  final int count;
  @override
  final num feeRate;

  @override
  String toString() {
    return 'FeeRateModel(count: $count, feeRate: $feeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeRateModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.feeRate, feeRate) || other.feeRate == feeRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, feeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeRateModelImplCopyWith<_$FeeRateModelImpl> get copyWith =>
      __$$FeeRateModelImplCopyWithImpl<_$FeeRateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeRateModelImplToJson(
      this,
    );
  }
}

abstract class _FeeRateModel implements FeeRateModel {
  const factory _FeeRateModel(
      {required final int count,
      required final num feeRate}) = _$FeeRateModelImpl;

  factory _FeeRateModel.fromJson(Map<String, dynamic> json) =
      _$FeeRateModelImpl.fromJson;

  @override
  int get count;
  @override
  num get feeRate;
  @override
  @JsonKey(ignore: true)
  _$$FeeRateModelImplCopyWith<_$FeeRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfirmModel _$ConfirmModelFromJson(Map<String, dynamic> json) {
  return _ConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmModel {
  List<int> get reservedDepartureTimes => throw _privateConstructorUsedError;

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
  $Res call({List<int> reservedDepartureTimes});
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
    Object? reservedDepartureTimes = null,
  }) {
    return _then(_value.copyWith(
      reservedDepartureTimes: null == reservedDepartureTimes
          ? _value.reservedDepartureTimes
          : reservedDepartureTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
  $Res call({List<int> reservedDepartureTimes});
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
    Object? reservedDepartureTimes = null,
  }) {
    return _then(_$ConfirmModelImpl(
      reservedDepartureTimes: null == reservedDepartureTimes
          ? _value._reservedDepartureTimes
          : reservedDepartureTimes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmModelImpl implements _ConfirmModel {
  const _$ConfirmModelImpl({required final List<int> reservedDepartureTimes})
      : _reservedDepartureTimes = reservedDepartureTimes;

  factory _$ConfirmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmModelImplFromJson(json);

  final List<int> _reservedDepartureTimes;
  @override
  List<int> get reservedDepartureTimes {
    if (_reservedDepartureTimes is EqualUnmodifiableListView)
      return _reservedDepartureTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservedDepartureTimes);
  }

  @override
  String toString() {
    return 'ConfirmModel(reservedDepartureTimes: $reservedDepartureTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmModelImpl &&
            const DeepCollectionEquality().equals(
                other._reservedDepartureTimes, _reservedDepartureTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_reservedDepartureTimes));

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
      {required final List<int> reservedDepartureTimes}) = _$ConfirmModelImpl;

  factory _ConfirmModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmModelImpl.fromJson;

  @override
  List<int> get reservedDepartureTimes;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmModelImplCopyWith<_$ConfirmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
