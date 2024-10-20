import 'package:flutter_riverpod/flutter_riverpod.dart';

final rollingMessageProvider =
    StateNotifierProvider<RollingMessageProvider, String>((ref) {
  return RollingMessageProvider(ref);
});

class RollingMessageProvider extends StateNotifier<String> {
  final Ref ref;
  RollingMessageProvider(this.ref) : super("");

  void addMessage(String message) {
    super.state = message;
  }
}
