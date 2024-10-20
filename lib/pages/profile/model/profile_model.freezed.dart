// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  PioneerModel get pioneer => throw _privateConstructorUsedError; //장착중인 nft
  NewBadgeModel get newBadge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({PioneerModel pioneer, NewBadgeModel newBadge});

  $PioneerModelCopyWith<$Res> get pioneer;
  $NewBadgeModelCopyWith<$Res> get newBadge;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pioneer = null,
    Object? newBadge = null,
  }) {
    return _then(_value.copyWith(
      pioneer: null == pioneer
          ? _value.pioneer
          : pioneer // ignore: cast_nullable_to_non_nullable
              as PioneerModel,
      newBadge: null == newBadge
          ? _value.newBadge
          : newBadge // ignore: cast_nullable_to_non_nullable
              as NewBadgeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PioneerModelCopyWith<$Res> get pioneer {
    return $PioneerModelCopyWith<$Res>(_value.pioneer, (value) {
      return _then(_value.copyWith(pioneer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewBadgeModelCopyWith<$Res> get newBadge {
    return $NewBadgeModelCopyWith<$Res>(_value.newBadge, (value) {
      return _then(_value.copyWith(newBadge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PioneerModel pioneer, NewBadgeModel newBadge});

  @override
  $PioneerModelCopyWith<$Res> get pioneer;
  @override
  $NewBadgeModelCopyWith<$Res> get newBadge;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pioneer = null,
    Object? newBadge = null,
  }) {
    return _then(_$ProfileModelImpl(
      pioneer: null == pioneer
          ? _value.pioneer
          : pioneer // ignore: cast_nullable_to_non_nullable
              as PioneerModel,
      newBadge: null == newBadge
          ? _value.newBadge
          : newBadge // ignore: cast_nullable_to_non_nullable
              as NewBadgeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl({required this.pioneer, required this.newBadge});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final PioneerModel pioneer;
//장착중인 nft
  @override
  final NewBadgeModel newBadge;

  @override
  String toString() {
    return 'ProfileModel(pioneer: $pioneer, newBadge: $newBadge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.pioneer, pioneer) || other.pioneer == pioneer) &&
            (identical(other.newBadge, newBadge) ||
                other.newBadge == newBadge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pioneer, newBadge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final PioneerModel pioneer,
      required final NewBadgeModel newBadge}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  PioneerModel get pioneer;
  @override //장착중인 nft
  NewBadgeModel get newBadge;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewBadgeModel _$NewBadgeModelFromJson(Map<String, dynamic> json) {
  return _NewBadgeModel.fromJson(json);
}

/// @nodoc
mixin _$NewBadgeModel {
  bool get pioneerList => throw _privateConstructorUsedError; //새로운 nft 리스트
  bool get newPioneer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewBadgeModelCopyWith<NewBadgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewBadgeModelCopyWith<$Res> {
  factory $NewBadgeModelCopyWith(
          NewBadgeModel value, $Res Function(NewBadgeModel) then) =
      _$NewBadgeModelCopyWithImpl<$Res, NewBadgeModel>;
  @useResult
  $Res call({bool pioneerList, bool newPioneer});
}

/// @nodoc
class _$NewBadgeModelCopyWithImpl<$Res, $Val extends NewBadgeModel>
    implements $NewBadgeModelCopyWith<$Res> {
  _$NewBadgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pioneerList = null,
    Object? newPioneer = null,
  }) {
    return _then(_value.copyWith(
      pioneerList: null == pioneerList
          ? _value.pioneerList
          : pioneerList // ignore: cast_nullable_to_non_nullable
              as bool,
      newPioneer: null == newPioneer
          ? _value.newPioneer
          : newPioneer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewBadgeModelImplCopyWith<$Res>
    implements $NewBadgeModelCopyWith<$Res> {
  factory _$$NewBadgeModelImplCopyWith(
          _$NewBadgeModelImpl value, $Res Function(_$NewBadgeModelImpl) then) =
      __$$NewBadgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool pioneerList, bool newPioneer});
}

/// @nodoc
class __$$NewBadgeModelImplCopyWithImpl<$Res>
    extends _$NewBadgeModelCopyWithImpl<$Res, _$NewBadgeModelImpl>
    implements _$$NewBadgeModelImplCopyWith<$Res> {
  __$$NewBadgeModelImplCopyWithImpl(
      _$NewBadgeModelImpl _value, $Res Function(_$NewBadgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pioneerList = null,
    Object? newPioneer = null,
  }) {
    return _then(_$NewBadgeModelImpl(
      pioneerList: null == pioneerList
          ? _value.pioneerList
          : pioneerList // ignore: cast_nullable_to_non_nullable
              as bool,
      newPioneer: null == newPioneer
          ? _value.newPioneer
          : newPioneer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewBadgeModelImpl implements _NewBadgeModel {
  const _$NewBadgeModelImpl(
      {required this.pioneerList, required this.newPioneer});

  factory _$NewBadgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewBadgeModelImplFromJson(json);

  @override
  final bool pioneerList;
//새로운 nft 리스트
  @override
  final bool newPioneer;

  @override
  String toString() {
    return 'NewBadgeModel(pioneerList: $pioneerList, newPioneer: $newPioneer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewBadgeModelImpl &&
            (identical(other.pioneerList, pioneerList) ||
                other.pioneerList == pioneerList) &&
            (identical(other.newPioneer, newPioneer) ||
                other.newPioneer == newPioneer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pioneerList, newPioneer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewBadgeModelImplCopyWith<_$NewBadgeModelImpl> get copyWith =>
      __$$NewBadgeModelImplCopyWithImpl<_$NewBadgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewBadgeModelImplToJson(
      this,
    );
  }
}

abstract class _NewBadgeModel implements NewBadgeModel {
  const factory _NewBadgeModel(
      {required final bool pioneerList,
      required final bool newPioneer}) = _$NewBadgeModelImpl;

  factory _NewBadgeModel.fromJson(Map<String, dynamic> json) =
      _$NewBadgeModelImpl.fromJson;

  @override
  bool get pioneerList;
  @override //새로운 nft 리스트
  bool get newPioneer;
  @override
  @JsonKey(ignore: true)
  _$$NewBadgeModelImplCopyWith<_$NewBadgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PioneerModel _$PioneerModelFromJson(Map<String, dynamic> json) {
  return _PioneerModel.fromJson(json);
}

/// @nodoc
mixin _$PioneerModel {
  int get id => throw _privateConstructorUsedError; //nft id
  bool get equipped => throw _privateConstructorUsedError; //장착 여부
  bool get readed => throw _privateConstructorUsedError; //빨콩 읽음 여부
  ProfileStatModel? get stat => throw _privateConstructorUsedError; //nft 스텟
  ProfileStatModel? get statBonus =>
      throw _privateConstructorUsedError; //nft 스텟 보너스
  String get url => throw _privateConstructorUsedError; //nft 이미지 url
  String get type => throw _privateConstructorUsedError; //nft 타입
  String get name => throw _privateConstructorUsedError; //nft 이름
  int get tokenId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PioneerModelCopyWith<PioneerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PioneerModelCopyWith<$Res> {
  factory $PioneerModelCopyWith(
          PioneerModel value, $Res Function(PioneerModel) then) =
      _$PioneerModelCopyWithImpl<$Res, PioneerModel>;
  @useResult
  $Res call(
      {int id,
      bool equipped,
      bool readed,
      ProfileStatModel? stat,
      ProfileStatModel? statBonus,
      String url,
      String type,
      String name,
      int tokenId});

  $ProfileStatModelCopyWith<$Res>? get stat;
  $ProfileStatModelCopyWith<$Res>? get statBonus;
}

/// @nodoc
class _$PioneerModelCopyWithImpl<$Res, $Val extends PioneerModel>
    implements $PioneerModelCopyWith<$Res> {
  _$PioneerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipped = null,
    Object? readed = null,
    Object? stat = freezed,
    Object? statBonus = freezed,
    Object? url = null,
    Object? type = null,
    Object? name = null,
    Object? tokenId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      equipped: null == equipped
          ? _value.equipped
          : equipped // ignore: cast_nullable_to_non_nullable
              as bool,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
      statBonus: freezed == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatModelCopyWith<$Res>? get stat {
    if (_value.stat == null) {
      return null;
    }

    return $ProfileStatModelCopyWith<$Res>(_value.stat!, (value) {
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
abstract class _$$PioneerModelImplCopyWith<$Res>
    implements $PioneerModelCopyWith<$Res> {
  factory _$$PioneerModelImplCopyWith(
          _$PioneerModelImpl value, $Res Function(_$PioneerModelImpl) then) =
      __$$PioneerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool equipped,
      bool readed,
      ProfileStatModel? stat,
      ProfileStatModel? statBonus,
      String url,
      String type,
      String name,
      int tokenId});

  @override
  $ProfileStatModelCopyWith<$Res>? get stat;
  @override
  $ProfileStatModelCopyWith<$Res>? get statBonus;
}

/// @nodoc
class __$$PioneerModelImplCopyWithImpl<$Res>
    extends _$PioneerModelCopyWithImpl<$Res, _$PioneerModelImpl>
    implements _$$PioneerModelImplCopyWith<$Res> {
  __$$PioneerModelImplCopyWithImpl(
      _$PioneerModelImpl _value, $Res Function(_$PioneerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipped = null,
    Object? readed = null,
    Object? stat = freezed,
    Object? statBonus = freezed,
    Object? url = null,
    Object? type = null,
    Object? name = null,
    Object? tokenId = null,
  }) {
    return _then(_$PioneerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      equipped: null == equipped
          ? _value.equipped
          : equipped // ignore: cast_nullable_to_non_nullable
              as bool,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
      statBonus: freezed == statBonus
          ? _value.statBonus
          : statBonus // ignore: cast_nullable_to_non_nullable
              as ProfileStatModel?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@override
class _$PioneerModelImpl implements _PioneerModel {
  const _$PioneerModelImpl(
      {required this.id,
      required this.equipped,
      required this.readed,
      this.stat,
      this.statBonus,
      required this.url,
      required this.type,
      required this.name,
      required this.tokenId});

  factory _$PioneerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PioneerModelImplFromJson(json);

  @override
  final int id;
//nft id
  @override
  final bool equipped;
//장착 여부
  @override
  final bool readed;
//빨콩 읽음 여부
  @override
  final ProfileStatModel? stat;
//nft 스텟
  @override
  final ProfileStatModel? statBonus;
//nft 스텟 보너스
  @override
  final String url;
//nft 이미지 url
  @override
  final String type;
//nft 타입
  @override
  final String name;
//nft 이름
  @override
  final int tokenId;

  @override
  String toString() {
    return 'PioneerModel(id: $id, equipped: $equipped, readed: $readed, stat: $stat, statBonus: $statBonus, url: $url, type: $type, name: $name, tokenId: $tokenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PioneerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equipped, equipped) ||
                other.equipped == equipped) &&
            (identical(other.readed, readed) || other.readed == readed) &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.statBonus, statBonus) ||
                other.statBonus == statBonus) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, equipped, readed, stat,
      statBonus, url, type, name, tokenId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PioneerModelImplCopyWith<_$PioneerModelImpl> get copyWith =>
      __$$PioneerModelImplCopyWithImpl<_$PioneerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PioneerModelImplToJson(
      this,
    );
  }
}

abstract class _PioneerModel implements PioneerModel {
  const factory _PioneerModel(
      {required final int id,
      required final bool equipped,
      required final bool readed,
      final ProfileStatModel? stat,
      final ProfileStatModel? statBonus,
      required final String url,
      required final String type,
      required final String name,
      required final int tokenId}) = _$PioneerModelImpl;

  factory _PioneerModel.fromJson(Map<String, dynamic> json) =
      _$PioneerModelImpl.fromJson;

  @override
  int get id;
  @override //nft id
  bool get equipped;
  @override //장착 여부
  bool get readed;
  @override //빨콩 읽음 여부
  ProfileStatModel? get stat;
  @override //nft 스텟
  ProfileStatModel? get statBonus;
  @override //nft 스텟 보너스
  String get url;
  @override //nft 이미지 url
  String get type;
  @override //nft 타입
  String get name;
  @override //nft 이름
  int get tokenId;
  @override
  @JsonKey(ignore: true)
  _$$PioneerModelImplCopyWith<_$PioneerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileStatModel _$ProfileStatModelFromJson(Map<String, dynamic> json) {
  return _ProfileStatModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileStatModel {
  int get luck => throw _privateConstructorUsedError; //행운
  int get silverTongue => throw _privateConstructorUsedError; //설득력
  int get stamina => throw _privateConstructorUsedError; //체력
  int get intuition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileStatModelCopyWith<ProfileStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatModelCopyWith<$Res> {
  factory $ProfileStatModelCopyWith(
          ProfileStatModel value, $Res Function(ProfileStatModel) then) =
      _$ProfileStatModelCopyWithImpl<$Res, ProfileStatModel>;
  @useResult
  $Res call({int luck, int silverTongue, int stamina, int intuition});
}

/// @nodoc
class _$ProfileStatModelCopyWithImpl<$Res, $Val extends ProfileStatModel>
    implements $ProfileStatModelCopyWith<$Res> {
  _$ProfileStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? luck = null,
    Object? silverTongue = null,
    Object? stamina = null,
    Object? intuition = null,
  }) {
    return _then(_value.copyWith(
      luck: null == luck
          ? _value.luck
          : luck // ignore: cast_nullable_to_non_nullable
              as int,
      silverTongue: null == silverTongue
          ? _value.silverTongue
          : silverTongue // ignore: cast_nullable_to_non_nullable
              as int,
      stamina: null == stamina
          ? _value.stamina
          : stamina // ignore: cast_nullable_to_non_nullable
              as int,
      intuition: null == intuition
          ? _value.intuition
          : intuition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStatModelImplCopyWith<$Res>
    implements $ProfileStatModelCopyWith<$Res> {
  factory _$$ProfileStatModelImplCopyWith(_$ProfileStatModelImpl value,
          $Res Function(_$ProfileStatModelImpl) then) =
      __$$ProfileStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int luck, int silverTongue, int stamina, int intuition});
}

/// @nodoc
class __$$ProfileStatModelImplCopyWithImpl<$Res>
    extends _$ProfileStatModelCopyWithImpl<$Res, _$ProfileStatModelImpl>
    implements _$$ProfileStatModelImplCopyWith<$Res> {
  __$$ProfileStatModelImplCopyWithImpl(_$ProfileStatModelImpl _value,
      $Res Function(_$ProfileStatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? luck = null,
    Object? silverTongue = null,
    Object? stamina = null,
    Object? intuition = null,
  }) {
    return _then(_$ProfileStatModelImpl(
      luck: null == luck
          ? _value.luck
          : luck // ignore: cast_nullable_to_non_nullable
              as int,
      silverTongue: null == silverTongue
          ? _value.silverTongue
          : silverTongue // ignore: cast_nullable_to_non_nullable
              as int,
      stamina: null == stamina
          ? _value.stamina
          : stamina // ignore: cast_nullable_to_non_nullable
              as int,
      intuition: null == intuition
          ? _value.intuition
          : intuition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileStatModelImpl implements _ProfileStatModel {
  const _$ProfileStatModelImpl(
      {required this.luck,
      required this.silverTongue,
      required this.stamina,
      required this.intuition});

  factory _$ProfileStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileStatModelImplFromJson(json);

  @override
  final int luck;
//행운
  @override
  final int silverTongue;
//설득력
  @override
  final int stamina;
//체력
  @override
  final int intuition;

  @override
  String toString() {
    return 'ProfileStatModel(luck: $luck, silverTongue: $silverTongue, stamina: $stamina, intuition: $intuition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStatModelImpl &&
            (identical(other.luck, luck) || other.luck == luck) &&
            (identical(other.silverTongue, silverTongue) ||
                other.silverTongue == silverTongue) &&
            (identical(other.stamina, stamina) || other.stamina == stamina) &&
            (identical(other.intuition, intuition) ||
                other.intuition == intuition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, luck, silverTongue, stamina, intuition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStatModelImplCopyWith<_$ProfileStatModelImpl> get copyWith =>
      __$$ProfileStatModelImplCopyWithImpl<_$ProfileStatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileStatModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileStatModel implements ProfileStatModel {
  const factory _ProfileStatModel(
      {required final int luck,
      required final int silverTongue,
      required final int stamina,
      required final int intuition}) = _$ProfileStatModelImpl;

  factory _ProfileStatModel.fromJson(Map<String, dynamic> json) =
      _$ProfileStatModelImpl.fromJson;

  @override
  int get luck;
  @override //행운
  int get silverTongue;
  @override //설득력
  int get stamina;
  @override //체력
  int get intuition;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStatModelImplCopyWith<_$ProfileStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
