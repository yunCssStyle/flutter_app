import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingProvider = StateNotifierProvider<LoadingProvider, bool>((ref) {
  return LoadingProvider();
});

class LoadingProvider extends StateNotifier<bool> {
  LoadingProvider() : super(false);

  void setLoading() {
    state = true;
  }
}
