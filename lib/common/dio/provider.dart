import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/dio/dio.dart';
import 'package:minewarz_app/common/storage/storage.dart';

final dioProvider = Provider<Dio>((ref) {
  var dio = Dio();
  dio.options.connectTimeout = connectTimeout; //5s
  var options = BaseOptions(
    connectTimeout: connectTimeout,
  );

  dio = Dio(options);
  final storage = ref.watch(secureStorageProvider);
  // ref.watch()을 사용하여 dioProvider를 읽어온다.
  dio.interceptors.add(
    CustomInterceptor(
      storage: storage,
      ref: ref,
    ),
  );
  // dioProvider를 읽어온 dio에 CustomInterceptor를 추가한다.
  return dio;
});
