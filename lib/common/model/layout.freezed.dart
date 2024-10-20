// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LayoutModel _$LayoutModelFromJson(Map<String, dynamic> json) {
  return _LayoutModel.fromJson(json);
}

/// @nodoc
mixin _$LayoutModel {
  bool get isMyAppBar => throw _privateConstructorUsedError;
  bool get isBottomNavigationBar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutModelCopyWith<LayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutModelCopyWith<$Res> {
  factory $LayoutModelCopyWith(
          LayoutModel value, $Res Function(LayoutModel) then) =
      _$LayoutModelCopyWithImpl<$Res, LayoutModel>;
  @useResult
  $Res call({bool isMyAppBar, bool isBottomNavigationBar});
}

/// @nodoc
class _$LayoutModelCopyWithImpl<$Res, $Val extends LayoutModel>
    implements $LayoutModelCopyWith<$Res> {
  _$LayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyAppBar = null,
    Object? isBottomNavigationBar = null,
  }) {
    return _then(_value.copyWith(
      isMyAppBar: null == isMyAppBar
          ? _value.isMyAppBar
          : isMyAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isBottomNavigationBar: null == isBottomNavigationBar
          ? _value.isBottomNavigationBar
          : isBottomNavigationBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutModelImplCopyWith<$Res>
    implements $LayoutModelCopyWith<$Res> {
  factory _$$LayoutModelImplCopyWith(
          _$LayoutModelImpl value, $Res Function(_$LayoutModelImpl) then) =
      __$$LayoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMyAppBar, bool isBottomNavigationBar});
}

/// @nodoc
class __$$LayoutModelImplCopyWithImpl<$Res>
    extends _$LayoutModelCopyWithImpl<$Res, _$LayoutModelImpl>
    implements _$$LayoutModelImplCopyWith<$Res> {
  __$$LayoutModelImplCopyWithImpl(
      _$LayoutModelImpl _value, $Res Function(_$LayoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyAppBar = null,
    Object? isBottomNavigationBar = null,
  }) {
    return _then(_$LayoutModelImpl(
      isMyAppBar: null == isMyAppBar
          ? _value.isMyAppBar
          : isMyAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isBottomNavigationBar: null == isBottomNavigationBar
          ? _value.isBottomNavigationBar
          : isBottomNavigationBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayoutModelImpl implements _LayoutModel {
  const _$LayoutModelImpl(
      {required this.isMyAppBar, required this.isBottomNavigationBar});

  factory _$LayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutModelImplFromJson(json);

  @override
  final bool isMyAppBar;
  @override
  final bool isBottomNavigationBar;

  @override
  String toString() {
    return 'LayoutModel(isMyAppBar: $isMyAppBar, isBottomNavigationBar: $isBottomNavigationBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutModelImpl &&
            (identical(other.isMyAppBar, isMyAppBar) ||
                other.isMyAppBar == isMyAppBar) &&
            (identical(other.isBottomNavigationBar, isBottomNavigationBar) ||
                other.isBottomNavigationBar == isBottomNavigationBar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMyAppBar, isBottomNavigationBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutModelImplCopyWith<_$LayoutModelImpl> get copyWith =>
      __$$LayoutModelImplCopyWithImpl<_$LayoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayoutModelImplToJson(
      this,
    );
  }
}

abstract class _LayoutModel implements LayoutModel {
  const factory _LayoutModel(
      {required final bool isMyAppBar,
      required final bool isBottomNavigationBar}) = _$LayoutModelImpl;

  factory _LayoutModel.fromJson(Map<String, dynamic> json) =
      _$LayoutModelImpl.fromJson;

  @override
  bool get isMyAppBar;
  @override
  bool get isBottomNavigationBar;
  @override
  @JsonKey(ignore: true)
  _$$LayoutModelImplCopyWith<_$LayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
