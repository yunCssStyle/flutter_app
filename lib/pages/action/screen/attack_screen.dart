import 'package:animations/animations.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/network.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/pages/action/screen/attack_view_screen.dart';

import 'result_view_screen.dart';

class AttackScreen extends ConsumerStatefulWidget {
  final String type;
  const AttackScreen({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  ConsumerState<AttackScreen> createState() => _AttackScreenState();
}

class _AttackScreenState extends ConsumerState<AttackScreen> {
  bool _isLoggedIn = false;
  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.scaled;
  final AudioPlayer attackPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    await ref.read(soundsUrlProvider.notifier).soundUrl('action');
    ref.read(soundsProvider.notifier).soundFun();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _handleChildEvent() {
    setState(() {
      _isLoggedIn = true;
    });
    // 여기에서 부모 위젯에서 할 일을 처리합니다.
  }

  void _handleChildNext() {
    setState(() {
      _isLoggedIn = false;
    });
    // 여기에서 부모 위젯에서 할 일을 처리합니다.
  }

  @override
  Widget build(BuildContext context) {
    final network = ref.watch(networkProviders);
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: PageTransitionSwitcher(
                reverse: !_isLoggedIn,
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return SharedAxisTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: _transitionType,
                    fillColor: Colors.transparent,
                    child: child,
                  );
                },
                child: _isLoggedIn
                    ? ResultViewScreen(
                        callback: _handleChildNext,
                        type: widget.type,
                        endcallback: () {
                          Navigator.pop(context);
                        },
                      )
                    : AttackViewScreen(
                        callback: _handleChildEvent,
                      ),
              ),
            ),
          ],
        ),
        network == NetworkStatus.isConnected
            ? const SizedBox()
            : Container(
                width: MediaQuery.of(context).size.width, // 화면 가로 길이),
                height: MediaQuery.of(context).size.height,
                color: Colors.black.withOpacity(0.8),
                child: Center(
                  child: Text(
                    'Network connection is lost.\nCheck your network',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      color: Colors.white,
                      fontSize: 20.w,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
