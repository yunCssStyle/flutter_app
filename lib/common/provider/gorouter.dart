import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/routes/routes.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final provider = ref.read(authCheckProvider);
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  return GoRouter(
    observers: [FirebaseAnalyticsObserver(analytics: analytics)],
    routes: provider.routes,
    navigatorKey: provider.rootNavigatorKey,
    initialLocation: '/start',
    refreshListenable: provider,
    redirect: provider.redirectLogic,
    debugLogDiagnostics: true,
  );
});
