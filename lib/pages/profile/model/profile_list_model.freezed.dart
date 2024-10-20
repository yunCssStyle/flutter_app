// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileListModel _$ProfileListModelFromJson(Map<String, dynamic> json) {
  return _ProfileListModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileListModel {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isFirst => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  List<PioneerModel> get pioneers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileListModelCopyWith<ProfileListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileListModelCopyWith<$Res> {
  factory $ProfileListModelCopyWith(
          ProfileListModel value, $Res Function(ProfileListModel) then) =
      _$ProfileListModelCopyWithImpl<$Res, ProfileListModel>;
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
class _$ProfileListModelCopyWithImpl<$Res, $Val extends ProfileListModel>
    implements $ProfileListModelCopyWith<$Res> {
  _$ProfileListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfileListModelImplCopyWith<$Res>
    implements $ProfileListModelCopyWith<$Res> {
  factory _$$ProfileListModelImplCopyWith(_$ProfileListModelImpl value,
          $Res Function(_$ProfileListModelImpl) then) =
      __$$ProfileListModelImplCopyWithImpl<$Res>;
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
class __$$ProfileListModelImplCopyWithImpl<$Res>
    extends _$ProfileListModelCopyWithImpl<$Res, _$ProfileListModelImpl>
    implements _$$ProfileListModelImplCopyWith<$Res> {
  __$$ProfileListModelImplCopyWithImpl(_$ProfileListModelImpl _value,
      $Res Function(_$ProfileListModelImpl) _then)
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
    return _then(_$ProfileListModelImpl(
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
class _$ProfileListModelImpl implements _ProfileListModel {
  const _$ProfileListModelImpl(
      {required this.page,
      required this.size,
      required this.totalPages,
      required this.totalCount,
      required this.isFirst,
      required this.isLast,
      required final List<PioneerModel> pioneers})
      : _pioneers = pioneers;

  factory _$ProfileListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileListModelImplFromJson(json);

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
    return 'ProfileListModel(page: $page, size: $size, totalPages: $totalPages, totalCount: $totalCount, isFirst: $isFirst, isLast: $isLast, pioneers: $pioneers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileListModelImpl &&
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
  _$$ProfileListModelImplCopyWith<_$ProfileListModelImpl> get copyWith =>
      __$$ProfileListModelImplCopyWithImpl<_$ProfileListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileListModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileListModel implements ProfileListModel {
  const factory _ProfileListModel(
      {required final int page,
      required final int size,
      required final int totalPages,
      required final int totalCount,
      required final bool isFirst,
      required final bool isLast,
      required final List<PioneerModel> pioneers}) = _$ProfileListModelImpl;

  factory _ProfileListModel.fromJson(Map<String, dynamic> json) =
      _$ProfileListModelImpl.fromJson;

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
  _$$ProfileListModelImplCopyWith<_$ProfileListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileEquipModel _$ProfileEquipModelFromJson(Map<String, dynamic> json) {
  return _ProfileEquipModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileEquipModel {
  int get id => throw _privateConstructorUsedError; //nft id
  bool get equip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEquipModelCopyWith<ProfileEquipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEquipModelCopyWith<$Res> {
  factory $ProfileEquipModelCopyWith(
          ProfileEquipModel value, $Res Function(ProfileEquipModel) then) =
      _$ProfileEquipModelCopyWithImpl<$Res, ProfileEquipModel>;
  @useResult
  $Res call({int id, bool equip});
}

/// @nodoc
class _$ProfileEquipModelCopyWithImpl<$Res, $Val extends ProfileEquipModel>
    implements $ProfileEquipModelCopyWith<$Res> {
  _$ProfileEquipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equip = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      equip: null == equip
          ? _value.equip
          : equip // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileEquipModelImplCopyWith<$Res>
    implements $ProfileEquipModelCopyWith<$Res> {
  factory _$$ProfileEquipModelImplCopyWith(_$ProfileEquipModelImpl value,
          $Res Function(_$ProfileEquipModelImpl) then) =
      __$$ProfileEquipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool equip});
}

/// @nodoc
class __$$ProfileEquipModelImplCopyWithImpl<$Res>
    extends _$ProfileEquipModelCopyWithImpl<$Res, _$ProfileEquipModelImpl>
    implements _$$ProfileEquipModelImplCopyWith<$Res> {
  __$$ProfileEquipModelImplCopyWithImpl(_$ProfileEquipModelImpl _value,
      $Res Function(_$ProfileEquipModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equip = null,
  }) {
    return _then(_$ProfileEquipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      equip: null == equip
          ? _value.equip
          : equip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileEquipModelImpl implements _ProfileEquipModel {
  const _$ProfileEquipModelImpl({required this.id, required this.equip});

  factory _$ProfileEquipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileEquipModelImplFromJson(json);

  @override
  final int id;
//nft id
  @override
  final bool equip;

  @override
  String toString() {
    return 'ProfileEquipModel(id: $id, equip: $equip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEquipModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equip, equip) || other.equip == equip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, equip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEquipModelImplCopyWith<_$ProfileEquipModelImpl> get copyWith =>
      __$$ProfileEquipModelImplCopyWithImpl<_$ProfileEquipModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileEquipModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileEquipModel implements ProfileEquipModel {
  const factory _ProfileEquipModel(
      {required final int id,
      required final bool equip}) = _$ProfileEquipModelImpl;

  factory _ProfileEquipModel.fromJson(Map<String, dynamic> json) =
      _$ProfileEquipModelImpl.fromJson;

  @override
  int get id;
  @override //nft id
  bool get equip;
  @override
  @JsonKey(ignore: true)
  _$$ProfileEquipModelImplCopyWith<_$ProfileEquipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileReadModel _$ProfileReadModelFromJson(Map<String, dynamic> json) {
  return _ProfileReadModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileReadModel {
  List<int> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileReadModelCopyWith<ProfileReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileReadModelCopyWith<$Res> {
  factory $ProfileReadModelCopyWith(
          ProfileReadModel value, $Res Function(ProfileReadModel) then) =
      _$ProfileReadModelCopyWithImpl<$Res, ProfileReadModel>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$ProfileReadModelCopyWithImpl<$Res, $Val extends ProfileReadModel>
    implements $ProfileReadModelCopyWith<$Res> {
  _$ProfileReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileReadModelImplCopyWith<$Res>
    implements $ProfileReadModelCopyWith<$Res> {
  factory _$$ProfileReadModelImplCopyWith(_$ProfileReadModelImpl value,
          $Res Function(_$ProfileReadModelImpl) then) =
      __$$ProfileReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$ProfileReadModelImplCopyWithImpl<$Res>
    extends _$ProfileReadModelCopyWithImpl<$Res, _$ProfileReadModelImpl>
    implements _$$ProfileReadModelImplCopyWith<$Res> {
  __$$ProfileReadModelImplCopyWithImpl(_$ProfileReadModelImpl _value,
      $Res Function(_$ProfileReadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$ProfileReadModelImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileReadModelImpl implements _ProfileReadModel {
  const _$ProfileReadModelImpl({required final List<int> ids}) : _ids = ids;

  factory _$ProfileReadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileReadModelImplFromJson(json);

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'ProfileReadModel(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileReadModelImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileReadModelImplCopyWith<_$ProfileReadModelImpl> get copyWith =>
      __$$ProfileReadModelImplCopyWithImpl<_$ProfileReadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileReadModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileReadModel implements ProfileReadModel {
  const factory _ProfileReadModel({required final List<int> ids}) =
      _$ProfileReadModelImpl;

  factory _ProfileReadModel.fromJson(Map<String, dynamic> json) =
      _$ProfileReadModelImpl.fromJson;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$ProfileReadModelImplCopyWith<_$ProfileReadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostStat _$PostStatFromJson(Map<String, dynamic> json) {
  return _PostStat.fromJson(json);
}

/// @nodoc
mixin _$PostStat {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostStatCopyWith<PostStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStatCopyWith<$Res> {
  factory $PostStatCopyWith(PostStat value, $Res Function(PostStat) then) =
      _$PostStatCopyWithImpl<$Res, PostStat>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PostStatCopyWithImpl<$Res, $Val extends PostStat>
    implements $PostStatCopyWith<$Res> {
  _$PostStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStatImplCopyWith<$Res>
    implements $PostStatCopyWith<$Res> {
  factory _$$PostStatImplCopyWith(
          _$PostStatImpl value, $Res Function(_$PostStatImpl) then) =
      __$$PostStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$PostStatImplCopyWithImpl<$Res>
    extends _$PostStatCopyWithImpl<$Res, _$PostStatImpl>
    implements _$$PostStatImplCopyWith<$Res> {
  __$$PostStatImplCopyWithImpl(
      _$PostStatImpl _value, $Res Function(_$PostStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PostStatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostStatImpl implements _PostStat {
  const _$PostStatImpl({required this.id});

  factory _$PostStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostStatImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'PostStat(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStatImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStatImplCopyWith<_$PostStatImpl> get copyWith =>
      __$$PostStatImplCopyWithImpl<_$PostStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostStatImplToJson(
      this,
    );
  }
}

abstract class _PostStat implements PostStat {
  const factory _PostStat({required final int id}) = _$PostStatImpl;

  factory _PostStat.fromJson(Map<String, dynamic> json) =
      _$PostStatImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$PostStatImplCopyWith<_$PostStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
