import 'package:flutter_riverpod/flutter_riverpod.dart';

String sound = '';

final soundsUrlProvider = StateNotifierProvider<BgUrlSounds, String>((ref) {
  return BgUrlSounds();
});

class BgUrlSounds extends StateNotifier<String> {
  BgUrlSounds() : super('sounds/bg/mz_road_theme.mp3');

  Future<void> soundUrl(String type) async {
    switch (type) {
      case 'home':
        sound = 'sounds/bg/mz_main_theme.mp3';
        break;
      case 'intro':
        sound = 'sounds/bg/mz_road_theme.mp3';
        break;
      case 'action':
        sound = 'sounds/bg/mz_attack_bountyhunter.mp3';
        break;
      default:
        sound = 'sounds/bg/mz_main_theme.mp3';
        break;
    }
    state = sound;
  }
}
