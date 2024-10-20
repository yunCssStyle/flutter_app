import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider =
    StateNotifierProvider<NavigationProvider, int>((ref) {
  return NavigationProvider(
    ref: ref,
  );
});

class NavigationProvider extends StateNotifier<int> {
  final Ref ref;
  NavigationProvider({
    required this.ref,
  }) : super(2) {
    // initNavigation();
  }

  void setNavigation(int index) {
    state = index;
  }
}
