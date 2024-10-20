import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/provider/navigation.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/pages/action/screen/action_screen.dart';
import 'package:minewarz_app/pages/guest/layout/layout_widget.dart';
import 'package:minewarz_app/pages/home/screen/home_screen.dart';
import 'package:minewarz_app/pages/jjackpot/screen/jjackpot_screen.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:minewarz_app/pages/login/screen/login_screen.dart';
import 'package:minewarz_app/pages/profile/screen/profile_screen.dart';
import 'package:minewarz_app/pages/reports/screen/reports_screen.dart';
import 'package:minewarz_app/pages/splash/splash.dart';
import 'package:minewarz_app/pages/start/screen/start_screen.dart';
import 'package:minewarz_app/pages/version/version_update.dart';

final authCheckProvider = ChangeNotifierProvider<AuthCheckProvider>((ref) {
  return AuthCheckProvider(ref: ref);
});

class AuthCheckProvider extends ChangeNotifier {
  final Ref ref;
  AuthCheckProvider({
    required this.ref,
  }) {
    ref.listen<AuthCheckBase?>(loginProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }

  final rootNavigatorKey = GetIt.I<NavigationService>().navigatorKey;
  // final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  // get rootNavigatorKey => _rootNavigatorKey;
  List<RouteBase> get routes => [
        GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen(),
        ),
        GoRoute(
          name: 'version_update',
          path: '/version_update',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const VersionUpdate(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          name: 'login',
          path: '/login',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const LoginScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          name: 'start',
          path: '/start',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const StartScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          name: 'guest',
          path: '/guest',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const GuestLayoutWidget(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return LayoutWidget(
              safeAreaIs: false,
              location: state.uri.toString(),
              backgroundImage:
                  'assets/images/common/${state.uri.toString().substring(1)}_background.png',
              child: child,
            );
          },
          routes: [
            GoRoute(
              name: 'profile',
              path: '/profile',
              parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const NoTransitionPage(
                  child: ProfileScreen(),
                );
              },
              // pageBuilder: (BuildContext context, GoRouterState state) {
              //   return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const ProfileScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return FadeTransition(opacity: animation, child: child);
              //     },
              //   );
              // },
              routes: const [],
            ),
            GoRoute(
              name: 'action',
              path: '/action',
              parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const NoTransitionPage(
                  child: ActionScreen(),
                );
              },
              // pageBuilder: (BuildContext context, GoRouterState state) {
              //   return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const ActionScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return FadeTransition(opacity: animation, child: child);
              //     },
              //   );
              // },
              routes: const [],
            ),
            GoRoute(
              name: 'home',
              path: '/home',
              parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const NoTransitionPage(
                  child: HomeScreen(),
                );
              },
              // pageBuilder: (BuildContext context, GoRouterState state) {
              //   return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const HomeScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return FadeTransition(opacity: animation, child: child);
              //     },
              //   );
              // },
              routes: const [],
            ),
            GoRoute(
              name: 'reports',
              path: '/reports',
              parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const NoTransitionPage(
                  child: ReportsScreen(),
                );
              },
              // pageBuilder: (BuildContext context, GoRouterState state) {
              //   return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const ReportsScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return FadeTransition(opacity: animation, child: child);
              //     },
              //   );
              // },
              routes: const [],
            ),
            GoRoute(
              name: 'jjackpot',
              path: '/jjackpot',
              parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const NoTransitionPage(
                  child: JjackpotScreen(),
                );
              },
              // pageBuilder: (BuildContext context, GoRouterState state) {
              //   return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const JjackpotScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return FadeTransition(opacity: animation, child: child);
              //     },
              //   );
              // },
              routes: const [],
            ),
          ],
        ),
        // GoRoute(
        //   path: '/transport',
        //   pageBuilder: (BuildContext context, GoRouterState state) {
        //     return CustomTransitionPage(
        //       key: state.pageKey,
        //       child: const TransportScreen(),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) =>
        //               ScaleTransition(scale: animation, child: child),
        //     );
        //   },
        // ),
      ];

  void logout() {
    ref.read(loginProvider.notifier).logout();
  }

  Future<String?> redirectLogic(
      BuildContext context, GoRouterState state) async {
    final AuthCheckBase? auth = ref.read(loginProvider);
    final start = state.uri.toString() == '/start';

    if (state.uri.toString() == '/profile') {
      ref.read(navigationProvider.notifier).setNavigation(0);
    } else if (state.uri.toString() == '/action') {
      ref.read(navigationProvider.notifier).setNavigation(1);
    } else if (state.uri.toString() == '/home') {
      ref.read(navigationProvider.notifier).setNavigation(2);
    } else if (state.uri.toString() == '/reports') {
      ref.read(navigationProvider.notifier).setNavigation(3);
    } else if (state.uri.toString() == '/jjackpot') {
      ref.read(navigationProvider.notifier).setNavigation(4);
    }

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    if (auth == null) {
      return '/login';
    }
    // 로그인 데이터가 있고 로그인 페이지인 경우 메인 페이지로 이동
    if (auth is AuthCheckSuccess) {
      return start || state.uri.toString() == '/login' ? '/start' : null;
    }
    // print('versionUpdate 33333');

    if (auth is AuthCheckError) {
      return !start ? '/login' : null;
    }

    if (auth is AuthCheckGuest) {
      return start || state.uri.toString() == '/login' ? '/start' : null;
    }

    return null;
  }
}

extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}
