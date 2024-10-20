import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/provider/network.dart';
import 'package:minewarz_app/common/provider/notification.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/routes/routes.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar.dart';
import 'package:minewarz_app/common/widget/bottom_navigation/bottom_navigation_bar.dart';
import 'package:minewarz_app/common/widget/modal/app_end.dart';
import 'package:minewarz_app/common/widget/snackbar/snackbar.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'first_widget.dart';

class LayoutWidget extends ConsumerStatefulWidget {
  final dynamic location;
  final Color? backgroundColor; // 배경 색상
  final Widget child; // 화면
  final PreferredSizeWidget? appBar; // 상단 앱바
  final bool bottomNavigationBar; // 하단 네비게이션 바
  final String backgroundImage; // 전체 배경 이미지 경로
  final ImageRepeat backgroundImageRepeat; // 전체 배경 이미지 경로
  final AlignmentDirectional backgroundImageAlignment; // 전체 배경 이미지 경로
  final BoxFit imageFit; // 전체 배경 이미지 경로
  final bool safeAreaIs; // SafeArea 사용 여부
  final bool myAppBar; // SafeArea 사용 여부
  const LayoutWidget({
    required this.child,
    this.backgroundColor,
    this.appBar,
    this.bottomNavigationBar = true,
    this.backgroundImage = '',
    this.imageFit = BoxFit.cover,
    this.backgroundImageRepeat = ImageRepeat.repeat,
    this.backgroundImageAlignment = AlignmentDirectional.topCenter,
    this.safeAreaIs = false,
    this.myAppBar = true,
    this.location,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends ConsumerState<LayoutWidget>
    with WidgetsBindingObserver {
  DateTime? currentBackPressTime;
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

  void notificationChecks(ref) async {
    if (Platform.isAndroid) {
      await Permission.notification.isDenied.then((value) async {});
    } else {
      await Permission.notification.request().isGranted.then((value) {
        ref.read(notificationProvider.notifier).changeState(value);
      });
    }
  }

  Future<bool> onWillPop() async {
    modalAppEnd();
    return false;
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
        // 주의! 최초 앱 실행때는 해당 이벤트가 발생하지 않습니다.
        ref.read(notificationProvider.notifier).notificationCheck();
        final locale = GoRouter.of(context).location();
        ref.read(soundsProvider.notifier).soundPlay();
        if (locale != '/login') {
          ref.read(myInfoProvider.notifier).setMyInfoData();
          if (locale == '/home') {
            ref.read(homeProvider.notifier).setHomeData();
            ref.read(explorationProvider.notifier).setExplorationData();
          } else if (locale == '/action') {
            ref.read(targetListProvider.notifier).reset();
          }
        } else {
          ref.read(loginProvider.notifier).authCheck();
        }
        break;
      case AppLifecycleState.inactive:
        // 안드로이드에서는 화면 분할 앱, 전화 통화, PIP 앱, 시스템 대화 상자 또는 다른 창과 같은 다른 활동이 집중되면 앱이이 상태로 전환됩니다.
        if (Platform.isIOS) {
          ref.read(soundsProvider.notifier).soundDispose();
        }
        // ref.read(soundsProvider.notifier).soundinactive();
        break;
      case AppLifecycleState.paused:
        // 앱이 현재 사용자에게 보이지 않고, 사용자의 입력을 받지 않으며, 백그라운드에서 동작 중입니다.
        // if ('PlayerState.disposed' != bgPlayer.state.toString()) {
        ref.read(soundsProvider.notifier).soundDispose();
        // }
        break;
      case AppLifecycleState.detached:
        // 엔진이 처음 초기화 될 때 "View" 연결 진행 중이거나 네비게이터 팝으로 인해 "View"가 파괴 된 후 일 수 있습니다.
        break;
      case AppLifecycleState.hidden:
        // print('state hidden');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // 수정 1 부분
    try {
      ref.read(notificationProvider.notifier).notificationCheck();
    } catch (e) {
      // 오류 처리 로직 추가
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: widget.backgroundImage.isNotEmpty
                ? BoxDecoration(
                    color: widget.backgroundColor,
                    image: DecorationImage(
                      fit: widget.imageFit,
                      alignment: widget.backgroundImageAlignment,
                      repeat: widget.backgroundImageRepeat,
                      image: AssetImage(widget.backgroundImage),
                    ),
                  )
                : null,
            child: Scaffold(
              backgroundColor: widget.backgroundImage.isNotEmpty
                  ? Colors.transparent
                  : widget.backgroundColor,
              appBar: widget.appBar,
              body: PopScope(
                canPop: false,
                onPopInvoked: (bool didPop) {
                  if (!didPop) {
                    onWillPop();
                  }
                },
                child: MineWarzMsgWrapper(
                  widget.safeAreaIs
                      ? SafeArea(
                          bottom: true,
                          child: LayoutBodyWidget(
                            myAppBar: widget.myAppBar,
                            navigationBar: widget.bottomNavigationBar,
                            child: widget.child,
                          ),
                        )
                      : LayoutBodyWidget(
                          myAppBar: widget.myAppBar,
                          navigationBar: widget.bottomNavigationBar,
                          child: widget.child,
                        ),
                ),
              ),
            ),
          ),
          if (ref.watch(networkProviders) != NetworkStatus.isConnected)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.8),
              child: const Center(
                child: Text(
                  'Network connection is lost.\nCheck your network',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    height: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class LayoutBodyWidget extends ConsumerWidget {
  final bool myAppBar;
  final bool navigationBar;
  final Widget child;
  const LayoutBodyWidget(
      {super.key,
      required this.child,
      required this.myAppBar,
      this.navigationBar = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layoutState = ref.watch(layoutProvider);
    return Stack(
      children: [
        // SingleChildScrollView(
        //   child: SizedBox(
        //     width: MediaQuery.of(context).size.width, // 화면 가로 길이),
        //     height: MediaQuery.of(context).size.height,
        //     child: child,
        //   ),
        // ),

        Container(
          //수정3 padding top 0
          // padding: EdgeInsets.only(top: 0.w),
          padding: const EdgeInsets.only(top: 0),
          width: MediaQuery.of(context).size.width, // 화면 가로 길이),

          height: double.infinity,
          //수정2 확인필요 infinity 사용시 정확한 높이 값이 지정되지않아 에러 발생 가능성이 있다고함.
          // height: MediaQuery.of(context).size.height,
          child: child,
        ),
        if (layoutState.isBottomNavigationBar && navigationBar)
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBarWidget(),
          ),
        if (myAppBar)
          Transform.translate(
              offset: Offset(0, layoutState.isMyAppBar ? 0 : -100.w),
              child: const MyAppBar()),
        const FirstWidget(),
      ],
    );
  }
}
