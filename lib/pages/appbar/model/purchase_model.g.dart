// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseGoogleImpl _$$PurchaseGoogleImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseGoogleImpl(
      productId: json['productId'] as String,
      purchaseToken: json['purchaseToken'] as String,
    );

Map<String, dynamic> _$$PurchaseGoogleImplToJson(
        _$PurchaseGoogleImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'purchaseToken': instance.purchaseToken,
    };

_$PurchaseAppleImpl _$$PurchaseAppleImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseAppleImpl(
      receiptData: json['receiptData'] as String,
    );

Map<String, dynamic> _$$PurchaseAppleImplToJson(_$PurchaseAppleImpl instance) =>
    <String, dynamic>{
      'receiptData': instance.receiptData,
    };
