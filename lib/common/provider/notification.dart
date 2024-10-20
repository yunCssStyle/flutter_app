import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

final notificationProvider =
    StateNotifierProvider<NotificationProvider, bool>((ref) {
  return NotificationProvider(
    ref: ref,
  );
});

class NotificationProvider extends StateNotifier<bool> {
  final Ref ref;
  NotificationProvider({
    required this.ref,
  }) : super(true);

  void notificationCheck() async {
    try {
      if (Platform.isAndroid) {
        await Permission.notification.isDenied.then((value) async {
          state = !value;
        });
      } else {
        await Permission.notification.request().isGranted.then((value) {
          state = value;
        });
      }
    } catch (e) {
      // print(e);
    }
  }
}
