import 'package:flutter/material.dart';

class GlobalVariable {
  static final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();

  static final GlobalKey<OverlayState> overlayState = GlobalKey<OverlayState>();
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext getContext() => navigatorKey.currentState!.overlay!.context;
  OverlayState getOverlay() => navigatorKey.currentState!.overlay!;
}
