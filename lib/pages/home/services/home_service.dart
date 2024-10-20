import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/dio/provider.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_service.g.dart';

final homeServicesProvider = Provider<HomeServices>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = HomeServices(dio, baseUrl: apiUrl);
  return repository;
});

@RestApi()
abstract class HomeServices {
  factory HomeServices(Dio dio, {String baseUrl}) = _HomeServices;
  // 메인 화면 조회
  @GET('/home')
  @Headers({'accessToken': 'true'})
  Future<HomeModel> getHome();

  // 교역소 페이지 정보 조회
  @GET('/home/trading-post')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<TradingPostModel> getTradingPost();

  // 교역소 이용 내역
  @GET('/home/trading-post/history')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<TradingPostHistoryModel> getTradingPostHistory();

  // 골드 packing progress
  @GET('/home/trading-post/packing')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<TradingPostProcessingModel> getPackingProgress();

  // 골드 packing
  @POST('/home/trading-post/packing/confirm')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<ConfirmModel> postPackingConfirm({
    @Body() required PackingConfirmModel body, // {"amount": 0}
  });

  // packing 골드 읽음 처리
  @PUT('/home/trading-post/packing/read')
  @Headers({'accessToken': 'true'})
  Future<void> putPackingRead();

  // 골드 unpacking progress
  @GET('/home/trading-post/unpacking')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<TradingPostProcessingModel> getUnpackingProgress();

  // 골드 unpacking
  @POST('/home/trading-post/unpacking/confirm')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<ConfirmModel> postUnpackingConfirm({
    @Body() required PackingConfirmModel body, // {"amount": 0}
  });

  // 미스테리 박스
  @POST('/home/mysterybox/open')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<MysteryboxModel> postMysteryboxOpen();
}
