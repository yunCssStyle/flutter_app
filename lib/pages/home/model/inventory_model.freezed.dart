// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) {
  return _InventoryModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryModel {
  DataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryModelCopyWith<InventoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryModelCopyWith<$Res> {
  factory $InventoryModelCopyWith(
          InventoryModel value, $Res Function(InventoryModel) then) =
      _$InventoryModelCopyWithImpl<$Res, InventoryModel>;
  @useResult
  $Res call({DataModel? data});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$InventoryModelCopyWithImpl<$Res, $Val extends InventoryModel>
    implements $InventoryModelCopyWith<$Res> {
  _$InventoryModelCopyWithImpl(this._value, this._then);

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
              as DataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryModelImplCopyWith<$Res>
    implements $InventoryModelCopyWith<$Res> {
  factory _$$InventoryModelImplCopyWith(_$InventoryModelImpl value,
          $Res Function(_$InventoryModelImpl) then) =
      __$$InventoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataModel? data});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InventoryModelImplCopyWithImpl<$Res>
    extends _$InventoryModelCopyWithImpl<$Res, _$InventoryModelImpl>
    implements _$$InventoryModelImplCopyWith<$Res> {
  __$$InventoryModelImplCopyWithImpl(
      _$InventoryModelImpl _value, $Res Function(_$InventoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InventoryModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryModelImpl implements _InventoryModel {
  _$InventoryModelImpl({this.data});

  factory _$InventoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryModelImplFromJson(json);

  @override
  final DataModel? data;

  @override
  String toString() {
    return 'InventoryModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryModelImplCopyWith<_$InventoryModelImpl> get copyWith =>
      __$$InventoryModelImplCopyWithImpl<_$InventoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryModel implements InventoryModel {
  factory _InventoryModel({final DataModel? data}) = _$InventoryModelImpl;

  factory _InventoryModel.fromJson(Map<String, dynamic> json) =
      _$InventoryModelImpl.fromJson;

  @override
  DataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$InventoryModelImplCopyWith<_$InventoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  TicketModel get ticket => throw _privateConstructorUsedError;
  List<MinesListModel> get mines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call({TicketModel ticket, List<MinesListModel> mines});

  $TicketModelCopyWith<$Res> get ticket;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? mines = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
      mines: null == mines
          ? _value.mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MinesListModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res> get ticket {
    return $TicketModelCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketModel ticket, List<MinesListModel> mines});

  @override
  $TicketModelCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? mines = null,
  }) {
    return _then(_$DataModelImpl(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
      mines: null == mines
          ? _value._mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MinesListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  _$DataModelImpl(
      {required this.ticket, required final List<MinesListModel> mines})
      : _mines = mines;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  final TicketModel ticket;
  final List<MinesListModel> _mines;
  @override
  List<MinesListModel> get mines {
    if (_mines is EqualUnmodifiableListView) return _mines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mines);
  }

  @override
  String toString() {
    return 'DataModel(ticket: $ticket, mines: $mines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            const DeepCollectionEquality().equals(other._mines, _mines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ticket, const DeepCollectionEquality().hash(_mines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  factory _DataModel(
      {required final TicketModel ticket,
      required final List<MinesListModel> mines}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  TicketModel get ticket;
  @override
  List<MinesListModel> get mines;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinesListModel _$MinesListModelFromJson(Map<String, dynamic> json) {
  return _MinesListModel.fromJson(json);
}

/// @nodoc
mixin _$MinesListModel {
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get miningPower => throw _privateConstructorUsedError;
  bool get readed => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  int get energy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinesListModelCopyWith<MinesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinesListModelCopyWith<$Res> {
  factory $MinesListModelCopyWith(
          MinesListModel value, $Res Function(MinesListModel) then) =
      _$MinesListModelCopyWithImpl<$Res, MinesListModel>;
  @useResult
  $Res call(
      {int id,
      int level,
      int miningPower,
      bool readed,
      bool active,
      bool locked,
      int energy});
}

/// @nodoc
class _$MinesListModelCopyWithImpl<$Res, $Val extends MinesListModel>
    implements $MinesListModelCopyWith<$Res> {
  _$MinesListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? miningPower = null,
    Object? readed = null,
    Object? active = null,
    Object? locked = null,
    Object? energy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinesListModelImplCopyWith<$Res>
    implements $MinesListModelCopyWith<$Res> {
  factory _$$MinesListModelImplCopyWith(_$MinesListModelImpl value,
          $Res Function(_$MinesListModelImpl) then) =
      __$$MinesListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int level,
      int miningPower,
      bool readed,
      bool active,
      bool locked,
      int energy});
}

/// @nodoc
class __$$MinesListModelImplCopyWithImpl<$Res>
    extends _$MinesListModelCopyWithImpl<$Res, _$MinesListModelImpl>
    implements _$$MinesListModelImplCopyWith<$Res> {
  __$$MinesListModelImplCopyWithImpl(
      _$MinesListModelImpl _value, $Res Function(_$MinesListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? miningPower = null,
    Object? readed = null,
    Object? active = null,
    Object? locked = null,
    Object? energy = null,
  }) {
    return _then(_$MinesListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinesListModelImpl extends _MinesListModel {
  _$MinesListModelImpl(
      {required this.id,
      required this.level,
      required this.miningPower,
      required this.readed,
      required this.active,
      required this.locked,
      required this.energy})
      : super._();

  factory _$MinesListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinesListModelImplFromJson(json);

  @override
  final int id;
  @override
  final int level;
  @override
  final int miningPower;
  @override
  final bool readed;
  @override
  final bool active;
  @override
  final bool locked;
  @override
  final int energy;

  @override
  String toString() {
    return 'MinesListModel(id: $id, level: $level, miningPower: $miningPower, readed: $readed, active: $active, locked: $locked, energy: $energy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinesListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.readed, readed) || other.readed == readed) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.energy, energy) || other.energy == energy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, level, miningPower, readed, active, locked, energy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinesListModelImplCopyWith<_$MinesListModelImpl> get copyWith =>
      __$$MinesListModelImplCopyWithImpl<_$MinesListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinesListModelImplToJson(
      this,
    );
  }
}

abstract class _MinesListModel extends MinesListModel {
  factory _MinesListModel(
      {required final int id,
      required final int level,
      required final int miningPower,
      required final bool readed,
      required final bool active,
      required final bool locked,
      required final int energy}) = _$MinesListModelImpl;
  _MinesListModel._() : super._();

  factory _MinesListModel.fromJson(Map<String, dynamic> json) =
      _$MinesListModelImpl.fromJson;

  @override
  int get id;
  @override
  int get level;
  @override
  int get miningPower;
  @override
  bool get readed;
  @override
  bool get active;
  @override
  bool get locked;
  @override
  int get energy;
  @override
  @JsonKey(ignore: true)
  _$$MinesListModelImplCopyWith<_$MinesListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  int get count => throw _privateConstructorUsedError;
  bool get readed => throw _privateConstructorUsedError;
  bool? get look => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call({int count, bool readed, bool? look});
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? readed = null,
    Object? look = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      look: freezed == look
          ? _value.look
          : look // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, bool readed, bool? look});
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? readed = null,
    Object? look = freezed,
  }) {
    return _then(_$TicketModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      look: freezed == look
          ? _value.look
          : look // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  _$TicketModelImpl({required this.count, required this.readed, this.look});

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

  @override
  final int count;
  @override
  final bool readed;
  @override
  final bool? look;

  @override
  String toString() {
    return 'TicketModel(count: $count, readed: $readed, look: $look)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.readed, readed) || other.readed == readed) &&
            (identical(other.look, look) || other.look == look));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, readed, look);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  factory _TicketModel(
      {required final int count,
      required final bool readed,
      final bool? look}) = _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

  @override
  int get count;
  @override
  bool get readed;
  @override
  bool? get look;
  @override
  @JsonKey(ignore: true)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryMapModel _$InventoryMapModelFromJson(Map<String, dynamic> json) {
  return _InventoryMapModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryMapModel {
  DataMapModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryMapModelCopyWith<InventoryMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryMapModelCopyWith<$Res> {
  factory $InventoryMapModelCopyWith(
          InventoryMapModel value, $Res Function(InventoryMapModel) then) =
      _$InventoryMapModelCopyWithImpl<$Res, InventoryMapModel>;
  @useResult
  $Res call({DataMapModel? data});

  $DataMapModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$InventoryMapModelCopyWithImpl<$Res, $Val extends InventoryMapModel>
    implements $InventoryMapModelCopyWith<$Res> {
  _$InventoryMapModelCopyWithImpl(this._value, this._then);

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
              as DataMapModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataMapModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataMapModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryMapModelImplCopyWith<$Res>
    implements $InventoryMapModelCopyWith<$Res> {
  factory _$$InventoryMapModelImplCopyWith(_$InventoryMapModelImpl value,
          $Res Function(_$InventoryMapModelImpl) then) =
      __$$InventoryMapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataMapModel? data});

  @override
  $DataMapModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InventoryMapModelImplCopyWithImpl<$Res>
    extends _$InventoryMapModelCopyWithImpl<$Res, _$InventoryMapModelImpl>
    implements _$$InventoryMapModelImplCopyWith<$Res> {
  __$$InventoryMapModelImplCopyWithImpl(_$InventoryMapModelImpl _value,
      $Res Function(_$InventoryMapModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InventoryMapModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataMapModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryMapModelImpl implements _InventoryMapModel {
  _$InventoryMapModelImpl({this.data});

  factory _$InventoryMapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryMapModelImplFromJson(json);

  @override
  final DataMapModel? data;

  @override
  String toString() {
    return 'InventoryMapModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryMapModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryMapModelImplCopyWith<_$InventoryMapModelImpl> get copyWith =>
      __$$InventoryMapModelImplCopyWithImpl<_$InventoryMapModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryMapModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryMapModel implements InventoryMapModel {
  factory _InventoryMapModel({final DataMapModel? data}) =
      _$InventoryMapModelImpl;

  factory _InventoryMapModel.fromJson(Map<String, dynamic> json) =
      _$InventoryMapModelImpl.fromJson;

  @override
  DataMapModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$InventoryMapModelImplCopyWith<_$InventoryMapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataMapModel _$DataMapModelFromJson(Map<String, dynamic> json) {
  return _DataMapModel.fromJson(json);
}

/// @nodoc
mixin _$DataMapModel {
  List<MinesListMapModel> get mines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMapModelCopyWith<DataMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMapModelCopyWith<$Res> {
  factory $DataMapModelCopyWith(
          DataMapModel value, $Res Function(DataMapModel) then) =
      _$DataMapModelCopyWithImpl<$Res, DataMapModel>;
  @useResult
  $Res call({List<MinesListMapModel> mines});
}

/// @nodoc
class _$DataMapModelCopyWithImpl<$Res, $Val extends DataMapModel>
    implements $DataMapModelCopyWith<$Res> {
  _$DataMapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mines = null,
  }) {
    return _then(_value.copyWith(
      mines: null == mines
          ? _value.mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MinesListMapModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataMapModelImplCopyWith<$Res>
    implements $DataMapModelCopyWith<$Res> {
  factory _$$DataMapModelImplCopyWith(
          _$DataMapModelImpl value, $Res Function(_$DataMapModelImpl) then) =
      __$$DataMapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MinesListMapModel> mines});
}

/// @nodoc
class __$$DataMapModelImplCopyWithImpl<$Res>
    extends _$DataMapModelCopyWithImpl<$Res, _$DataMapModelImpl>
    implements _$$DataMapModelImplCopyWith<$Res> {
  __$$DataMapModelImplCopyWithImpl(
      _$DataMapModelImpl _value, $Res Function(_$DataMapModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mines = null,
  }) {
    return _then(_$DataMapModelImpl(
      mines: null == mines
          ? _value._mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MinesListMapModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataMapModelImpl implements _DataMapModel {
  _$DataMapModelImpl({required final List<MinesListMapModel> mines})
      : _mines = mines;

  factory _$DataMapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataMapModelImplFromJson(json);

  final List<MinesListMapModel> _mines;
  @override
  List<MinesListMapModel> get mines {
    if (_mines is EqualUnmodifiableListView) return _mines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mines);
  }

  @override
  String toString() {
    return 'DataMapModel(mines: $mines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataMapModelImpl &&
            const DeepCollectionEquality().equals(other._mines, _mines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataMapModelImplCopyWith<_$DataMapModelImpl> get copyWith =>
      __$$DataMapModelImplCopyWithImpl<_$DataMapModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataMapModelImplToJson(
      this,
    );
  }
}

abstract class _DataMapModel implements DataMapModel {
  factory _DataMapModel({required final List<MinesListMapModel> mines}) =
      _$DataMapModelImpl;

  factory _DataMapModel.fromJson(Map<String, dynamic> json) =
      _$DataMapModelImpl.fromJson;

  @override
  List<MinesListMapModel> get mines;
  @override
  @JsonKey(ignore: true)
  _$$DataMapModelImplCopyWith<_$DataMapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinesListMapModel _$MinesListMapModelFromJson(Map<String, dynamic> json) {
  return _MinesListMapModel.fromJson(json);
}

/// @nodoc
mixin _$MinesListMapModel {
  int get level => throw _privateConstructorUsedError;
  int get miningPower => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinesListMapModelCopyWith<MinesListMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinesListMapModelCopyWith<$Res> {
  factory $MinesListMapModelCopyWith(
          MinesListMapModel value, $Res Function(MinesListMapModel) then) =
      _$MinesListMapModelCopyWithImpl<$Res, MinesListMapModel>;
  @useResult
  $Res call({int level, int miningPower});
}

/// @nodoc
class _$MinesListMapModelCopyWithImpl<$Res, $Val extends MinesListMapModel>
    implements $MinesListMapModelCopyWith<$Res> {
  _$MinesListMapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? miningPower = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinesListMapModelImplCopyWith<$Res>
    implements $MinesListMapModelCopyWith<$Res> {
  factory _$$MinesListMapModelImplCopyWith(_$MinesListMapModelImpl value,
          $Res Function(_$MinesListMapModelImpl) then) =
      __$$MinesListMapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int miningPower});
}

/// @nodoc
class __$$MinesListMapModelImplCopyWithImpl<$Res>
    extends _$MinesListMapModelCopyWithImpl<$Res, _$MinesListMapModelImpl>
    implements _$$MinesListMapModelImplCopyWith<$Res> {
  __$$MinesListMapModelImplCopyWithImpl(_$MinesListMapModelImpl _value,
      $Res Function(_$MinesListMapModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? miningPower = null,
  }) {
    return _then(_$MinesListMapModelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinesListMapModelImpl implements _MinesListMapModel {
  _$MinesListMapModelImpl({required this.level, required this.miningPower});

  factory _$MinesListMapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinesListMapModelImplFromJson(json);

  @override
  final int level;
  @override
  final int miningPower;

  @override
  String toString() {
    return 'MinesListMapModel(level: $level, miningPower: $miningPower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinesListMapModelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, miningPower);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinesListMapModelImplCopyWith<_$MinesListMapModelImpl> get copyWith =>
      __$$MinesListMapModelImplCopyWithImpl<_$MinesListMapModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinesListMapModelImplToJson(
      this,
    );
  }
}

abstract class _MinesListMapModel implements MinesListMapModel {
  factory _MinesListMapModel(
      {required final int level,
      required final int miningPower}) = _$MinesListMapModelImpl;

  factory _MinesListMapModel.fromJson(Map<String, dynamic> json) =
      _$MinesListMapModelImpl.fromJson;

  @override
  int get level;
  @override
  int get miningPower;
  @override
  @JsonKey(ignore: true)
  _$$MinesListMapModelImplCopyWith<_$MinesListMapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryIdsModel _$InventoryIdsModelFromJson(Map<String, dynamic> json) {
  return _InventoryIdsModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryIdsModel {
  List<int> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryIdsModelCopyWith<InventoryIdsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryIdsModelCopyWith<$Res> {
  factory $InventoryIdsModelCopyWith(
          InventoryIdsModel value, $Res Function(InventoryIdsModel) then) =
      _$InventoryIdsModelCopyWithImpl<$Res, InventoryIdsModel>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$InventoryIdsModelCopyWithImpl<$Res, $Val extends InventoryIdsModel>
    implements $InventoryIdsModelCopyWith<$Res> {
  _$InventoryIdsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$InventoryIdsModelImplCopyWith<$Res>
    implements $InventoryIdsModelCopyWith<$Res> {
  factory _$$InventoryIdsModelImplCopyWith(_$InventoryIdsModelImpl value,
          $Res Function(_$InventoryIdsModelImpl) then) =
      __$$InventoryIdsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$InventoryIdsModelImplCopyWithImpl<$Res>
    extends _$InventoryIdsModelCopyWithImpl<$Res, _$InventoryIdsModelImpl>
    implements _$$InventoryIdsModelImplCopyWith<$Res> {
  __$$InventoryIdsModelImplCopyWithImpl(_$InventoryIdsModelImpl _value,
      $Res Function(_$InventoryIdsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$InventoryIdsModelImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryIdsModelImpl implements _InventoryIdsModel {
  _$InventoryIdsModelImpl({required final List<int> ids}) : _ids = ids;

  factory _$InventoryIdsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryIdsModelImplFromJson(json);

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'InventoryIdsModel(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryIdsModelImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryIdsModelImplCopyWith<_$InventoryIdsModelImpl> get copyWith =>
      __$$InventoryIdsModelImplCopyWithImpl<_$InventoryIdsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryIdsModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryIdsModel implements InventoryIdsModel {
  factory _InventoryIdsModel({required final List<int> ids}) =
      _$InventoryIdsModelImpl;

  factory _InventoryIdsModel.fromJson(Map<String, dynamic> json) =
      _$InventoryIdsModelImpl.fromJson;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$InventoryIdsModelImplCopyWith<_$InventoryIdsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivateModel _$ActivateModelFromJson(Map<String, dynamic> json) {
  return _ActivateModel.fromJson(json);
}

/// @nodoc
mixin _$ActivateModel {
  int get id => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivateModelCopyWith<ActivateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivateModelCopyWith<$Res> {
  factory $ActivateModelCopyWith(
          ActivateModel value, $Res Function(ActivateModel) then) =
      _$ActivateModelCopyWithImpl<$Res, ActivateModel>;
  @useResult
  $Res call({int id, bool active});
}

/// @nodoc
class _$ActivateModelCopyWithImpl<$Res, $Val extends ActivateModel>
    implements $ActivateModelCopyWith<$Res> {
  _$ActivateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivateModelImplCopyWith<$Res>
    implements $ActivateModelCopyWith<$Res> {
  factory _$$ActivateModelImplCopyWith(
          _$ActivateModelImpl value, $Res Function(_$ActivateModelImpl) then) =
      __$$ActivateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool active});
}

/// @nodoc
class __$$ActivateModelImplCopyWithImpl<$Res>
    extends _$ActivateModelCopyWithImpl<$Res, _$ActivateModelImpl>
    implements _$$ActivateModelImplCopyWith<$Res> {
  __$$ActivateModelImplCopyWithImpl(
      _$ActivateModelImpl _value, $Res Function(_$ActivateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
  }) {
    return _then(_$ActivateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivateModelImpl implements _ActivateModel {
  _$ActivateModelImpl({required this.id, required this.active});

  factory _$ActivateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivateModelImplFromJson(json);

  @override
  final int id;
  @override
  final bool active;

  @override
  String toString() {
    return 'ActivateModel(id: $id, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivateModelImplCopyWith<_$ActivateModelImpl> get copyWith =>
      __$$ActivateModelImplCopyWithImpl<_$ActivateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivateModelImplToJson(
      this,
    );
  }
}

abstract class _ActivateModel implements ActivateModel {
  factory _ActivateModel({required final int id, required final bool active}) =
      _$ActivateModelImpl;

  factory _ActivateModel.fromJson(Map<String, dynamic> json) =
      _$ActivateModelImpl.fromJson;

  @override
  int get id;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$ActivateModelImplCopyWith<_$ActivateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpgradeGetModel _$UpgradeGetModelFromJson(Map<String, dynamic> json) {
  return _UpgradeGetModel.fromJson(json);
}

/// @nodoc
mixin _$UpgradeGetModel {
  num get cost => throw _privateConstructorUsedError;
  UpgradeMineModel get upgradeMine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpgradeGetModelCopyWith<UpgradeGetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeGetModelCopyWith<$Res> {
  factory $UpgradeGetModelCopyWith(
          UpgradeGetModel value, $Res Function(UpgradeGetModel) then) =
      _$UpgradeGetModelCopyWithImpl<$Res, UpgradeGetModel>;
  @useResult
  $Res call({num cost, UpgradeMineModel upgradeMine});

  $UpgradeMineModelCopyWith<$Res> get upgradeMine;
}

/// @nodoc
class _$UpgradeGetModelCopyWithImpl<$Res, $Val extends UpgradeGetModel>
    implements $UpgradeGetModelCopyWith<$Res> {
  _$UpgradeGetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cost = null,
    Object? upgradeMine = null,
  }) {
    return _then(_value.copyWith(
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num,
      upgradeMine: null == upgradeMine
          ? _value.upgradeMine
          : upgradeMine // ignore: cast_nullable_to_non_nullable
              as UpgradeMineModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpgradeMineModelCopyWith<$Res> get upgradeMine {
    return $UpgradeMineModelCopyWith<$Res>(_value.upgradeMine, (value) {
      return _then(_value.copyWith(upgradeMine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpgradeGetModelImplCopyWith<$Res>
    implements $UpgradeGetModelCopyWith<$Res> {
  factory _$$UpgradeGetModelImplCopyWith(_$UpgradeGetModelImpl value,
          $Res Function(_$UpgradeGetModelImpl) then) =
      __$$UpgradeGetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num cost, UpgradeMineModel upgradeMine});

  @override
  $UpgradeMineModelCopyWith<$Res> get upgradeMine;
}

/// @nodoc
class __$$UpgradeGetModelImplCopyWithImpl<$Res>
    extends _$UpgradeGetModelCopyWithImpl<$Res, _$UpgradeGetModelImpl>
    implements _$$UpgradeGetModelImplCopyWith<$Res> {
  __$$UpgradeGetModelImplCopyWithImpl(
      _$UpgradeGetModelImpl _value, $Res Function(_$UpgradeGetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cost = null,
    Object? upgradeMine = null,
  }) {
    return _then(_$UpgradeGetModelImpl(
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num,
      upgradeMine: null == upgradeMine
          ? _value.upgradeMine
          : upgradeMine // ignore: cast_nullable_to_non_nullable
              as UpgradeMineModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpgradeGetModelImpl implements _UpgradeGetModel {
  _$UpgradeGetModelImpl({required this.cost, required this.upgradeMine});

  factory _$UpgradeGetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpgradeGetModelImplFromJson(json);

  @override
  final num cost;
  @override
  final UpgradeMineModel upgradeMine;

  @override
  String toString() {
    return 'UpgradeGetModel(cost: $cost, upgradeMine: $upgradeMine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeGetModelImpl &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.upgradeMine, upgradeMine) ||
                other.upgradeMine == upgradeMine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cost, upgradeMine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeGetModelImplCopyWith<_$UpgradeGetModelImpl> get copyWith =>
      __$$UpgradeGetModelImplCopyWithImpl<_$UpgradeGetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpgradeGetModelImplToJson(
      this,
    );
  }
}

abstract class _UpgradeGetModel implements UpgradeGetModel {
  factory _UpgradeGetModel(
      {required final num cost,
      required final UpgradeMineModel upgradeMine}) = _$UpgradeGetModelImpl;

  factory _UpgradeGetModel.fromJson(Map<String, dynamic> json) =
      _$UpgradeGetModelImpl.fromJson;

  @override
  num get cost;
  @override
  UpgradeMineModel get upgradeMine;
  @override
  @JsonKey(ignore: true)
  _$$UpgradeGetModelImplCopyWith<_$UpgradeGetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpgradeMineModel _$UpgradeMineModelFromJson(Map<String, dynamic> json) {
  return _UpgradeMineModel.fromJson(json);
}

/// @nodoc
mixin _$UpgradeMineModel {
  int get level => throw _privateConstructorUsedError;
  int get miningPower => throw _privateConstructorUsedError;
  bool get readed => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  int get energy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpgradeMineModelCopyWith<UpgradeMineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeMineModelCopyWith<$Res> {
  factory $UpgradeMineModelCopyWith(
          UpgradeMineModel value, $Res Function(UpgradeMineModel) then) =
      _$UpgradeMineModelCopyWithImpl<$Res, UpgradeMineModel>;
  @useResult
  $Res call(
      {int level,
      int miningPower,
      bool readed,
      bool active,
      bool locked,
      int energy});
}

/// @nodoc
class _$UpgradeMineModelCopyWithImpl<$Res, $Val extends UpgradeMineModel>
    implements $UpgradeMineModelCopyWith<$Res> {
  _$UpgradeMineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? miningPower = null,
    Object? readed = null,
    Object? active = null,
    Object? locked = null,
    Object? energy = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpgradeMineModelImplCopyWith<$Res>
    implements $UpgradeMineModelCopyWith<$Res> {
  factory _$$UpgradeMineModelImplCopyWith(_$UpgradeMineModelImpl value,
          $Res Function(_$UpgradeMineModelImpl) then) =
      __$$UpgradeMineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int level,
      int miningPower,
      bool readed,
      bool active,
      bool locked,
      int energy});
}

/// @nodoc
class __$$UpgradeMineModelImplCopyWithImpl<$Res>
    extends _$UpgradeMineModelCopyWithImpl<$Res, _$UpgradeMineModelImpl>
    implements _$$UpgradeMineModelImplCopyWith<$Res> {
  __$$UpgradeMineModelImplCopyWithImpl(_$UpgradeMineModelImpl _value,
      $Res Function(_$UpgradeMineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? miningPower = null,
    Object? readed = null,
    Object? active = null,
    Object? locked = null,
    Object? energy = null,
  }) {
    return _then(_$UpgradeMineModelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      miningPower: null == miningPower
          ? _value.miningPower
          : miningPower // ignore: cast_nullable_to_non_nullable
              as int,
      readed: null == readed
          ? _value.readed
          : readed // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpgradeMineModelImpl implements _UpgradeMineModel {
  _$UpgradeMineModelImpl(
      {required this.level,
      required this.miningPower,
      required this.readed,
      required this.active,
      required this.locked,
      required this.energy});

  factory _$UpgradeMineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpgradeMineModelImplFromJson(json);

  @override
  final int level;
  @override
  final int miningPower;
  @override
  final bool readed;
  @override
  final bool active;
  @override
  final bool locked;
  @override
  final int energy;

  @override
  String toString() {
    return 'UpgradeMineModel(level: $level, miningPower: $miningPower, readed: $readed, active: $active, locked: $locked, energy: $energy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeMineModelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.miningPower, miningPower) ||
                other.miningPower == miningPower) &&
            (identical(other.readed, readed) || other.readed == readed) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.energy, energy) || other.energy == energy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, level, miningPower, readed, active, locked, energy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeMineModelImplCopyWith<_$UpgradeMineModelImpl> get copyWith =>
      __$$UpgradeMineModelImplCopyWithImpl<_$UpgradeMineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpgradeMineModelImplToJson(
      this,
    );
  }
}

abstract class _UpgradeMineModel implements UpgradeMineModel {
  factory _UpgradeMineModel(
      {required final int level,
      required final int miningPower,
      required final bool readed,
      required final bool active,
      required final bool locked,
      required final int energy}) = _$UpgradeMineModelImpl;

  factory _UpgradeMineModel.fromJson(Map<String, dynamic> json) =
      _$UpgradeMineModelImpl.fromJson;

  @override
  int get level;
  @override
  int get miningPower;
  @override
  bool get readed;
  @override
  bool get active;
  @override
  bool get locked;
  @override
  int get energy;
  @override
  @JsonKey(ignore: true)
  _$$UpgradeMineModelImplCopyWith<_$UpgradeMineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
