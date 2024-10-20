import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_model.freezed.dart';
part 'purchase_model.g.dart';

@freezed
class PurchaseGoogle with _$PurchaseGoogle {
  const factory PurchaseGoogle({
    required String productId,
    required String purchaseToken,
  }) = _PurchaseGoogle;
  factory PurchaseGoogle.fromJson(Map<String, dynamic> json) =>
      _$PurchaseGoogleFromJson(json);
}

@freezed
class PurchaseApple with _$PurchaseApple {
  const factory PurchaseApple({
    required String receiptData,
  }) = _PurchaseApple;
  factory PurchaseApple.fromJson(Map<String, dynamic> json) =>
      _$PurchaseAppleFromJson(json);
}
