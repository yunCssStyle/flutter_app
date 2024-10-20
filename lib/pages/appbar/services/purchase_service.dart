import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/appbar/model/purchase_model.dart';
import 'package:retrofit/retrofit.dart';

part 'purchase_service.g.dart';

final purchaseServicesProvider = Provider<PurchaseServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = PurchaseServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class PurchaseServices {
  factory PurchaseServices(Dio dio, {String baseUrl}) = _PurchaseServices;
  // 애플 결제
  @POST('/purchases/apple')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<void> postPurchaseApple({
    @Body() required PurchaseApple body, // {"receiptData": "string"}
  });
  // 구글 결제
  @POST('/purchases/google')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<void> postPurchaseGoolgle({
    @Body()
    required PurchaseGoogle
        body, // {"productId": "string", "purchaseToken": "string"}
  });
}
