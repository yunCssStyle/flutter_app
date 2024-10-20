import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceCheckProvider =
    StateNotifierProvider<IosVerCheckProvider, bool>((ref) {
  return IosVerCheckProvider();
});

class IosVerCheckProvider extends StateNotifier<bool> {
  IosVerCheckProvider() : super(false);

  void iosVerCheck() async {
    if (Platform.isAndroid) return;
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    final newStr = iosInfo.utsname.machine.replaceAll('iPhone', '');
    state = int.parse(newStr.split(',')[0]) > 14 ? true : false;
  }
}
