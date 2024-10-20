import 'dart:io';

import 'package:minewarz_app/common/provider/notification.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:permission_handler/permission_handler.dart';

void notificationCheck(ref) async {
  final storage = ref.watch(secureStorageProvider);
  if (Platform.isAndroid) {
    await Permission.notification.isDenied.then((value) async {
      if (value) {
        await storage.write(key: 'PUSH', value: 'false');
      } else {
        await storage.write(key: 'PUSH', value: 'true');
      }
      ref.read(notificationProvider.notifier).changeState(value);
    });
  } else {
    await Permission.notification.request().isGranted.then((value) {
      if (value) {
        storage.write(key: 'PUSH', value: 'true');
      } else {
        storage.write(key: 'PUSH', value: 'false');
        return;
      }
      // ref.read(notificationProvider.notifier).changeState(value);
    });
  }
}
