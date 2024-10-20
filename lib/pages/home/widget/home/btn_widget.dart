import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/pages/appbar/screen/trading_post_screen.dart';
import 'package:minewarz_app/pages/home/screen/exploration_screen.dart';
import 'package:minewarz_app/pages/home/screen/inventory_screen.dart';
import 'package:minewarz_app/pages/home/screen/transport_screen.dart';
import 'package:minewarz_app/pages/home/screen/warehouse_defense_screen.dart';

class BtnWidget extends ConsumerWidget {
  final bool inventoryNew;
  final bool defenceNew;
  final bool exploreNew;
  final bool tradingPostNew;
  const BtnWidget({
    super.key,
    required this.inventoryNew,
    required this.defenceNew,
    required this.exploreNew,
    required this.tradingPostNew,
  });
  void tradingPostCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  void transportCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFold = ref.watch(homeBtnProvider); // 버튼 리스트 접기 열기 상태
    return Positioned(
      top: 138.w,
      right: 12.w,
      width: 70.w,
      child: Column(
        children: [
          // 인벤토리 버튼
          MotionButton(
            scale: 0.2,
            child: FullPage(
              transitionType: ContainerTransitionType.fade,
              closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                return FullPageOpen(
                  openContainer: () async {
                    defenseOpens();
                  },
                  height: 31.w,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        width: 61.w,
                        fit: BoxFit.fitWidth,
                        'assets/images/home/inventory_icon.png',
                      ),
                      if (inventoryNew)
                        Positioned(
                          //icn_new.svg
                          top: 4.w,
                          right: 10.w,
                          child: SvgPicture.asset(
                            height: 12.h,
                            'assets/images/home/icn_new.svg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                    ],
                  ),
                );
              },
              onClosed: defenseOpensCle,
              child: const FullPageLayout(
                child: InvertoryScreen(),
              ),
            ),
          ),
          SizedBox(
            height: 6.w,
          ),
          if (!isFold)
            Column(
              children: [
                // 방어내역 버튼
                MotionButton(
                  scale: 0.2,
                  child: FullPage(
                    transitionType: ContainerTransitionType.fade,
                    closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                      return FullPageOpen(
                        openContainer: () async {
                          defenseOpens();
                        },
                        height: 31.w,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3.w),
                              child: Image.asset(
                                width: 52.w,
                                fit: BoxFit.fitWidth,
                                'assets/images/home/defense_icon.png',
                              ),
                            ),
                            if (defenceNew)
                              Positioned(
                                //icn_new.svg
                                top: 0,
                                right: 4.w,
                                child: SvgPicture.asset(
                                  height: 12.h,
                                  'assets/images/home/icn_new.svg',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                    onClosed: defenseOpensCle,
                    child: const FullPageLayout(
                      child: WarehouseDefenseScreen(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 수송 버튼
                MotionButton(
                  scale: 0.2,
                  child: FullPage(
                    transitionType: ContainerTransitionType.fade,
                    closedBuilder:
                        (BuildContext _, VoidCallback transportOpens) {
                      return FullPageOpen(
                        openContainer: () async {
                          transportOpens();
                        },
                        height: 31.w,
                        child: Image.asset(
                          width: 65.w,
                          fit: BoxFit.fitWidth,
                          'assets/images/home/transport_icon.png',
                        ),
                      );
                    },
                    onClosed: transportCle,
                    child: const FullPageLayout(
                      child: TransportScreen(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 교역소 버튼
                MotionButton(
                  scale: 0.2,
                  child: FullPage(
                    transitionType: ContainerTransitionType.fade,
                    closedBuilder:
                        (BuildContext _, VoidCallback tradingPostOpens) {
                      return FullPageOpen(
                        openContainer: () async {
                          tradingPostOpens();
                        },
                        height: 31.w,
                        child: Stack(children: [
                          Image.asset(
                            width: 52.w,
                            fit: BoxFit.fitWidth,
                            'assets/images/home/post_icon.png',
                          ),
                          if (tradingPostNew)
                            Positioned(
                              //icn_new.svg
                              top: 0,
                              right: 4.w,
                              child: SvgPicture.asset(
                                height: 12.h,
                                'assets/images/home/icn_new.svg',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                        ]),
                      );
                    },
                    onClosed: tradingPostCle,
                    child: const FullPageLayout(
                      child: TradingPostScreen(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 탐사 버튼
                MotionButton(
                  scale: 0.2,
                  child: FullPage(
                    transitionType: ContainerTransitionType.fade,
                    closedBuilder:
                        (BuildContext _, VoidCallback tradingPostOpens) {
                      return FullPageOpen(
                        openContainer: () async {
                          tradingPostOpens();
                        },
                        height: 31.w,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              width: 70.w,
                              fit: BoxFit.fitWidth,
                              'assets/images/home/exploration_icon.png',
                            ),
                            if (exploreNew)
                              Positioned(
                                //icn_new.svg
                                top: 0,
                                right: 14.w,
                                child: SvgPicture.asset(
                                  height: 12.h,
                                  'assets/images/home/icn_new.svg',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                    onClosed: tradingPostCle,
                    child: const FullPageLayout(
                      child: ExplorationScreen(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
              ],
            ),
          MotionButton(
            onPressed: () async {
              ref.read(homeBtnProvider.notifier).changeFold();
            },
            child: Transform.rotate(
              angle: isFold ? 3.14159 : 0,
              child: Image.asset(
                width: 32.w,
                fit: BoxFit.fitWidth,
                'assets/images/home/fold_icon.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final homeBtnProvider = StateNotifierProvider<HomeBtnProvider, bool>((ref) {
  return HomeBtnProvider();
});

class HomeBtnProvider extends StateNotifier<bool> {
  HomeBtnProvider() : super(false);

  void changeFold() {
    state = !state;
  }
}
