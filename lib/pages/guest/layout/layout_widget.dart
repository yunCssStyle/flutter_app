import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/notification.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/bottom_navigation/bottom_navigation_bar_bg.dart';
import 'package:minewarz_app/common/widget/bottom_navigation/navigation_buttom.dart';
import 'package:minewarz_app/common/widget/modal/app_end.dart';
import 'package:minewarz_app/pages/guest/app_bar/app_bar.dart';
import 'package:minewarz_app/pages/guest/screen/action_screen.dart';
import 'package:minewarz_app/pages/guest/screen/home_screen.dart';
import 'package:minewarz_app/pages/guest/screen/jjackpot_screen.dart';
import 'package:minewarz_app/pages/guest/screen/profile_screen.dart';
import 'package:minewarz_app/pages/guest/screen/reports_screen.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class GuestLayoutWidget extends ConsumerStatefulWidget {
  const GuestLayoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<GuestLayoutWidget> createState() => _GuestLayoutWidgetState();
}

class _GuestLayoutWidgetState extends ConsumerState<GuestLayoutWidget>
    with WidgetsBindingObserver {
  List navigation = [
    {
      'name': 'profile',
      'isActive': false,
    },
    {
      'name': 'action',
      'isActive': false,
    },
    {
      'name': 'home',
      'isActive': false,
    },
    {
      'name': 'reports',
      'isActive': false,
    },
    {
      'name': 'jjackpot',
      'isActive': false,
    },
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Future.delayed(const Duration(seconds: 2), () {});
    bgPlayer.onPlayerComplete.listen(
      (it) async {
        if (mounted) {
          ref.read(soundsProvider.notifier).soundFun();
        }
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref.read(soundsProvider.notifier).soundFun();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (PlayerState.disposed == bgPlayer.state) {
          bgPlayer = AudioPlayer();
        }
        if (ref.watch(loginProvider) != null &&
            ref.watch(loginProvider) is AuthCheckError) {
          ref.watch(loginProvider.notifier).authCheck(); // 로그인 체크
        }
        ref.read(notificationProvider.notifier).notificationCheck();
        ref.read(soundsProvider.notifier).soundPlay();
        break;
      case AppLifecycleState.inactive:
        // 안드로이드에서는 화면 분할 앱, 전화 통화, PIP 앱, 시스템 대화 상자 또는 다른 창과 같은 다른 활동이 집중되면 앱이이 상태로 전환됩니다.
        if (Platform.isIOS) {
          ref.read(soundsProvider.notifier).soundDispose();
        }
        break;
      case AppLifecycleState.paused:
        // 앱이 현재 사용자에게 보이지 않고, 사용자의 입력을 받지 않으며, 백그라운드에서 동작 중입니다.
        ref.read(soundsProvider.notifier).soundDispose();
        break;
      case AppLifecycleState.detached:
        // 엔진이 처음 초기화 될 때 "View" 연결 진행 중이거나 네비게이터 팝으로 인해 "View"가 파괴 된 후 일 수 있습니다.
        // ref.read(soundsProvider.notifier).soundDispose();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  int _selectedIndex = 2;
  static const List<Widget> _widgetOptions = <Widget>[
    ProfileGuestScreen(),
    ActionGuestScreen(),
    HomeGuestScreen(),
    ReportsGuestScreen(),
    JjackpotGuestScreen(),
  ];

  void _onItemTapped(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bgimg(int i) {
    switch (i) {
      case 0:
        return const DecorationImage(
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/common/profile_background.png'),
        );
      case 1:
        return const DecorationImage(
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/common/action_background.png'),
        );
      case 2:
        return const DecorationImage(
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/common/home_background.png'),
        );
      case 3:
        return const DecorationImage(
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/common/reports_background.png'),
        );
      case 4:
        return const DecorationImage(
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/common/jjackpot_background.png'),
        );
    }
  }

  Future<bool> onWillPop() async {
    modalAppEnd();
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: bgimg(_selectedIndex),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) {
            if (!didPop) {
              onWillPop();
            }
          },
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
              const MyAppBarGuest(),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
            const BottomNavigationBarBgWidget(),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: DeviceHeight().navPositioned(8.w),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                backgroundColor: Colors.transparent,
                items: [
                  for (int i = 0; i < navigation.length; i++)
                    MyCustomBottomNavBarItem(
                      icon: NavigationButton(
                        iconImage:
                            'assets/images/common/nav/nav_${navigation[i]['name'].toString()}.png',
                        textImage:
                            'assets/images/common/nav/nav_${navigation[i]['name'].toString()}_tx.svg',
                        isSelected: _selectedIndex == i,
                      ),
                      activeIcon: NavigationButton(
                        iconImage:
                            'assets/images/common/nav/nav_${navigation[i]['name'].toString()}_on.png',
                        textImage:
                            'assets/images/common/nav/nav_${navigation[i]['name'].toString()}_tx_on.svg',
                        isSelected: _selectedIndex == i,
                      ),
                      label: '',
                      initialLocation:
                          navigation[i]['initialLocation'].toString(),
                    ),
                ],
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                onTap: (int index) => _onItemTapped(context, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
