import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:retrofit/retrofit.dart';

part 'inventory_service.g.dart';

final inventoryServicesProvider = Provider<InventoryServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = InventoryServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class InventoryServices {
  factory InventoryServices(Dio dio, {String baseUrl}) = _InventoryServices;
  // Inventory ITEMS
  @GET('/home/inventory/items')
  @Headers({'accessToken': 'true'})
  Future<InventoryModel> getInventory();
  // Inventory ITEMS / 광산채굴권 활성화 및 비활성화
  @PUT('/home/inventory/items/mine/activate')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putActivate({
    @Body() required ActivateModel body, // {"ids": [0]}
  });
  // Inventory ITEMS
  @GET('/home/inventory/items/mine/upgrade')
  @Headers({'accessToken': 'true'})
  Future<UpgradeGetModel> getUpgrade(@Query('ids') List<int> ids);
  // Inventory ITEMS / 광산채굴권 업그레이드
  @POST('/home/inventory/items/mine/upgrade')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<UpgradeMineModel> postUpgrade({
    @Body() required InventoryIdsModel body, // {"ids": [0]}
  });
  // Inventory ITEMS / 광산채굴권 업그레이드
  @PUT('/home/inventory/items/mine/read')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putRead({
    @Body() required InventoryIdsModel body, // {"ids": [0]}
  });
  // Inventory ITEMS / 잭썃 리드
  @PUT('/home/inventory/items/jackpot/read')
  @Headers({
    'accessToken': 'true',
    'content-Type': 'application/json',
  })
  Future<void> putTickeRead();
  // Inventory MAP
  @GET('/home/inventory/map')
  @Headers({'accessToken': 'true'})
  Future<InventoryMapModel> getInventoryMap();
}
