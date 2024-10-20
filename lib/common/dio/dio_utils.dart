import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:minewarz_app/_env/enviroment.dart';

class DioUtils {
  static dynamic requestHead(
      dynamic headers, FlutterSecureStorage storage) async {
    if (headers.containsKey('accessToken') == true) {
      headers.remove('accessToken');
      final token = await storage.read(key: 'ACCESS_TOKEN');
      headers["Authorization"] = "Bearer $token";
    }
  }

  static dynamic refreshToken(
      RequestOptions options, FlutterSecureStorage storage) async {
    try {
      final refreshToken = await storage.read(key: 'REFRESH_TOKEN');
      final platform = await storage.read(key: 'PLATFORM');
      final deviceId = await storage.read(key: 'DEVICEIS');
      final fcmToken = await FirebaseMessaging.instance.getToken();
      final dio = Dio();
      final resp = await dio.get(
        '$apiUrl/tokens/reissue?platform=$platform&did=$deviceId&push=$fcmToken&refresh_token=$refreshToken',
      );
      final accessToken = resp.data['access_token'];
      final refreshTokenNew = resp.data['refresh_token'];
      options.headers.addAll({
        'authorization': 'Bearer $accessToken',
      });
      await storage.write(key: 'ACCESS_TOKEN', value: accessToken);
      await storage.write(key: 'REFRESH_TOKEN', value: refreshTokenNew);
      final response = await dio.fetch(options);
      return response;
    } catch (e) {
      return null;
    }
  }
}
