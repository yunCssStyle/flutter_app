import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

final videoControllerProvider =
    StateNotifierProvider<VideoControllerNotifier, VideoPlayerController?>(
        (ref) {
  return VideoControllerNotifier(ref: ref);
});

class VideoControllerNotifier extends StateNotifier<VideoPlayerController?> {
  final Ref ref;
  VideoControllerNotifier({
    required this.ref,
  }) : super(null);

  void setVideoUrl(String videoUrl) {
    if (state != null) {
      state!.dispose();
    }
    state = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
      ..initialize().then((_) {
        ref.read(videoIsProvider.notifier).setBool(true);
        state!.play();
        state!.setLooping(true);
      });
  }
}

final videoIsProvider = StateNotifierProvider<VideoIsProvider, bool>((ref) {
  return VideoIsProvider();
});

class VideoIsProvider extends StateNotifier<bool> {
  VideoIsProvider() : super(false);

  void setBool(bool videoIs) {
    state = videoIs;
  }
}
