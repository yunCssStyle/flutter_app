import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:encrypt/encrypt.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/widget/modal/maintenance.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/action/provider/action_provider.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/login/modal/account_modal.dart';
import 'package:minewarz_app/pages/login/model/account_model.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/model/login_model.dart';
import 'package:minewarz_app/pages/login/services/login_service.dart';
import 'package:minewarz_app/pages/profile/provider/profile_provider.dart';

final loginProvider =
    StateNotifierProvider<LoginProvider, AuthCheckBase?>((ref) {
  final storage = ref.watch(secureStorageProvider);
  final loginServices = ref.watch(loginServicesProvider);
  return LoginProvider(
    loginServices: loginServices,
    storage: storage,
    ref: ref,
  );
});

class LoginProvider extends StateNotifier<AuthCheckBase?> {
  final FlutterSecureStorage storage;
  final LoginServices loginServices;
  final Ref ref;
  LoginProvider({
    required this.storage,
    required this.loginServices,
    required this.ref,
  }) : super(AuthCheckLoading()) {
    authCheck();
  }

  Future<void> authCheck() async {
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');
    final guestLogin = await storage.read(key: 'GUEST_LOGIN');
    if (accessToken == null && guestLogin == null) {
      state = null;
      return;
    }
    if (guestLogin != null) {
      state = AuthCheckGuest();
      return;
    } else {
      state = AuthCheckSuccess();
      return;
    }
  }

  Future<void> guestLogin() async {
    state = AuthCheckLoading();
    await storage.write(key: 'GUEST_LOGIN', value: 'guest');
    state = AuthCheckGuest();
  }

  Future<void> guestLogout() async {
    await storage.delete(key: 'GUEST_LOGIN');
    state = null;
    FToastShow.ftoast(
      text: 'Guest have been logged out.',
    );
  }

  Future<void> login(loginPlatform) async {
    state = AuthCheckLoading();
    try {
      final urls = loginPlatform == 'guest'
          ? 'login/authorization'
          : 'oauth2/authorization';
      String? fcmToken = '';
      String? deviceId = await getId();
      await storage.write(key: 'DEVICEIS', value: deviceId);
      final platform = Platform.isAndroid ? 'ANDROID' : 'IOS';
      await storage.write(key: 'PLATFORM', value: platform);
      // final strAesKey = getRandomString(32);
      fcmToken = await storage.read(key: 'FCMTOKEN');
      fcmToken ??= await FirebaseMessaging.instance.getToken();
      final url =
          '$authUrl/$urls/$loginPlatform?platform=$platform&did=$deviceId&push=$fcmToken&redirect_uri=$schemeName://success';
      final result = await FlutterWebAuth.authenticate(
        url: url,
        callbackUrlScheme: schemeName,
      );
      // // 게스트 로그인일 경우
      // if (loginPlatform == 'guest') {
      //     await storage.write(key: 'GUEST_LOGIN', value: 'guest');
      //     state = AuthCheckGuest();
      // }
      // 정상적으로 로그인이 되었을 경우
      if (Uri.parse(result).queryParameters['access_token'] != null) {
        state = AuthCheckSuccess();
        final accessToken = Uri.parse(result).queryParameters['access_token'];
        await storage.write(key: 'ACCESS_TOKEN', value: accessToken);
        // FirebaseAnalytics.instance.logLogin(
        //     loginMethod: Uri.parse(result).queryParameters['access_token']);
      } else {
        String decoded = utf8.decode(base64
            .decode(Uri.parse(result).queryParameters['data'].toString()));
        Map<String, dynamic> json = jsonDecode(decoded);
        BlockedModel blockData = BlockedModel.fromJson(json);
        if (blockData.type == 'MAINTENANCE') {
          // 점검중일 경우
          modalMaintenance(
            message: blockData.maintenanceDetails!.message,
            startDateTime: blockData.maintenanceDetails!.startDateTime,
            endDateTime: blockData.maintenanceDetails!.endDateTime,
          );
        } else {
          // 탈퇴 회원및 블럭 회원일 경우
          modalContent(
            title: 'Oops!',
            widget: AccountModal(
              type: blockData.type,
              blockedDetails: blockData.blockedDetails != null
                  ? BlockedDetailsModel(
                      eternal: blockData.blockedDetails!.eternal,
                      startDateTime: blockData.blockedDetails!.startDateTime,
                      endDateTime: blockData.blockedDetails!.endDateTime,
                      reason: blockData.blockedDetails!.reason,
                    )
                  : null,
            ),
          );
        }
        state = AuthCheckBLOCKED();
      }
    } catch (e) {
      if (e is PlatformException) {
        state = AuthCheckError(code: e.code, message: '로그인 취소');
      } else {
        // error exception catch
      }
    }

    // state = AuthCheckLoading();
    // String? deviceId = await _getId();
    // await storage.write(key: 'DEVICEIS', value: deviceId);
    // final platform = Platform.isAndroid ? 'ANDROID' : 'IOS';
    // await storage.write(key: 'PLATFORM', value: platform);
    // // final strAesKey = getRandomString(32);
    // final fcmToken = await FirebaseMessaging.instance.getToken();
    // final url =
    //     '$authUrl/oauth2/authorization/$loginPlatform?platform=$platform&did=$deviceId&push=$fcmToken&redirect_uri=$schemeName://success';
    // final result = await FlutterWebAuth.authenticate(
    //   url: url,
    //   callbackUrlScheme: schemeName,
    // );
    // final accessToken = Uri.parse(result).queryParameters['access_token'];
    // final refreshToken = Uri.parse(result).queryParameters['refresh_token'];
    // // final key = Key.fromUtf8(strAesKey);
    // // final iv = IV.fromUtf8(strAesKey.substring(0, 16));
    // // final decryptResult = decrypt(token.toString(), key, iv);
    // // AuthCheckModel loginResModel =
    // //     AuthCheckModel.fromJson(jsonDecode(decryptResult));
    // // print('loginResModel: $loginResModel');
    // await storage.write(key: 'ACCESS_TOKEN', value: accessToken);
    // await storage.write(key: 'REFRESH_TOKEN', value: refreshToken);

    // authCheck();
  }

  Future<String?> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // Unique ID on iOS
    } else {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // Unique ID on Android
    }
  }

  String getRandomString(int length) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
  }

  dynamic decrypt(strValue, key, iv) {
    if (strValue.isEmpty) {
      return "";
    }
    final urlDecodedText = Uri.decodeFull(strValue);
    final base64DecodedText = base64Decode(urlDecodedText);
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    Encrypted encrypted = Encrypted(base64DecodedText);
    final decryptText = encrypter.decrypt(encrypted, iv: iv);
    return decryptText;
  }

  Future<void> putPush(push) async {
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');
    if (accessToken == null) return;
    try {
      await loginServices.putPush(
        body: PushPutModel(push: push),
      );
    } catch (e) {
      // error exception catch
    }
  }

  loginState() {
    return state;
  }

  Future<void> logout({bool sessions = true, bool toast = true}) async {
    try {
      state = null;
      if (toast) {
        FToastShow.ftoast(
          text: 'You have been logged out.',
        );
      }
      // ref.read(homeProvider.notifier).loading();
      if (sessions) await loginServices.postLogout();
      await storage.delete(key: 'ACCESS_TOKEN');
      await storage.delete(key: 'GUEST_LOGIN');
      await storage.delete(key: 'FIRST');
      ref.read(homeProvider.notifier).loading();
      ref.read(actionProvider.notifier).loading();
      ref.read(profileProvider.notifier).loading();
      await FirebaseAnalytics.instance.resetAnalyticsData(); // 애널리틱스 초기화
    } catch (e) {
      // error exception catch
    }
  }
}
