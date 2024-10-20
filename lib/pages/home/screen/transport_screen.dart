import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_tab.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/schedule_correction_provider.dart';
import 'package:minewarz_app/pages/home/provider/schedule_provider.dart';
import 'package:minewarz_app/pages/home/provider/transport_provider.dart';

import 'schedule_view_screen.dart';
import 'transport_view_screen.dart';

class TransportScreen extends ConsumerStatefulWidget {
  const TransportScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends ConsumerState<TransportScreen> {
  // 화면 전환 변수
  bool _isLoggedIn = false;
  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  @override
  void initState() {
    super.initState();
    // 오늘 수송 데이터 불러오기
    ref.read(transportProvider.notifier).setTransportData();
  }

  // 하단 탭 클릭시 화면 전환 및 데이터 불러오기
  void tabCilck(bool value) {
    if (value) {
      // 내일 수송 데이터 설정하기
      ref.read(scheduleProvider.notifier).setScheduleData();
      ref.read(scheduleCorrectionProvider.notifier).setScheduleData();
    } else {
      // 오늘 수송 데이터 불러오기
      ref.read(transportProvider.notifier).setTransportData();
      // 탭 이동시 수정한 내역이 있는지 체크
      schedulecle();
    }
    // 화면 전환
    setState(() {
      _isLoggedIn = value;
    });
  }

  // 수송 설정 창을 닫을때 수정한 내역이 있는지 체크 후 경고 토스트 띄우고 데이터 초기화 하기
  void schedulecle() {
    final scheduleData = ref.read(scheduleProvider.notifier).returnState();
    final isSchedule =
        ref.read(scheduleCorrectionProvider.notifier).returnState();
    if (isSchedule is ScheduleModel &&
        scheduleData is ScheduleModel &&
        isSchedule != scheduleData) {
      //경고 토스트 띄우기
      ref.read(scheduleProvider.notifier).confirm(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      myAppBar: false,
      bottomNavigationBar: false,
      safeAreaIs: false,
      child: Hero(
        tag: 'transport',
        child: Stack(
          clipBehavior: Clip.none,
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
                        ? const ScheduleViewScreen() // 내일 수송 화면
                        : const TransportViewScreen(), // 오늘 수송 화면
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: FullPageTab(
                isShowTab: _isLoggedIn,
                tabAction: tabCilck,
                text1: 'Today',
                text2: 'Tomorrow',
                colorType: ColorType.brown,
                callback: () {
                  // 창 닫을때 홈 데이터 불러오기
                  ref.read(homeProvider.notifier).reset();
                  // 창 닫을때 수정한 내역이 있는지 체크
                  if (_isLoggedIn) {
                    schedulecle();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
