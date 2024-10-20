import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/model/layout.dart';

final layoutProvider =
    StateNotifierProvider<LayoutProvider, LayoutModel>((ref) {
  return LayoutProvider();
});

class LayoutProvider extends StateNotifier<LayoutModel> {
  LayoutProvider()
      : super(
          const LayoutModel(
            isBottomNavigationBar: true,
            isMyAppBar: true,
          ),
        );

  void setMyAppBar(bool isMyAppBar) {
    state = state.copyWith(isMyAppBar: isMyAppBar);
  }

  void setBottomNavigationBar(bool isBottomNavigationBar) {
    state = state.copyWith(isBottomNavigationBar: isBottomNavigationBar);
  }
}
