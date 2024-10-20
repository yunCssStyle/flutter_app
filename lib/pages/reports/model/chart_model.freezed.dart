// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartModel _$ChartModelFromJson(Map<String, dynamic> json) {
  return _ChartModel.fromJson(json);
}

/// @nodoc
mixin _$ChartModel {
  List<ChartListModel> get charts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartModelCopyWith<ChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartModelCopyWith<$Res> {
  factory $ChartModelCopyWith(
          ChartModel value, $Res Function(ChartModel) then) =
      _$ChartModelCopyWithImpl<$Res, ChartModel>;
  @useResult
  $Res call({List<ChartListModel> charts});
}

/// @nodoc
class _$ChartModelCopyWithImpl<$Res, $Val extends ChartModel>
    implements $ChartModelCopyWith<$Res> {
  _$ChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charts = null,
  }) {
    return _then(_value.copyWith(
      charts: null == charts
          ? _value.charts
          : charts // ignore: cast_nullable_to_non_nullable
              as List<ChartListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartModelImplCopyWith<$Res>
    implements $ChartModelCopyWith<$Res> {
  factory _$$ChartModelImplCopyWith(
          _$ChartModelImpl value, $Res Function(_$ChartModelImpl) then) =
      __$$ChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChartListModel> charts});
}

/// @nodoc
class __$$ChartModelImplCopyWithImpl<$Res>
    extends _$ChartModelCopyWithImpl<$Res, _$ChartModelImpl>
    implements _$$ChartModelImplCopyWith<$Res> {
  __$$ChartModelImplCopyWithImpl(
      _$ChartModelImpl _value, $Res Function(_$ChartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charts = null,
  }) {
    return _then(_$ChartModelImpl(
      charts: null == charts
          ? _value._charts
          : charts // ignore: cast_nullable_to_non_nullable
              as List<ChartListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartModelImpl implements _ChartModel {
  const _$ChartModelImpl({required final List<ChartListModel> charts})
      : _charts = charts;

  factory _$ChartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartModelImplFromJson(json);

  final List<ChartListModel> _charts;
  @override
  List<ChartListModel> get charts {
    if (_charts is EqualUnmodifiableListView) return _charts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charts);
  }

  @override
  String toString() {
    return 'ChartModel(charts: $charts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartModelImpl &&
            const DeepCollectionEquality().equals(other._charts, _charts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_charts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      __$$ChartModelImplCopyWithImpl<_$ChartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartModelImplToJson(
      this,
    );
  }
}

abstract class _ChartModel implements ChartModel {
  const factory _ChartModel({required final List<ChartListModel> charts}) =
      _$ChartModelImpl;

  factory _ChartModel.fromJson(Map<String, dynamic> json) =
      _$ChartModelImpl.fromJson;

  @override
  List<ChartListModel> get charts;
  @override
  @JsonKey(ignore: true)
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChartListModel _$ChartListModelFromJson(Map<String, dynamic> json) {
  return _ChartListModel.fromJson(json);
}

/// @nodoc
mixin _$ChartListModel {
  int get hour => throw _privateConstructorUsedError;
  num get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartListModelCopyWith<ChartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartListModelCopyWith<$Res> {
  factory $ChartListModelCopyWith(
          ChartListModel value, $Res Function(ChartListModel) then) =
      _$ChartListModelCopyWithImpl<$Res, ChartListModel>;
  @useResult
  $Res call({int hour, num percent});
}

/// @nodoc
class _$ChartListModelCopyWithImpl<$Res, $Val extends ChartListModel>
    implements $ChartListModelCopyWith<$Res> {
  _$ChartListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? percent = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartListModelImplCopyWith<$Res>
    implements $ChartListModelCopyWith<$Res> {
  factory _$$ChartListModelImplCopyWith(_$ChartListModelImpl value,
          $Res Function(_$ChartListModelImpl) then) =
      __$$ChartListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, num percent});
}

/// @nodoc
class __$$ChartListModelImplCopyWithImpl<$Res>
    extends _$ChartListModelCopyWithImpl<$Res, _$ChartListModelImpl>
    implements _$$ChartListModelImplCopyWith<$Res> {
  __$$ChartListModelImplCopyWithImpl(
      _$ChartListModelImpl _value, $Res Function(_$ChartListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? percent = null,
  }) {
    return _then(_$ChartListModelImpl(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartListModelImpl implements _ChartListModel {
  const _$ChartListModelImpl({required this.hour, required this.percent});

  factory _$ChartListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartListModelImplFromJson(json);

  @override
  final int hour;
  @override
  final num percent;

  @override
  String toString() {
    return 'ChartListModel(hour: $hour, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartListModelImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hour, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartListModelImplCopyWith<_$ChartListModelImpl> get copyWith =>
      __$$ChartListModelImplCopyWithImpl<_$ChartListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartListModelImplToJson(
      this,
    );
  }
}

abstract class _ChartListModel implements ChartListModel {
  const factory _ChartListModel(
      {required final int hour,
      required final num percent}) = _$ChartListModelImpl;

  factory _ChartListModel.fromJson(Map<String, dynamic> json) =
      _$ChartListModelImpl.fromJson;

  @override
  int get hour;
  @override
  num get percent;
  @override
  @JsonKey(ignore: true)
  _$$ChartListModelImplCopyWith<_$ChartListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
