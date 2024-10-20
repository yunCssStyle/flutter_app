import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/provider/bottom_navigation.dart';
import 'package:minewarz_app/common/provider/navigation.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/bottom_navigation/bottom_navigation_bar_bg.dart';
import 'package:minewarz_app/common/widget/bottom_navigation/navigation_buttom.dart';

class BottomNavigationBarWidget extends ConsumerStatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState
    extends ConsumerState<BottomNavigationBarWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(BuildContext context, int index, WidgetRef? ref) {
    //예외처리 추가
    if (ref == null) return;
    final locationIndex =
        ref.read(bottomNavigationProvider).bottomNavigation[index];
    GoRouter router = GoRouter.of(context);
    String location = locationIndex.name.toString();
    ref.read(soundsProvider.notifier).cilckSound();
    if (!locationIndex.isSohw) {
      ref.read(navigationProvider.notifier).setNavigation(index);
      router.go('/$location');
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigation = ref.watch(bottomNavigationProvider);
    final navigationInt = ref.watch(navigationProvider);
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        const BottomNavigationBarBgWidget(),
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: DeviceHeight().navPositioned(8.w),
          child: Theme(
            data: ThemeData(
              primarySwatch: Colors.blue,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              backgroundColor: Colors.transparent,
              items: [
                for (int i = 0; i < navigation.bottomNavigation.length; i++)
                  MyCustomBottomNavBarItem(
                    icon: NavigationButton(
                      iconImage:
                          'assets/images/common/nav/nav_${navigation.bottomNavigation[i].name.toString()}.png',
                      textImage:
                          'assets/images/common/nav/nav_${navigation.bottomNavigation[i].name.toString()}_tx.svg',
                      isSelected: navigationInt == i,
                    ),
                    activeIcon: NavigationButton(
                      iconImage:
                          'assets/images/common/nav/nav_${navigation.bottomNavigation[i].name.toString()}_on.png',
                      textImage:
                          'assets/images/common/nav/nav_${navigation.bottomNavigation[i].name.toString()}_tx_on.svg',
                      isSelected: navigationInt == i,
                    ),
                    label: '',
                    initialLocation:
                        navigation.bottomNavigation[i].name.toString(),
                  ),
              ],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: navigationInt,
              selectedItemColor: Colors.white,
              onTap: (int index) => _onItemTapped(context, index, ref),
            ),
          ),
        ),
      ],
    );
  }
}
