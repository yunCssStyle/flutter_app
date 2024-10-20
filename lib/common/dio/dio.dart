// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/dio/dio_utils.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/routes/routes.dart';
import 'package:minewarz_app/common/widget/modal/not_snap_shot.dart';
import 'package:minewarz_app/common/widget/modal/network_error.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/provider/revenge_list_provider.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/action/provider/weapon_provider.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class CustomInterceptor extends Interceptor {
  final FlutterSecureStorage storage; // 토큰 저장소
  final Ref ref; // dioProvider를 읽어오기 위한 ref
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  CustomInterceptor({
    required this.storage,
    required this.ref,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await DioUtils.requestHead(options.headers, storage);
    debugPrint('[Request] [${options.headers}] ${options.uri}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    debugPrint('[Response] [${response.data}] ${response.requestOptions.uri}');
    return super.onResponse(response, handler);
  }

  int weaponCount = 0;
  int roundCount = 0;
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      await FirebaseCrashlytics.instance
          .setUserIdentifier(ref.read(myInfoProvider.notifier).getNickname());
      await FirebaseCrashlytics.instance
          .setCustomKey('str_method', err.requestOptions.method.toString());
      await FirebaseCrashlytics.instance
          .setCustomKey('str_url', err.requestOptions.uri.toString());
      await FirebaseCrashlytics.instance.setCustomKey(
          'str_query', err.requestOptions.queryParameters.toString());
      FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
    } catch (e) {
      // print(e);
    }
    final context = GetIt.I<NavigationService>().getContext();
    GoRouter router = GoRouter.of(context);
    const int maxRetryCount = 10;
    if (err.type == DioExceptionType.connectionError) {
      if (weaponCount >= maxRetryCount || roundCount >= maxRetryCount) {
        ref.read(isAttackProvider.notifier).state = false;
        weaponCount = 0;
        roundCount = 0;
        GoRouter.of(context).go('/start');
      }
      if (err.requestOptions.path == '/actions/attack/weapon') {
        while (weaponCount < maxRetryCount) {
          weaponCount++;
          try {
            await ref.read(weaponProvider.notifier).setWeaponData(
                attackId: err.requestOptions.queryParameters['attackId'],
                weaponId: err.requestOptions.queryParameters['weaponId']);
            await ref.read(myInfoProvider.notifier).setMyInfoData();
            await ref.read(targetListProvider.notifier).setTargetListData();
            await ref.read(revengeListProvider.notifier).setRevengeListData();
            weaponCount = 0;
            roundCount = 0;
            break;
          } catch (e) {
            if (weaponCount >= maxRetryCount) {
              rethrow;
            }
          }
        }
      }
      if (err.requestOptions.path == '/actions/attack/round') {
        while (roundCount < maxRetryCount) {
          roundCount++;
          try {
            await ref.read(attackProvider.notifier).getAttack(
                targetId: err.requestOptions.queryParameters['targetId'],
                attackId: err.requestOptions.queryParameters['attackId']);
            await ref.read(myInfoProvider.notifier).setMyInfoData();
            await ref.read(targetListProvider.notifier).setTargetListData();
            await ref.read(revengeListProvider.notifier).setRevengeListData();
            weaponCount = 0;
            roundCount = 0;
            break;
          } catch (e) {
            if (roundCount >= maxRetryCount) {
              rethrow;
            }
          }
        }
      }
    }
    if (err.type == DioExceptionType.connectionTimeout) {
      router.go('/start');
    } else {
      final error401 = err.response?.statusCode == 401;
      final error403 = err.response?.statusCode == 403;
      final error412 = err.response?.statusCode == 412;
      final error500 = err.response?.statusCode == 500 ||
          err.response?.statusCode == 503 ||
          err.response?.statusCode == 502;
      final errorResponse = err.response!;
      if (error401) {
        final state = ref.read(loginProvider.notifier).loginState();
        ref.read(loginProvider.notifier).logout(sessions: false, toast: false);
        // ref.read(loginProvider.notifier).logout(toast: false);
        if (state != null) {
          FToastShow.ftoast(
            text: 'Your login session has expired.',
            type: 'error',
          );
        }
      } else if (error412) {
        if (errorResponse.data['client_refresh']) {
          ref.read(targetListProvider.notifier).reset();
          ref.read(revengeListProvider.notifier).reset();
        }
        if (errorResponse.data['client_code'].toString() ==
            'NOT_FOUND_SNAPSHOT_MEMBER') {
          modalNotSnapShot();
        } else {
          if (errorResponse.data['client_code'].toString() !=
                  'NOT_FOUND_ACTION_ROUND' &&
              errorResponse.data['client_code'].toString() != 'LOCK' &&
              errorResponse.data['client_code'].toString() !=
                  'NOT_FOUND_YESTERDAY_SNAPSHOT_MEMBER') {
            FToastShow.ftoast(
              text: errorResponse.data['client_message'],
              type: 'error',
            );
          }
        }
      } else if (error403) {
        if (errorResponse.data['client_message'] == 'Withdrawal member') {
          ref.read(loginProvider.notifier).logout(toast: false);
        } else if (errorResponse.data['client_message'] ==
            'Not found nickname') {
        } else {
          if (GoRouter.of(context).location() != '/start') {
            router.go('/start');
          }
        }
      } else if (error500) {
        if (GoRouter.of(context).location() != '/login') {
          modalError();
        }
      } else {
        FToastShow.ftoast(
          text: errorResponse.data['client_message'],
          type: 'error',
        );
      }
    }
    // debugPrint(
    //     '[onError Error] ${err.response?.realUri} ${err.response?.data} $err');

    return super.onError(err, handler);
  }
}
