// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseGoogle _$PurchaseGoogleFromJson(Map<String, dynamic> json) {
  return _PurchaseGoogle.fromJson(json);
}

/// @nodoc
mixin _$PurchaseGoogle {
  String get productId => throw _privateConstructorUsedError;
  String get purchaseToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseGoogleCopyWith<PurchaseGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseGoogleCopyWith<$Res> {
  factory $PurchaseGoogleCopyWith(
          PurchaseGoogle value, $Res Function(PurchaseGoogle) then) =
      _$PurchaseGoogleCopyWithImpl<$Res, PurchaseGoogle>;
  @useResult
  $Res call({String productId, String purchaseToken});
}

/// @nodoc
class _$PurchaseGoogleCopyWithImpl<$Res, $Val extends PurchaseGoogle>
    implements $PurchaseGoogleCopyWith<$Res> {
  _$PurchaseGoogleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? purchaseToken = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseToken: null == purchaseToken
          ? _value.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseGoogleImplCopyWith<$Res>
    implements $PurchaseGoogleCopyWith<$Res> {
  factory _$$PurchaseGoogleImplCopyWith(_$PurchaseGoogleImpl value,
          $Res Function(_$PurchaseGoogleImpl) then) =
      __$$PurchaseGoogleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, String purchaseToken});
}

/// @nodoc
class __$$PurchaseGoogleImplCopyWithImpl<$Res>
    extends _$PurchaseGoogleCopyWithImpl<$Res, _$PurchaseGoogleImpl>
    implements _$$PurchaseGoogleImplCopyWith<$Res> {
  __$$PurchaseGoogleImplCopyWithImpl(
      _$PurchaseGoogleImpl _value, $Res Function(_$PurchaseGoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? purchaseToken = null,
  }) {
    return _then(_$PurchaseGoogleImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseToken: null == purchaseToken
          ? _value.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseGoogleImpl implements _PurchaseGoogle {
  const _$PurchaseGoogleImpl(
      {required this.productId, required this.purchaseToken});

  factory _$PurchaseGoogleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseGoogleImplFromJson(json);

  @override
  final String productId;
  @override
  final String purchaseToken;

  @override
  String toString() {
    return 'PurchaseGoogle(productId: $productId, purchaseToken: $purchaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseGoogleImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.purchaseToken, purchaseToken) ||
                other.purchaseToken == purchaseToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, purchaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseGoogleImplCopyWith<_$PurchaseGoogleImpl> get copyWith =>
      __$$PurchaseGoogleImplCopyWithImpl<_$PurchaseGoogleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseGoogleImplToJson(
      this,
    );
  }
}

abstract class _PurchaseGoogle implements PurchaseGoogle {
  const factory _PurchaseGoogle(
      {required final String productId,
      required final String purchaseToken}) = _$PurchaseGoogleImpl;

  factory _PurchaseGoogle.fromJson(Map<String, dynamic> json) =
      _$PurchaseGoogleImpl.fromJson;

  @override
  String get productId;
  @override
  String get purchaseToken;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseGoogleImplCopyWith<_$PurchaseGoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseApple _$PurchaseAppleFromJson(Map<String, dynamic> json) {
  return _PurchaseApple.fromJson(json);
}

/// @nodoc
mixin _$PurchaseApple {
  String get receiptData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseAppleCopyWith<PurchaseApple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseAppleCopyWith<$Res> {
  factory $PurchaseAppleCopyWith(
          PurchaseApple value, $Res Function(PurchaseApple) then) =
      _$PurchaseAppleCopyWithImpl<$Res, PurchaseApple>;
  @useResult
  $Res call({String receiptData});
}

/// @nodoc
class _$PurchaseAppleCopyWithImpl<$Res, $Val extends PurchaseApple>
    implements $PurchaseAppleCopyWith<$Res> {
  _$PurchaseAppleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptData = null,
  }) {
    return _then(_value.copyWith(
      receiptData: null == receiptData
          ? _value.receiptData
          : receiptData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseAppleImplCopyWith<$Res>
    implements $PurchaseAppleCopyWith<$Res> {
  factory _$$PurchaseAppleImplCopyWith(
          _$PurchaseAppleImpl value, $Res Function(_$PurchaseAppleImpl) then) =
      __$$PurchaseAppleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiptData});
}

/// @nodoc
class __$$PurchaseAppleImplCopyWithImpl<$Res>
    extends _$PurchaseAppleCopyWithImpl<$Res, _$PurchaseAppleImpl>
    implements _$$PurchaseAppleImplCopyWith<$Res> {
  __$$PurchaseAppleImplCopyWithImpl(
      _$PurchaseAppleImpl _value, $Res Function(_$PurchaseAppleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptData = null,
  }) {
    return _then(_$PurchaseAppleImpl(
      receiptData: null == receiptData
          ? _value.receiptData
          : receiptData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseAppleImpl implements _PurchaseApple {
  const _$PurchaseAppleImpl({required this.receiptData});

  factory _$PurchaseAppleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseAppleImplFromJson(json);

  @override
  final String receiptData;

  @override
  String toString() {
    return 'PurchaseApple(receiptData: $receiptData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseAppleImpl &&
            (identical(other.receiptData, receiptData) ||
                other.receiptData == receiptData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiptData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseAppleImplCopyWith<_$PurchaseAppleImpl> get copyWith =>
      __$$PurchaseAppleImplCopyWithImpl<_$PurchaseAppleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseAppleImplToJson(
      this,
    );
  }
}

abstract class _PurchaseApple implements PurchaseApple {
  const factory _PurchaseApple({required final String receiptData}) =
      _$PurchaseAppleImpl;

  factory _PurchaseApple.fromJson(Map<String, dynamic> json) =
      _$PurchaseAppleImpl.fromJson;

  @override
  String get receiptData;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseAppleImplCopyWith<_$PurchaseAppleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
