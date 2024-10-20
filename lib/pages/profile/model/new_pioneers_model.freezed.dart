// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_pioneers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewProfileModel _$NewProfileModelFromJson(Map<String, dynamic> json) {
  return _NewProfileModel.fromJson(json);
}

/// @nodoc
mixin _$NewProfileModel {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isFirst => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  List<PioneerModel> get pioneers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProfileModelCopyWith<NewProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProfileModelCopyWith<$Res> {
  factory $NewProfileModelCopyWith(
          NewProfileModel value, $Res Function(NewProfileModel) then) =
      _$NewProfileModelCopyWithImpl<$Res, NewProfileModel>;
  @useResult
  $Res call(
      {int page,
      int size,
      int totalPages,
      int totalCount,
      bool isFirst,
      bool isLast,
      List<PioneerModel> pioneers});
}

/// @nodoc
class _$NewProfileModelCopyWithImpl<$Res, $Val extends NewProfileModel>
    implements $NewProfileModelCopyWith<$Res> {
  _$NewProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? totalCount = null,
    Object? isFirst = null,
    Object? isLast = null,
    Object? pioneers = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFirst: null == isFirst
          ? _value.isFirst
          : isFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      pioneers: null == pioneers
          ? _value.pioneers
          : pioneers // ignore: cast_nullable_to_non_nullable
              as List<PioneerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewProfileModelImplCopyWith<$Res>
    implements $NewProfileModelCopyWith<$Res> {
  factory _$$NewProfileModelImplCopyWith(_$NewProfileModelImpl value,
          $Res Function(_$NewProfileModelImpl) then) =
      __$$NewProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int size,
      int totalPages,
      int totalCount,
      bool isFirst,
      bool isLast,
      List<PioneerModel> pioneers});
}

/// @nodoc
class __$$NewProfileModelImplCopyWithImpl<$Res>
    extends _$NewProfileModelCopyWithImpl<$Res, _$NewProfileModelImpl>
    implements _$$NewProfileModelImplCopyWith<$Res> {
  __$$NewProfileModelImplCopyWithImpl(
      _$NewProfileModelImpl _value, $Res Function(_$NewProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
    Object? totalCount = null,
    Object? isFirst = null,
    Object? isLast = null,
    Object? pioneers = null,
  }) {
    return _then(_$NewProfileModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFirst: null == isFirst
          ? _value.isFirst
          : isFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      pioneers: null == pioneers
          ? _value._pioneers
          : pioneers // ignore: cast_nullable_to_non_nullable
              as List<PioneerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewProfileModelImpl implements _NewProfileModel {
  const _$NewProfileModelImpl(
      {required this.page,
      required this.size,
      required this.totalPages,
      required this.totalCount,
      required this.isFirst,
      required this.isLast,
      required final List<PioneerModel> pioneers})
      : _pioneers = pioneers;

  factory _$NewProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewProfileModelImplFromJson(json);

  @override
  final int page;
  @override
  final int size;
  @override
  final int totalPages;
  @override
  final int totalCount;
  @override
  final bool isFirst;
  @override
  final bool isLast;
  final List<PioneerModel> _pioneers;
  @override
  List<PioneerModel> get pioneers {
    if (_pioneers is EqualUnmodifiableListView) return _pioneers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pioneers);
  }

  @override
  String toString() {
    return 'NewProfileModel(page: $page, size: $size, totalPages: $totalPages, totalCount: $totalCount, isFirst: $isFirst, isLast: $isLast, pioneers: $pioneers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewProfileModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isFirst, isFirst) || other.isFirst == isFirst) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality().equals(other._pioneers, _pioneers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      size,
      totalPages,
      totalCount,
      isFirst,
      isLast,
      const DeepCollectionEquality().hash(_pioneers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewProfileModelImplCopyWith<_$NewProfileModelImpl> get copyWith =>
      __$$NewProfileModelImplCopyWithImpl<_$NewProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewProfileModelImplToJson(
      this,
    );
  }
}

abstract class _NewProfileModel implements NewProfileModel {
  const factory _NewProfileModel(
      {required final int page,
      required final int size,
      required final int totalPages,
      required final int totalCount,
      required final bool isFirst,
      required final bool isLast,
      required final List<PioneerModel> pioneers}) = _$NewProfileModelImpl;

  factory _NewProfileModel.fromJson(Map<String, dynamic> json) =
      _$NewProfileModelImpl.fromJson;

  @override
  int get page;
  @override
  int get size;
  @override
  int get totalPages;
  @override
  int get totalCount;
  @override
  bool get isFirst;
  @override
  bool get isLast;
  @override
  List<PioneerModel> get pioneers;
  @override
  @JsonKey(ignore: true)
  _$$NewProfileModelImplCopyWith<_$NewProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewStatModel _$NewStatModelFromJson(Map<String, dynamic> json) {
  return _NewStatModel.fromJson(json);
}

/// @nodoc
mixin _$NewStatModel {
  int get id => throw _privateConstructorUsedError; //nft id
  ProfileStatModel get stat => throw _privateConstructorUsedError; //nft 스텟
  ProfileStatModel? get statBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewStatModelCopyWith<NewStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStatModelCopyWith<$Res> {
  factory $NewStatModelCopyWith(
          NewStatModel value, $Res Function(NewStatModel) then) =
      _$NewStatModelCopyWithImpl<$Res, NewStatModel>;
  @useResult
  $Res call({int id, ProfileStatModel stat, ProfileStatModel? statBonus});

  $ProfileStatModelCopyWith<$Res> get stat;
  $ProfileStatModelCopyWith<$Res>? get statBonus;
}

/// @nodoc
class _$NewStatModelCopyWithImpl<$Res, $Val extends NewStatModel>
    implements $NewStatModelCopyWith<$Res> {
  _$NewStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stat = null,
    Object? statBonus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel,
      statBonus: freezed == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatModelCopyWith<$Res> get stat {
    return $ProfileStatModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatModelCopyWith<$Res>? get statBonus {
    if (_value.statBonus == null) {
      return null;
    }

    return $ProfileStatModelCopyWith<$Res>(_value.statBonus!, (value) {
      return _then(_value.copyWith(statBonus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewStatModelImplCopyWith<$Res>
    implements $NewStatModelCopyWith<$Res> {
  factory _$$NewStatModelImplCopyWith(
          _$NewStatModelImpl value, $Res Function(_$NewStatModelImpl) then) =
      __$$NewStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ProfileStatModel stat, ProfileStatModel? statBonus});

  @override
  $ProfileStatModelCopyWith<$Res> get stat;
  @override
  $ProfileStatModelCopyWith<$Res>? get statBonus;
}

/// @nodoc
class __$$NewStatModelImplCopyWithImpl<$Res>
    extends _$NewStatModelCopyWithImpl<$Res, _$NewStatModelImpl>
    implements _$$NewStatModelImplCopyWith<$Res> {
  __$$NewStatModelImplCopyWithImpl(
      _$NewStatModelImpl _value, $Res Function(_$NewStatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stat = null,
    Object? statBonus = freezed,
  }) {
    return _then(_$NewStatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel,
      statBonus: freezed == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewStatModelImpl implements _NewStatModel {
  const _$NewStatModelImpl(
      {required this.id, required this.stat, this.statBonus});

  factory _$NewStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewStatModelImplFromJson(json);

  @override
  final int id;
//nft id
  @override
  final ProfileStatModel stat;
//nft 스텟
  @override
  final ProfileStatModel? statBonus;

  @override
  String toString() {
    return 'NewStatModel(id: $id, stat: $stat, statBonus: $statBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewStatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.statBonus, statBonus) ||
                other.statBonus == statBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, stat, statBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewStatModelImplCopyWith<_$NewStatModelImpl> get copyWith =>
      __$$NewStatModelImplCopyWithImpl<_$NewStatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewStatModelImplToJson(
      this,
    );
  }
}

abstract class _NewStatModel implements NewStatModel {
  const factory _NewStatModel(
      {required final int id,
      required final ProfileStatModel stat,
      final ProfileStatModel? statBonus}) = _$NewStatModelImpl;

  factory _NewStatModel.fromJson(Map<String, dynamic> json) =
      _$NewStatModelImpl.fromJson;

  @override
  int get id;
  @override //nft id
  ProfileStatModel get stat;
  @override //nft 스텟
  ProfileStatModel? get statBonus;
  @override
  @JsonKey(ignore: true)
  _$$NewStatModelImplCopyWith<_$NewStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
