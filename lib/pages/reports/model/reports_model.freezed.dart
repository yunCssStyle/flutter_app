// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportsModel _$ReportsModelFromJson(Map<String, dynamic> json) {
  return _ReportsModel.fromJson(json);
}

/// @nodoc
mixin _$ReportsModel {
  bool get data => throw _privateConstructorUsedError;
  String? get yesterdayZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportsModelCopyWith<ReportsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsModelCopyWith<$Res> {
  factory $ReportsModelCopyWith(
          ReportsModel value, $Res Function(ReportsModel) then) =
      _$ReportsModelCopyWithImpl<$Res, ReportsModel>;
  @useResult
  $Res call({bool data, String? yesterdayZone});
}

/// @nodoc
class _$ReportsModelCopyWithImpl<$Res, $Val extends ReportsModel>
    implements $ReportsModelCopyWith<$Res> {
  _$ReportsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? yesterdayZone = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
      yesterdayZone: freezed == yesterdayZone
          ? _value.yesterdayZone
          : yesterdayZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportsModelImplCopyWith<$Res>
    implements $ReportsModelCopyWith<$Res> {
  factory _$$ReportsModelImplCopyWith(
          _$ReportsModelImpl value, $Res Function(_$ReportsModelImpl) then) =
      __$$ReportsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool data, String? yesterdayZone});
}

/// @nodoc
class __$$ReportsModelImplCopyWithImpl<$Res>
    extends _$ReportsModelCopyWithImpl<$Res, _$ReportsModelImpl>
    implements _$$ReportsModelImplCopyWith<$Res> {
  __$$ReportsModelImplCopyWithImpl(
      _$ReportsModelImpl _value, $Res Function(_$ReportsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? yesterdayZone = freezed,
  }) {
    return _then(_$ReportsModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
      yesterdayZone: freezed == yesterdayZone
          ? _value.yesterdayZone
          : yesterdayZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportsModelImpl implements _ReportsModel {
  const _$ReportsModelImpl({required this.data, this.yesterdayZone});

  factory _$ReportsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportsModelImplFromJson(json);

  @override
  final bool data;
  @override
  final String? yesterdayZone;

  @override
  String toString() {
    return 'ReportsModel(data: $data, yesterdayZone: $yesterdayZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.yesterdayZone, yesterdayZone) ||
                other.yesterdayZone == yesterdayZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, yesterdayZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsModelImplCopyWith<_$ReportsModelImpl> get copyWith =>
      __$$ReportsModelImplCopyWithImpl<_$ReportsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportsModelImplToJson(
      this,
    );
  }
}

abstract class _ReportsModel implements ReportsModel {
  const factory _ReportsModel(
      {required final bool data,
      final String? yesterdayZone}) = _$ReportsModelImpl;

  factory _ReportsModel.fromJson(Map<String, dynamic> json) =
      _$ReportsModelImpl.fromJson;

  @override
  bool get data;
  @override
  String? get yesterdayZone;
  @override
  @JsonKey(ignore: true)
  _$$ReportsModelImplCopyWith<_$ReportsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalModel _$TotalModelFromJson(Map<String, dynamic> json) {
  return _TotalModel.fromJson(json);
}

/// @nodoc
mixin _$TotalModel {
  String get date => throw _privateConstructorUsedError;
  num get incinerated => throw _privateConstructorUsedError;
  num get jackpot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalModelCopyWith<TotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalModelCopyWith<$Res> {
  factory $TotalModelCopyWith(
          TotalModel value, $Res Function(TotalModel) then) =
      _$TotalModelCopyWithImpl<$Res, TotalModel>;
  @useResult
  $Res call({String date, num incinerated, num jackpot});
}

/// @nodoc
class _$TotalModelCopyWithImpl<$Res, $Val extends TotalModel>
    implements $TotalModelCopyWith<$Res> {
  _$TotalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? incinerated = null,
    Object? jackpot = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      incinerated: null == incinerated
          ? _value.incinerated
          : incinerated // ignore: cast_nullable_to_non_nullable
              as num,
      jackpot: null == jackpot
          ? _value.jackpot
          : jackpot // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalModelImplCopyWith<$Res>
    implements $TotalModelCopyWith<$Res> {
  factory _$$TotalModelImplCopyWith(
          _$TotalModelImpl value, $Res Function(_$TotalModelImpl) then) =
      __$$TotalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, num incinerated, num jackpot});
}

/// @nodoc
class __$$TotalModelImplCopyWithImpl<$Res>
    extends _$TotalModelCopyWithImpl<$Res, _$TotalModelImpl>
    implements _$$TotalModelImplCopyWith<$Res> {
  __$$TotalModelImplCopyWithImpl(
      _$TotalModelImpl _value, $Res Function(_$TotalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? incinerated = null,
    Object? jackpot = null,
  }) {
    return _then(_$TotalModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      incinerated: null == incinerated
          ? _value.incinerated
          : incinerated // ignore: cast_nullable_to_non_nullable
              as num,
      jackpot: null == jackpot
          ? _value.jackpot
          : jackpot // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalModelImpl implements _TotalModel {
  const _$TotalModelImpl(
      {required this.date, required this.incinerated, required this.jackpot});

  factory _$TotalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalModelImplFromJson(json);

  @override
  final String date;
  @override
  final num incinerated;
  @override
  final num jackpot;

  @override
  String toString() {
    return 'TotalModel(date: $date, incinerated: $incinerated, jackpot: $jackpot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.incinerated, incinerated) ||
                other.incinerated == incinerated) &&
            (identical(other.jackpot, jackpot) || other.jackpot == jackpot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, incinerated, jackpot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalModelImplCopyWith<_$TotalModelImpl> get copyWith =>
      __$$TotalModelImplCopyWithImpl<_$TotalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalModelImplToJson(
      this,
    );
  }
}

abstract class _TotalModel implements TotalModel {
  const factory _TotalModel(
      {required final String date,
      required final num incinerated,
      required final num jackpot}) = _$TotalModelImpl;

  factory _TotalModel.fromJson(Map<String, dynamic> json) =
      _$TotalModelImpl.fromJson;

  @override
  String get date;
  @override
  num get incinerated;
  @override
  num get jackpot;
  @override
  @JsonKey(ignore: true)
  _$$TotalModelImplCopyWith<_$TotalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiningModel _$MiningModelFromJson(Map<String, dynamic> json) {
  return _MiningModel.fromJson(json);
}

/// @nodoc
mixin _$MiningModel {
  bool get waiting => throw _privateConstructorUsedError;
  MiningDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiningModelCopyWith<MiningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiningModelCopyWith<$Res> {
  factory $MiningModelCopyWith(
          MiningModel value, $Res Function(MiningModel) then) =
      _$MiningModelCopyWithImpl<$Res, MiningModel>;
  @useResult
  $Res call({bool waiting, MiningDataModel data});

  $MiningDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$MiningModelCopyWithImpl<$Res, $Val extends MiningModel>
    implements $MiningModelCopyWith<$Res> {
  _$MiningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MiningDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MiningDataModelCopyWith<$Res> get data {
    return $MiningDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiningModelImplCopyWith<$Res>
    implements $MiningModelCopyWith<$Res> {
  factory _$$MiningModelImplCopyWith(
          _$MiningModelImpl value, $Res Function(_$MiningModelImpl) then) =
      __$$MiningModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool waiting, MiningDataModel data});

  @override
  $MiningDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$MiningModelImplCopyWithImpl<$Res>
    extends _$MiningModelCopyWithImpl<$Res, _$MiningModelImpl>
    implements _$$MiningModelImplCopyWith<$Res> {
  __$$MiningModelImplCopyWithImpl(
      _$MiningModelImpl _value, $Res Function(_$MiningModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_$MiningModelImpl(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MiningDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiningModelImpl implements _MiningModel {
  const _$MiningModelImpl({required this.waiting, required this.data});

  factory _$MiningModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiningModelImplFromJson(json);

  @override
  final bool waiting;
  @override
  final MiningDataModel data;

  @override
  String toString() {
    return 'MiningModel(waiting: $waiting, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiningModelImpl &&
            (identical(other.waiting, waiting) || other.waiting == waiting) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, waiting, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiningModelImplCopyWith<_$MiningModelImpl> get copyWith =>
      __$$MiningModelImplCopyWithImpl<_$MiningModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiningModelImplToJson(
      this,
    );
  }
}

abstract class _MiningModel implements MiningModel {
  const factory _MiningModel(
      {required final bool waiting,
      required final MiningDataModel data}) = _$MiningModelImpl;

  factory _MiningModel.fromJson(Map<String, dynamic> json) =
      _$MiningModelImpl.fromJson;

  @override
  bool get waiting;
  @override
  MiningDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$MiningModelImplCopyWith<_$MiningModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiningDataModel _$MiningDataModelFromJson(Map<String, dynamic> json) {
  return _MiningDataModel.fromJson(json);
}

/// @nodoc
mixin _$MiningDataModel {
  num get top1 => throw _privateConstructorUsedError;
  num get top5 => throw _privateConstructorUsedError;
  num get top10 => throw _privateConstructorUsedError;
  num get top15 => throw _privateConstructorUsedError;
  num get top25 => throw _privateConstructorUsedError;
  num get top50 => throw _privateConstructorUsedError;
  num get top75 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiningDataModelCopyWith<MiningDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiningDataModelCopyWith<$Res> {
  factory $MiningDataModelCopyWith(
          MiningDataModel value, $Res Function(MiningDataModel) then) =
      _$MiningDataModelCopyWithImpl<$Res, MiningDataModel>;
  @useResult
  $Res call(
      {num top1,
      num top5,
      num top10,
      num top15,
      num top25,
      num top50,
      num top75});
}

/// @nodoc
class _$MiningDataModelCopyWithImpl<$Res, $Val extends MiningDataModel>
    implements $MiningDataModelCopyWith<$Res> {
  _$MiningDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top1 = null,
    Object? top5 = null,
    Object? top10 = null,
    Object? top15 = null,
    Object? top25 = null,
    Object? top50 = null,
    Object? top75 = null,
  }) {
    return _then(_value.copyWith(
      top1: null == top1
          ? _value.top1
          : top1 // ignore: cast_nullable_to_non_nullable
              as num,
      top5: null == top5
          ? _value.top5
          : top5 // ignore: cast_nullable_to_non_nullable
              as num,
      top10: null == top10
          ? _value.top10
          : top10 // ignore: cast_nullable_to_non_nullable
              as num,
      top15: null == top15
          ? _value.top15
          : top15 // ignore: cast_nullable_to_non_nullable
              as num,
      top25: null == top25
          ? _value.top25
          : top25 // ignore: cast_nullable_to_non_nullable
              as num,
      top50: null == top50
          ? _value.top50
          : top50 // ignore: cast_nullable_to_non_nullable
              as num,
      top75: null == top75
          ? _value.top75
          : top75 // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiningDataModelImplCopyWith<$Res>
    implements $MiningDataModelCopyWith<$Res> {
  factory _$$MiningDataModelImplCopyWith(_$MiningDataModelImpl value,
          $Res Function(_$MiningDataModelImpl) then) =
      __$$MiningDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num top1,
      num top5,
      num top10,
      num top15,
      num top25,
      num top50,
      num top75});
}

/// @nodoc
class __$$MiningDataModelImplCopyWithImpl<$Res>
    extends _$MiningDataModelCopyWithImpl<$Res, _$MiningDataModelImpl>
    implements _$$MiningDataModelImplCopyWith<$Res> {
  __$$MiningDataModelImplCopyWithImpl(
      _$MiningDataModelImpl _value, $Res Function(_$MiningDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top1 = null,
    Object? top5 = null,
    Object? top10 = null,
    Object? top15 = null,
    Object? top25 = null,
    Object? top50 = null,
    Object? top75 = null,
  }) {
    return _then(_$MiningDataModelImpl(
      top1: null == top1
          ? _value.top1
          : top1 // ignore: cast_nullable_to_non_nullable
              as num,
      top5: null == top5
          ? _value.top5
          : top5 // ignore: cast_nullable_to_non_nullable
              as num,
      top10: null == top10
          ? _value.top10
          : top10 // ignore: cast_nullable_to_non_nullable
              as num,
      top15: null == top15
          ? _value.top15
          : top15 // ignore: cast_nullable_to_non_nullable
              as num,
      top25: null == top25
          ? _value.top25
          : top25 // ignore: cast_nullable_to_non_nullable
              as num,
      top50: null == top50
          ? _value.top50
          : top50 // ignore: cast_nullable_to_non_nullable
              as num,
      top75: null == top75
          ? _value.top75
          : top75 // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiningDataModelImpl implements _MiningDataModel {
  const _$MiningDataModelImpl(
      {required this.top1,
      required this.top5,
      required this.top10,
      required this.top15,
      required this.top25,
      required this.top50,
      required this.top75});

  factory _$MiningDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiningDataModelImplFromJson(json);

  @override
  final num top1;
  @override
  final num top5;
  @override
  final num top10;
  @override
  final num top15;
  @override
  final num top25;
  @override
  final num top50;
  @override
  final num top75;

  @override
  String toString() {
    return 'MiningDataModel(top1: $top1, top5: $top5, top10: $top10, top15: $top15, top25: $top25, top50: $top50, top75: $top75)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiningDataModelImpl &&
            (identical(other.top1, top1) || other.top1 == top1) &&
            (identical(other.top5, top5) || other.top5 == top5) &&
            (identical(other.top10, top10) || other.top10 == top10) &&
            (identical(other.top15, top15) || other.top15 == top15) &&
            (identical(other.top25, top25) || other.top25 == top25) &&
            (identical(other.top50, top50) || other.top50 == top50) &&
            (identical(other.top75, top75) || other.top75 == top75));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, top1, top5, top10, top15, top25, top50, top75);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiningDataModelImplCopyWith<_$MiningDataModelImpl> get copyWith =>
      __$$MiningDataModelImplCopyWithImpl<_$MiningDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiningDataModelImplToJson(
      this,
    );
  }
}

abstract class _MiningDataModel implements MiningDataModel {
  const factory _MiningDataModel(
      {required final num top1,
      required final num top5,
      required final num top10,
      required final num top15,
      required final num top25,
      required final num top50,
      required final num top75}) = _$MiningDataModelImpl;

  factory _MiningDataModel.fromJson(Map<String, dynamic> json) =
      _$MiningDataModelImpl.fromJson;

  @override
  num get top1;
  @override
  num get top5;
  @override
  num get top10;
  @override
  num get top15;
  @override
  num get top25;
  @override
  num get top50;
  @override
  num get top75;
  @override
  @JsonKey(ignore: true)
  _$$MiningDataModelImplCopyWith<_$MiningDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DivisionsModel _$DivisionsModelFromJson(Map<String, dynamic> json) {
  return _DivisionsModel.fromJson(json);
}

/// @nodoc
mixin _$DivisionsModel {
  bool get waiting => throw _privateConstructorUsedError;
  DivisionsDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionsModelCopyWith<DivisionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionsModelCopyWith<$Res> {
  factory $DivisionsModelCopyWith(
          DivisionsModel value, $Res Function(DivisionsModel) then) =
      _$DivisionsModelCopyWithImpl<$Res, DivisionsModel>;
  @useResult
  $Res call({bool waiting, DivisionsDataModel data});

  $DivisionsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$DivisionsModelCopyWithImpl<$Res, $Val extends DivisionsModel>
    implements $DivisionsModelCopyWith<$Res> {
  _$DivisionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DivisionsDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisionsDataModelCopyWith<$Res> get data {
    return $DivisionsDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DivisionsModelImplCopyWith<$Res>
    implements $DivisionsModelCopyWith<$Res> {
  factory _$$DivisionsModelImplCopyWith(_$DivisionsModelImpl value,
          $Res Function(_$DivisionsModelImpl) then) =
      __$$DivisionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool waiting, DivisionsDataModel data});

  @override
  $DivisionsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DivisionsModelImplCopyWithImpl<$Res>
    extends _$DivisionsModelCopyWithImpl<$Res, _$DivisionsModelImpl>
    implements _$$DivisionsModelImplCopyWith<$Res> {
  __$$DivisionsModelImplCopyWithImpl(
      _$DivisionsModelImpl _value, $Res Function(_$DivisionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_$DivisionsModelImpl(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DivisionsDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionsModelImpl implements _DivisionsModel {
  const _$DivisionsModelImpl({required this.waiting, required this.data});

  factory _$DivisionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionsModelImplFromJson(json);

  @override
  final bool waiting;
  @override
  final DivisionsDataModel data;

  @override
  String toString() {
    return 'DivisionsModel(waiting: $waiting, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionsModelImpl &&
            (identical(other.waiting, waiting) || other.waiting == waiting) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, waiting, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionsModelImplCopyWith<_$DivisionsModelImpl> get copyWith =>
      __$$DivisionsModelImplCopyWithImpl<_$DivisionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionsModelImplToJson(
      this,
    );
  }
}

abstract class _DivisionsModel implements DivisionsModel {
  const factory _DivisionsModel(
      {required final bool waiting,
      required final DivisionsDataModel data}) = _$DivisionsModelImpl;

  factory _DivisionsModel.fromJson(Map<String, dynamic> json) =
      _$DivisionsModelImpl.fromJson;

  @override
  bool get waiting;
  @override
  DivisionsDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$DivisionsModelImplCopyWith<_$DivisionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DivisionsDataModel _$DivisionsDataModelFromJson(Map<String, dynamic> json) {
  return _DivisionsDataModel.fromJson(json);
}

/// @nodoc
mixin _$DivisionsDataModel {
  num get zoneE => throw _privateConstructorUsedError;
  num get zoneD => throw _privateConstructorUsedError;
  num get zoneC => throw _privateConstructorUsedError;
  num get zoneB => throw _privateConstructorUsedError;
  num get zoneA => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionsDataModelCopyWith<DivisionsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionsDataModelCopyWith<$Res> {
  factory $DivisionsDataModelCopyWith(
          DivisionsDataModel value, $Res Function(DivisionsDataModel) then) =
      _$DivisionsDataModelCopyWithImpl<$Res, DivisionsDataModel>;
  @useResult
  $Res call({num zoneE, num zoneD, num zoneC, num zoneB, num zoneA});
}

/// @nodoc
class _$DivisionsDataModelCopyWithImpl<$Res, $Val extends DivisionsDataModel>
    implements $DivisionsDataModelCopyWith<$Res> {
  _$DivisionsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoneE = null,
    Object? zoneD = null,
    Object? zoneC = null,
    Object? zoneB = null,
    Object? zoneA = null,
  }) {
    return _then(_value.copyWith(
      zoneE: null == zoneE
          ? _value.zoneE
          : zoneE // ignore: cast_nullable_to_non_nullable
              as num,
      zoneD: null == zoneD
          ? _value.zoneD
          : zoneD // ignore: cast_nullable_to_non_nullable
              as num,
      zoneC: null == zoneC
          ? _value.zoneC
          : zoneC // ignore: cast_nullable_to_non_nullable
              as num,
      zoneB: null == zoneB
          ? _value.zoneB
          : zoneB // ignore: cast_nullable_to_non_nullable
              as num,
      zoneA: null == zoneA
          ? _value.zoneA
          : zoneA // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionsDataModelImplCopyWith<$Res>
    implements $DivisionsDataModelCopyWith<$Res> {
  factory _$$DivisionsDataModelImplCopyWith(_$DivisionsDataModelImpl value,
          $Res Function(_$DivisionsDataModelImpl) then) =
      __$$DivisionsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num zoneE, num zoneD, num zoneC, num zoneB, num zoneA});
}

/// @nodoc
class __$$DivisionsDataModelImplCopyWithImpl<$Res>
    extends _$DivisionsDataModelCopyWithImpl<$Res, _$DivisionsDataModelImpl>
    implements _$$DivisionsDataModelImplCopyWith<$Res> {
  __$$DivisionsDataModelImplCopyWithImpl(_$DivisionsDataModelImpl _value,
      $Res Function(_$DivisionsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoneE = null,
    Object? zoneD = null,
    Object? zoneC = null,
    Object? zoneB = null,
    Object? zoneA = null,
  }) {
    return _then(_$DivisionsDataModelImpl(
      zoneE: null == zoneE
          ? _value.zoneE
          : zoneE // ignore: cast_nullable_to_non_nullable
              as num,
      zoneD: null == zoneD
          ? _value.zoneD
          : zoneD // ignore: cast_nullable_to_non_nullable
              as num,
      zoneC: null == zoneC
          ? _value.zoneC
          : zoneC // ignore: cast_nullable_to_non_nullable
              as num,
      zoneB: null == zoneB
          ? _value.zoneB
          : zoneB // ignore: cast_nullable_to_non_nullable
              as num,
      zoneA: null == zoneA
          ? _value.zoneA
          : zoneA // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionsDataModelImpl implements _DivisionsDataModel {
  const _$DivisionsDataModelImpl(
      {required this.zoneE,
      required this.zoneD,
      required this.zoneC,
      required this.zoneB,
      required this.zoneA});

  factory _$DivisionsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionsDataModelImplFromJson(json);

  @override
  final num zoneE;
  @override
  final num zoneD;
  @override
  final num zoneC;
  @override
  final num zoneB;
  @override
  final num zoneA;

  @override
  String toString() {
    return 'DivisionsDataModel(zoneE: $zoneE, zoneD: $zoneD, zoneC: $zoneC, zoneB: $zoneB, zoneA: $zoneA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionsDataModelImpl &&
            (identical(other.zoneE, zoneE) || other.zoneE == zoneE) &&
            (identical(other.zoneD, zoneD) || other.zoneD == zoneD) &&
            (identical(other.zoneC, zoneC) || other.zoneC == zoneC) &&
            (identical(other.zoneB, zoneB) || other.zoneB == zoneB) &&
            (identical(other.zoneA, zoneA) || other.zoneA == zoneA));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, zoneE, zoneD, zoneC, zoneB, zoneA);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionsDataModelImplCopyWith<_$DivisionsDataModelImpl> get copyWith =>
      __$$DivisionsDataModelImplCopyWithImpl<_$DivisionsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionsDataModelImplToJson(
      this,
    );
  }
}

abstract class _DivisionsDataModel implements DivisionsDataModel {
  const factory _DivisionsDataModel(
      {required final num zoneE,
      required final num zoneD,
      required final num zoneC,
      required final num zoneB,
      required final num zoneA}) = _$DivisionsDataModelImpl;

  factory _DivisionsDataModel.fromJson(Map<String, dynamic> json) =
      _$DivisionsDataModelImpl.fromJson;

  @override
  num get zoneE;
  @override
  num get zoneD;
  @override
  num get zoneC;
  @override
  num get zoneB;
  @override
  num get zoneA;
  @override
  @JsonKey(ignore: true)
  _$$DivisionsDataModelImplCopyWith<_$DivisionsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplorationModel _$ExplorationModelFromJson(Map<String, dynamic> json) {
  return _ExplorationModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorationModel {
  bool get waiting => throw _privateConstructorUsedError;
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
  $Res call({bool waiting, ExplorationDataModel data});

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
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool waiting, ExplorationDataModel data});

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
    Object? waiting = null,
    Object? data = null,
  }) {
    return _then(_$ExplorationModelImpl(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as bool,
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
  const _$ExplorationModelImpl({required this.waiting, required this.data});

  factory _$ExplorationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorationModelImplFromJson(json);

  @override
  final bool waiting;
  @override
  final ExplorationDataModel data;

  @override
  String toString() {
    return 'ExplorationModel(waiting: $waiting, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorationModelImpl &&
            (identical(other.waiting, waiting) || other.waiting == waiting) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, waiting, data);

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
      {required final bool waiting,
      required final ExplorationDataModel data}) = _$ExplorationModelImpl;

  factory _ExplorationModel.fromJson(Map<String, dynamic> json) =
      _$ExplorationModelImpl.fromJson;

  @override
  bool get waiting;
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
  int get totalExplorationTime => throw _privateConstructorUsedError;
  int get totalExplorationCount => throw _privateConstructorUsedError;
  int get totalExplorationReward => throw _privateConstructorUsedError;

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
      {int totalExplorationTime,
      int totalExplorationCount,
      int totalExplorationReward});
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
    Object? totalExplorationTime = null,
    Object? totalExplorationCount = null,
    Object? totalExplorationReward = null,
  }) {
    return _then(_value.copyWith(
      totalExplorationTime: null == totalExplorationTime
          ? _value.totalExplorationTime
          : totalExplorationTime // ignore: cast_nullable_to_non_nullable
              as int,
      totalExplorationCount: null == totalExplorationCount
          ? _value.totalExplorationCount
          : totalExplorationCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalExplorationReward: null == totalExplorationReward
          ? _value.totalExplorationReward
          : totalExplorationReward // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int totalExplorationTime,
      int totalExplorationCount,
      int totalExplorationReward});
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
    Object? totalExplorationTime = null,
    Object? totalExplorationCount = null,
    Object? totalExplorationReward = null,
  }) {
    return _then(_$ExplorationDataModelImpl(
      totalExplorationTime: null == totalExplorationTime
          ? _value.totalExplorationTime
          : totalExplorationTime // ignore: cast_nullable_to_non_nullable
              as int,
      totalExplorationCount: null == totalExplorationCount
          ? _value.totalExplorationCount
          : totalExplorationCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalExplorationReward: null == totalExplorationReward
          ? _value.totalExplorationReward
          : totalExplorationReward // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorationDataModelImpl implements _ExplorationDataModel {
  const _$ExplorationDataModelImpl(
      {required this.totalExplorationTime,
      required this.totalExplorationCount,
      required this.totalExplorationReward});

  factory _$ExplorationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorationDataModelImplFromJson(json);

  @override
  final int totalExplorationTime;
  @override
  final int totalExplorationCount;
  @override
  final int totalExplorationReward;

  @override
  String toString() {
    return 'ExplorationDataModel(totalExplorationTime: $totalExplorationTime, totalExplorationCount: $totalExplorationCount, totalExplorationReward: $totalExplorationReward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorationDataModelImpl &&
            (identical(other.totalExplorationTime, totalExplorationTime) ||
                other.totalExplorationTime == totalExplorationTime) &&
            (identical(other.totalExplorationCount, totalExplorationCount) ||
                other.totalExplorationCount == totalExplorationCount) &&
            (identical(other.totalExplorationReward, totalExplorationReward) ||
                other.totalExplorationReward == totalExplorationReward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalExplorationTime,
      totalExplorationCount, totalExplorationReward);

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
      {required final int totalExplorationTime,
      required final int totalExplorationCount,
      required final int totalExplorationReward}) = _$ExplorationDataModelImpl;

  factory _ExplorationDataModel.fromJson(Map<String, dynamic> json) =
      _$ExplorationDataModelImpl.fromJson;

  @override
  int get totalExplorationTime;
  @override
  int get totalExplorationCount;
  @override
  int get totalExplorationReward;
  @override
  @JsonKey(ignore: true)
  _$$ExplorationDataModelImplCopyWith<_$ExplorationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MiningPowerListModel _$MiningPowerListModelFromJson(Map<String, dynamic> json) {
  return _MiningPowerListModel.fromJson(json);
}

/// @nodoc
mixin _$MiningPowerListModel {
  int get percent => throw _privateConstructorUsedError;
  double get power => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiningPowerListModelCopyWith<MiningPowerListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiningPowerListModelCopyWith<$Res> {
  factory $MiningPowerListModelCopyWith(MiningPowerListModel value,
          $Res Function(MiningPowerListModel) then) =
      _$MiningPowerListModelCopyWithImpl<$Res, MiningPowerListModel>;
  @useResult
  $Res call({int percent, double power});
}

/// @nodoc
class _$MiningPowerListModelCopyWithImpl<$Res,
        $Val extends MiningPowerListModel>
    implements $MiningPowerListModelCopyWith<$Res> {
  _$MiningPowerListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? power = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiningPowerListModelImplCopyWith<$Res>
    implements $MiningPowerListModelCopyWith<$Res> {
  factory _$$MiningPowerListModelImplCopyWith(_$MiningPowerListModelImpl value,
          $Res Function(_$MiningPowerListModelImpl) then) =
      __$$MiningPowerListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int percent, double power});
}

/// @nodoc
class __$$MiningPowerListModelImplCopyWithImpl<$Res>
    extends _$MiningPowerListModelCopyWithImpl<$Res, _$MiningPowerListModelImpl>
    implements _$$MiningPowerListModelImplCopyWith<$Res> {
  __$$MiningPowerListModelImplCopyWithImpl(_$MiningPowerListModelImpl _value,
      $Res Function(_$MiningPowerListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? power = null,
  }) {
    return _then(_$MiningPowerListModelImpl(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiningPowerListModelImpl implements _MiningPowerListModel {
  const _$MiningPowerListModelImpl(
      {required this.percent, required this.power});

  factory _$MiningPowerListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiningPowerListModelImplFromJson(json);

  @override
  final int percent;
  @override
  final double power;

  @override
  String toString() {
    return 'MiningPowerListModel(percent: $percent, power: $power)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiningPowerListModelImpl &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.power, power) || other.power == power));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, percent, power);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiningPowerListModelImplCopyWith<_$MiningPowerListModelImpl>
      get copyWith =>
          __$$MiningPowerListModelImplCopyWithImpl<_$MiningPowerListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiningPowerListModelImplToJson(
      this,
    );
  }
}

abstract class _MiningPowerListModel implements MiningPowerListModel {
  const factory _MiningPowerListModel(
      {required final int percent,
      required final double power}) = _$MiningPowerListModelImpl;

  factory _MiningPowerListModel.fromJson(Map<String, dynamic> json) =
      _$MiningPowerListModelImpl.fromJson;

  @override
  int get percent;
  @override
  double get power;
  @override
  @JsonKey(ignore: true)
  _$$MiningPowerListModelImplCopyWith<_$MiningPowerListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DivisionsListModel _$DivisionsListModelFromJson(Map<String, dynamic> json) {
  return _DivisionsListModel.fromJson(json);
}

/// @nodoc
mixin _$DivisionsListModel {
  String get zone => throw _privateConstructorUsedError;
  double get mp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionsListModelCopyWith<DivisionsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionsListModelCopyWith<$Res> {
  factory $DivisionsListModelCopyWith(
          DivisionsListModel value, $Res Function(DivisionsListModel) then) =
      _$DivisionsListModelCopyWithImpl<$Res, DivisionsListModel>;
  @useResult
  $Res call({String zone, double mp});
}

/// @nodoc
class _$DivisionsListModelCopyWithImpl<$Res, $Val extends DivisionsListModel>
    implements $DivisionsListModelCopyWith<$Res> {
  _$DivisionsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zone = null,
    Object? mp = null,
  }) {
    return _then(_value.copyWith(
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      mp: null == mp
          ? _value.mp
          : mp // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionsListModelImplCopyWith<$Res>
    implements $DivisionsListModelCopyWith<$Res> {
  factory _$$DivisionsListModelImplCopyWith(_$DivisionsListModelImpl value,
          $Res Function(_$DivisionsListModelImpl) then) =
      __$$DivisionsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String zone, double mp});
}

/// @nodoc
class __$$DivisionsListModelImplCopyWithImpl<$Res>
    extends _$DivisionsListModelCopyWithImpl<$Res, _$DivisionsListModelImpl>
    implements _$$DivisionsListModelImplCopyWith<$Res> {
  __$$DivisionsListModelImplCopyWithImpl(_$DivisionsListModelImpl _value,
      $Res Function(_$DivisionsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zone = null,
    Object? mp = null,
  }) {
    return _then(_$DivisionsListModelImpl(
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      mp: null == mp
          ? _value.mp
          : mp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionsListModelImpl implements _DivisionsListModel {
  const _$DivisionsListModelImpl({required this.zone, required this.mp});

  factory _$DivisionsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionsListModelImplFromJson(json);

  @override
  final String zone;
  @override
  final double mp;

  @override
  String toString() {
    return 'DivisionsListModel(zone: $zone, mp: $mp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionsListModelImpl &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.mp, mp) || other.mp == mp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zone, mp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionsListModelImplCopyWith<_$DivisionsListModelImpl> get copyWith =>
      __$$DivisionsListModelImplCopyWithImpl<_$DivisionsListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionsListModelImplToJson(
      this,
    );
  }
}

abstract class _DivisionsListModel implements DivisionsListModel {
  const factory _DivisionsListModel(
      {required final String zone,
      required final double mp}) = _$DivisionsListModelImpl;

  factory _DivisionsListModel.fromJson(Map<String, dynamic> json) =
      _$DivisionsListModelImpl.fromJson;

  @override
  String get zone;
  @override
  double get mp;
  @override
  @JsonKey(ignore: true)
  _$$DivisionsListModelImplCopyWith<_$DivisionsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
