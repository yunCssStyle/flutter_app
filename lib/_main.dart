import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:audible_mode/audible_mode.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/notifi/notifi_service.dart';
import 'package:minewarz_app/common/provider/gorouter.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/has_dynamic.dart';
import 'package:minewarz_app/common/widget/mz_toast/persistentToast.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:yaml/yaml.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {}
}

class NoCheckCertificateHttpOverrides extends HttpOverrides {
  // 생성된 HttpOverrides 객체 등록
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void setUpLocator() async {
  // GetIt locator 등록
  GetIt locator = GetIt.instance;
  locator.registerSingleton<NavigationService>(NavigationService());
}

//debugging시 에러 빈번히 발생
void crashlytics() {
  // FirebaseCrashlytics 에러 핸들링
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

void deviceOrientation() {
  // 화면 회전 방지 설정
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

Future<void> hasDynamicIs() async {
  // 아이폰 다이나믹 아일랜드 체크
  final dynamicIsland = HasDynamic();
  bool hasDynamicIsland = await dynamicIsland.hasDynamicIsland();
  DeviceHeight().dynamicIsland(hasDynamicIsland);
}

_verifyVersion() async {
  return rootBundle.loadString('pubspec.yaml').then((value) {
    var doc = loadYaml(value);
    final version = doc['version'];
    final versionLast = version.split('.')[2].split('+');
    return '${version.split('.')[0]}.${version.split('.')[1]}.'
        '${int.parse(versionLast[0])}-${int.parse(versionLast[1])}';
  });
}

versionCheck() async {
  bool versionUpdate = false;

  final version = await _verifyVersion();
  final dio = Dio();
  final launcher = await dio.get('https://launcher.minewarz.io/v$version');
  final launcherData = json.decode(launcher.data);
  final currentVersion = version;
  final lastVersion = await launcherData['lastVersion'];

  List<int> parseVersion(String version) {
    return version.split('-')[0].split('.').map(int.parse).toList();
  }

  int compareVersions(List<int> version1, List<int> version2) {
    int maxLength =
        version1.length > version2.length ? version1.length : version2.length;
    for (int i = 0; i < maxLength; i++) {
      int num1 = i < version1.length ? version1[i] : 0;
      int num2 = i < version2.length ? version2[i] : 0;

      if (num1 < num2) {
        return -1;
      } else if (num1 > num2) {
        return 1;
      }
    }
    return 0;
  }

  try {
    List<int> parsedCurrent = parseVersion(currentVersion!);
    List<int> parsedLast = parseVersion(lastVersion);

    int result = compareVersions(parsedCurrent, parsedLast);

    if (result < 0) {
      versionUpdate = true;
    }
  } catch (e) {
    // print('versionCheck error : $e');
  }
  return versionUpdate;
}

getInit() async {
  final version = await _verifyVersion();
  final dio = Dio();
  final launcher = await dio.get('https://launcher.minewarz.io/v$version');
  final launcherData = json.decode(launcher.data);
  const storage = FlutterSecureStorage();
  await storage.write(key: 'apiUrl', value: launcherData['servers']['game']);
  await storage.write(
      key: 'isMaintenance', value: launcherData['isMaintenance'].toString());
  await storage.write(key: 'message', value: launcherData['message']);
  apiUrl = launcherData['servers']['game'];
  authUrl = launcherData['servers']['auth'];
  // authUrl = 'https://dev-game-auth.minewarz.io'; // 인증 URL
  // apiUrl = 'https://dev-game-api.minewarz.io'; // API URL
  // authUrl = 'https://game-auth.minewarz.io'; // 인증 URL
  // apiUrl = 'https://game-api.minewarz.io'; // API URL
}

clearSecureStorageOnReinstall() async {
  String key = 'hasRunBefore';
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getBool(key) == null) {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    await storage.deleteAll();
    prefs.setBool(key, true);
    try {
      await FirebaseAnalytics.instance.logEvent(
        name: "first_open",
      );
    } catch (e) {
      // print(e);
    }
  }
}

String apiUrl = '';
String authUrl = '';
String lastVersion = '';
bool isMaintenance = false;

void main() async {
  // clearSecureStorageOnReinstall();
  // Firebase 초기화

  WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized(); // binding

  // Firebase 초기화
  //debugging 추가 - firebase 초기화 코드 추가 (필요체크)
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  //--end

  HttpOverrides.global =
      NoCheckCertificateHttpOverrides(); // 생성된 HttpOverrides 객체 등록
  setPathUrlStrategy(); // url에서 샵(#) 없애기

  crashlytics(); // FirebaseCrashlytics 에러 핸들링
  deviceOrientation(); // 화면 회전 방지 설정
  try {
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  } catch (e) {
    // print(e);
  }
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: false,
    badge: false,
    sound: false,
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding); // splash
  // await FirebaseMessaging.instance.deleteToken();
  try {
    await FirebaseMessaging.instance.subscribeToTopic('mwz_notice');
  } catch (e) {
    // print(e);
  }
  await clearSecureStorageOnReinstall();
  await getInit();

  setUpLocator(); // GetIt locator 등록
  await hasDynamicIs(); // 아이폰 다이나믹 아일랜드 체크

  // WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(
    ProviderScope(
      observers: [
        Logger(),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      if (message.notification != null) {
        NotificationService().showNotification(
          // 알림 띄우기
          title: message.notification!.title,
          body: message.notification!.body,
        );
      } else {
        if (message.data["msgType"] == "SYSTEM_NOTICE") {
          // system notice
          PersistentToastShow.show(
            text: message.data["body"].toString(),
          );
          // ref
          //     .read(rollingMessageProvider.notifier)
          //     .addMessage(message.data["body"].toString());
        }
      }
    });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   // if (message.notification != null) {
    //   //   NotificationService().showNotification(
    //   //     // 알림 띄우기
    //   //     title: message.notification!.title,
    //   //     body: message.notification!.body,
    //   //   );
    //   // }
    // });
  }

  // static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  // static FirebaseAnalyticsObserver observer =
  //     FirebaseAnalyticsObserver(analytics: analytics);

  // initState async 함
  @override
  Widget build(BuildContext context) {
    getFcmToken(); // fcm 토큰 가져오기
    final router = ref.watch(routerProvider); // router 가져오기
    FlutterNativeSplash.remove(); // splash 삭제
    return ScreenUtilInit(
      // screenutil init
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height), // design size
      minTextAdapt: true, // text size auto
      splitScreenMode: true, // split screen mode
      builder: (context, child) {
        return StreamBuilder<AudibleProfile?>(
          initialData: AudibleProfile.UNDEFINED,
          stream: Audible.audibleStream,
          builder: (context, snapshot) {
            _generate(snapshot.data ?? AudibleProfile.UNDEFINED);
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const CircularProgressIndicator();
              case ConnectionState.waiting:
              case ConnectionState.active:
              case ConnectionState.done:
                return MaterialApp.router(
                  scaffoldMessengerKey: GlobalVariable.snackbarKey,
                  routerConfig: router,
                  debugShowCheckedModeBanner: false,
                  title: 'Mine warZ',
                );
            }
          },
        );
        // return MaterialApp.router(
        //   scaffoldMessengerKey: GlobalVariable.snackbarKey,
        //   routerConfig: router,
        //   debugShowCheckedModeBanner: false,
        //   title: 'Mine warZ',
        // );
      },
    );
  }

  void _generate(AudibleProfile profile) {
    switch (profile) {
      case AudibleProfile.SILENT_MODE:
        ref.read(soundsProvider.notifier).sound_off();
      case AudibleProfile.VIBRATE_MODE:
      case AudibleProfile.NORMAL_MODE:
        ref.read(soundsProvider.notifier).sound_on();
      case AudibleProfile.UNDEFINED:
        ref.read(soundsProvider.notifier).sound_off();
    }
  }

  //async function
  getFcmToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    await ref
        .watch(secureStorageProvider)
        .write(key: 'FCMTOKEN', value: fcmToken); // fcm 토큰 가져오기
    ref.read(loginProvider.notifier).putPush(fcmToken!); // fcm 토큰 서버에 보내기
  }
}
