import 'dart:io';

import 'package:audible_mode/audible_mode.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/storage/storage.dart';

final soundsProvider = StateNotifierProvider<BgSounds, bool>((ref) {
  final storage = ref.watch(secureStorageProvider);
  return BgSounds(
    storage: storage,
    ref: ref,
  );
});

class BgSounds extends StateNotifier<bool> {
  final FlutterSecureStorage storage;
  final Ref ref;
  BgSounds({
    required this.storage,
    required this.ref,
  }) : super(true) {
    soundinit();
  }

  Future<void> soundinit() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      state = true;
    } else {
      state = false;
    }
  }

  Future<void> soundon() async {
    await storage.write(key: 'SOUND', value: 'ON');
    if (PlayerState.disposed == bgPlayer.state) {
      bgPlayer = AudioPlayer();
    }
    soundFun();
    state = true;
  }

  Future<void> soundPlay() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      soundFun();
      state = true;
    } else {
      bgPlayer.pause();
      state = false;
    }
  }

  Future<void> soundDispose() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      try {
        if (bgPlayer.state != PlayerState.disposed) {
          await bgPlayer.dispose();
        }
      } catch (e) {
        // 오디오 플레이어 해제 중 오류 발생 시 처리
        // print('Error disposing bgPlayer: $e');
      }
    }
  }

  Future<void> soundPause() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      bgPlayer.pause();
    }
    // state = false;
  }

  Future<void> soundoff() async {
    try {
      await storage.write(key: 'SOUND', value: 'OFF');
      if (bgPlayer.state != PlayerState.disposed) {
        bgPlayer.dispose();
      }
      state = false;
    } catch (e) {
      // print(e);
    }
  }

  Future<void> sound_on() async {
    try {
      String? value = await storage.read(key: 'SOUND');
      if (value == null || value == 'ON') {
        soundFun();
      }
    } catch (e) {
      // print(e);
    }
  }

  Future<void> sound_off() async {
    bgPlayer.pause();
  }

  bool generate(AudibleProfile profile) {
    switch (profile) {
      case AudibleProfile.SILENT_MODE:
        // sound_off();
        return false;
      case AudibleProfile.VIBRATE_MODE:
      case AudibleProfile.NORMAL_MODE:
        return true;
      case AudibleProfile.UNDEFINED:
        // sound_off();
        return false;
    }
  }

  Future<void> soundFun() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      if (bgPlayer.state == PlayerState.disposed && Platform.isIOS) {
        return;
      }
      final url = ref.read(soundsUrlProvider);
      if (url != '') {
        try {
          await bgPlayer.play(AssetSource(url));
        } catch (e) {
          // print(e);
        }
      } else {
        soundFun();
      }
      final audible = await Audible.getAudibleProfile;
      if (generate(audible ?? AudibleProfile.UNDEFINED)) {
        // bgPlayer.onPlayerStateChanged.listen(
        //   (it) async {
        //     print('bgPlayer.onPlayerStateChanged.listen: $it');
        //     // if (bgPlayer.state == PlayerState.stopped) {
        //     //   final url = ref.read(soundsUrlProvider);
        //     //   await bgPlayer.play(AssetSource(url));
        //     //   return;
        //     // } else
        //     if (bgPlayer.state == PlayerState.completed) {
        //       await bgPlayer.stop();
        //       await Future.delayed(const Duration(milliseconds: 500));
        //       await soundFun();
        //       return;
        //     }
        //     if (bgPlayer.state == PlayerState.playing) {
        //       return;
        //     }
        //     // else {
        //     //   final url = ref.read(soundsUrlProvider);
        //     //   await bgPlayer.play(AssetSource(url));
        //     // }
        //     // if (bgPlayer.state == PlayerState.playing) {
        //     //   await bgPlayer.stop();
        //     //   final url = ref.read(soundsUrlProvider);
        //     //   await bgPlayer.play(AssetSource(url));
        //     //   return;
        //     // }
        //   },
        // );
        // bgPlayer.onPlayerComplete.listen((event) async {
        //   soundCount++;
        //   if (soundCount > 1) {
        //     soundCount = 0;
        //     return;
        //   }
        //   if (bgPlayer.state == PlayerState.completed) {
        //     await bgPlayer.stop();
        //     await Future.delayed(const Duration(milliseconds: 500));
        //     await soundFun();
        //     return;
        //   }
        // });
      } else {
        bgPlayer.pause();
      }
    } else {
      bgPlayer.stop();
    }
  }

  Future<void> cilckSound() async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      final audible = await Audible.getAudibleProfile;

      try {
        if (generate(audible ?? AudibleProfile.UNDEFINED)) {
          await audioPlayer.play(AssetSource('sounds/event/sfx.mp3'));
        }
      } catch (e) {
        // 오디오 플레이 중 오류 발생 시 처리
        // print('Error playing sound cilckSound: $e');
      }
    }
  }

  Future<void> cilckAttack({String? sound}) async {
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      final audible = await Audible.getAudibleProfile;
      if (generate(audible ?? AudibleProfile.UNDEFINED)) {
        if (sound != null) {
          await audioAttack.play(AssetSource(sound));
        } else {
          audioAttack.stop();
        }
      }
    }
  }

  void cilckBellSound() async {
    audioBull.stop();
    String? value = await storage.read(key: 'SOUND');
    if (value == null || value == 'ON') {
      final audible = await Audible.getAudibleProfile;
      if (generate(audible ?? AudibleProfile.UNDEFINED)) {
        await audioBull.play(AssetSource('sounds/event/mz_bell.mp3'));
      }
    }
  }
}
