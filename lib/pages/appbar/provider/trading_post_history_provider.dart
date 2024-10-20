import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/home/services/home_service.dart';

final tradingPostHistoryProvider =
    StateNotifierProvider<TradingPostHistoryProvider, TradingPostBase?>((ref) {
  final homeServices = ref.watch(homeServicesProvider);
  return TradingPostHistoryProvider(
    homeServices: homeServices,
    ref: ref,
  );
});

class TradingPostHistoryProvider extends StateNotifier<TradingPostBase?> {
  final HomeServices homeServices;
  final Ref ref;
  TradingPostHistoryProvider({
    required this.homeServices,
    required this.ref,
  }) : super(TradingPostLoading());

  void setTradingPostHistoryData() async {
    try {
      state = await homeServices.getTradingPostHistory();
    } catch (e) {
      // error exception catch
    }
  }
}
