import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/home/model/exploration_model.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';
import 'package:minewarz_app/pages/home/provider/gauge_provider.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/tab_provider.dart';
import 'package:minewarz_app/pages/home/widget/exploration/button_widget.dart';
import 'package:minewarz_app/pages/home/widget/exploration/exploration_img_widget.dart';
import 'package:minewarz_app/pages/home/widget/exploration/tab_widget.dart';
import 'package:minewarz_app/pages/home/widget/exploration/text_widget.dart';

class ExplorationScreen extends ConsumerStatefulWidget {
  const ExplorationScreen({super.key});

  @override
  ConsumerState<ExplorationScreen> createState() => _ExplorationScreenState();
}

class _ExplorationScreenState extends ConsumerState<ExplorationScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(explorationProvider.notifier).setExplorationData();
  }

  @override
  Widget build(BuildContext context) {
    final gauge = ref.watch(gaugeProvider);
    final exploration = ref.watch(explorationProvider);
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.lightRed,
                AppColor.lightRed2,
              ],
            ),
          ),
        ),
      ),
      CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          const DefaultAppbar(
            title: 'Exploration',
            topBg: 'assets/images/home/exploration/top_bg.png',
          ),
          if (exploration is ExplorationModel)
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 상단 텍스트 및 남은 시간 표시
                        TextWidget(
                          status: exploration.status,
                          shortenedTime: exploration.status == 'STARTED'
                              ? exploration.data.shortenedTime!
                              : 0,
                          time: exploration.data.time,
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        // 상황에 맞는 이미지 출력

                        ExplorationImgWidget(
                          shortenedTime: exploration.status == 'STARTED'
                              ? exploration.data.shortenedTime!
                              : 0,
                          status: exploration.status,
                          gauge: gauge,
                        ),
                        // 탭이 영역 및 완료시 박스 표시
                        TabWidget(
                          status: exploration.status,
                          tabRemainingCount: exploration.status == 'STARTED'
                              ? exploration.data.tabRemainingCount!
                              : 0,
                          gauge: gauge,
                          rewards: exploration.status == 'COMPLETED'
                              ? exploration.data.rewards
                              : null,
                        ),
                      ],
                    ),
                  ),
                  //하단 버튼 및 탭 게이지 표시
                  ButtonWidget(
                    status: exploration.status,
                    tabRemainingCount: exploration.status == 'STARTED'
                        ? exploration.data.tabRemainingCount!
                        : 0,
                  ),
                ],
              ),
            ),
        ],
      ),

      // 로딩중
      if (exploration is ExplorationLoading) const LoadingWidget(),
      Positioned(
        bottom: DeviceHeight().fullbackBtn(15.w),
        left: 16.w,
        child: FullPageBack(
          isProvider: true,
          callback: () {
            ref.read(tabProvider.notifier).tabClear();
            ref.read(homeProvider.notifier).reset();
          },
        ),
      ),
    ]);
  }
}
