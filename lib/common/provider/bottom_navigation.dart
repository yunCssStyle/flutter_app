import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationProvider, BottomNavigationModel>(
        (ref) {
  return BottomNavigationProvider();
});

class BottomNavigationModel {
  final List<BottomNavigationListModel> bottomNavigation;

  BottomNavigationModel({
    required this.bottomNavigation,
  });
}

class BottomNavigationListModel {
  final String name;
  final bool isSohw;

  BottomNavigationListModel({
    required this.name,
    required this.isSohw,
  });
}

class BottomNavigationProvider extends StateNotifier<BottomNavigationModel> {
  BottomNavigationProvider()
      : super(
          BottomNavigationModel(
            bottomNavigation: [
              BottomNavigationListModel(
                name: 'profile',
                isSohw: false,
              ),
              BottomNavigationListModel(
                name: 'action',
                isSohw: false,
              ),
              BottomNavigationListModel(
                name: 'home',
                isSohw: false,
              ),
              BottomNavigationListModel(
                name: 'reports',
                isSohw: false,
              ),
              BottomNavigationListModel(
                name: 'jjackpot',
                isSohw: false,
              ),
            ],
          ),
        );

  void setBottomNavigation() {
    // state = state.copyWith(
    //   bottomNavigation: state.bottomNavigation.map((e) {
    //     if (e.name == 'jjackpot') {
    //       e.isSohw = true;
    //     }
    //     return e;
    //   }).toList(),
    // );
  }
}
