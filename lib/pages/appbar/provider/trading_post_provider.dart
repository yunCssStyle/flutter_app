import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/services/home_service.dart';

final tradingPostProvider =
    StateNotifierProvider<TradingPostProvider, TradingPostBase?>((ref) {
  final homeServices = ref.watch(homeServicesProvider);
  return TradingPostProvider(
    homeServices: homeServices,
    ref: ref,
  );
});

class TradingPostProvider extends StateNotifier<TradingPostBase?> {
  final HomeServices homeServices;
  final Ref ref;
  TradingPostProvider({
    required this.homeServices,
    required this.ref,
  }) : super(TradingPostLoading());

  void setTradingPostData() async {
    try {
      state = await homeServices.getTradingPost();
    } catch (e) {
      // error exception catch
    }
  }

  void ftosat(goldAmount, type) {
    FToastShow.ftoast(
      text: 'Begin $type.',
      type: 'success',
      // toast: type == 'Unpacking'
      //     ? Column(
      //         children: [
      //           Mzp(
      //             mzpIconSize: 24.w,
      //             mzpIcon: true,
      //             mzp: goldAmount,
      //             mzpSize: 18.w,
      //             mzpSmallSize: 12.w,
      //             mzpColor: Colors.black,
      //             mzpSmallColor: AppColor.darkGrey1,
      //             align: MainAxisAlignment.center,
      //           ),
      //           SizedBox(height: 5.w),
      //         ],
      //       )
      //     : Container(),
    );
  }

  Future<bool> packingProgress() async {
    try {
      final result = await homeServices.getPackingProgress();
      return result.isProcessing;
    } catch (e) {
      // error exception catch
    }
    return false;
  }

  Future<bool> unPackingProgress() async {
    try {
      final result = await homeServices.getUnpackingProgress();
      return result.isProcessing;
    } catch (e) {
      // error exception catch
    }
    return false;
  }

  Future<void> packingConfirm(amount) async {
    try {
      final currentList = state; // 상태값 복사
      state = TradingPostLoading();
      final data = await homeServices.postPackingConfirm(
          body: PackingConfirmModel(amount: amount));
      ref.read(myInfoProvider.notifier).setMyInfoData();
      if (currentList is TradingPostModel) {
        final newdata = currentList.copyWith(
          ownedGold: data.ownedGold,
          packedGold: data.packedGold,
        );
        await Future.delayed(const Duration(milliseconds: 500));
        state = newdata;
      }
      ftosat(amount, 'Packing');
      final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
      await FirebaseAnalytics.instance.logEvent(
        name: "click_Packing",
        parameters: {"nickname": nickname},
      );
    } on DioException catch (e) {
      Map<String, dynamic> json = jsonDecode(e.response.toString());
      if (json['client_code'].toString() == 'LOCK') {
        FToastShow.ftoast(
          text: 'Packing failed.',
          type: 'error',
        );
      }
      setTradingPostData();
      // error exception catch
    }
  }

  Future<void> unpackingConfirm(amount) async {
    try {
      final currentList = state; // 상태값 복사
      state = TradingPostLoading();
      final data = await homeServices.postUnpackingConfirm(
          body: PackingConfirmModel(amount: amount));
      ref.read(myInfoProvider.notifier).setMyInfoData();
      if (currentList is TradingPostModel) {
        final newdata = currentList.copyWith(
          ownedGold: data.ownedGold,
          packedGold: data.packedGold,
        );
        await Future.delayed(const Duration(milliseconds: 500));
        state = newdata;
      }
      ftosat(amount, 'Unpacking');
      final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
      await FirebaseAnalytics.instance.logEvent(
        name: "click_Unpacking",
        parameters: {"nickname": nickname},
      );
    } on DioException catch (e) {
      Map<String, dynamic> json = jsonDecode(e.response.toString());
      if (json['client_code'].toString() == 'LOCK') {
        FToastShow.ftoast(
          text: 'Unpacking failed.',
          type: 'error',
        );
      }
      setTradingPostData();
      // error exception catch
    }
  }

  Future<void> packingRead() async {
    try {
      await homeServices.putPackingRead();
    } catch (e) {
      // error exception catch
    }
  }
}
