import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/guest/modal/guest_modal.dart';

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
            onPressed: () {
              modalContent(
                title: 'Inventory',
                widget: GuestModal(
                  imgWidget: Image(
                    image:
                        const AssetImage('assets/images/guest/inventory.png'),
                    width: 180.w,
                    height: 180.w,
                  ),
                  text:
                      'Manage your Mining Capacity using your\nMining Rights.',
                ),
              );
            },
            child: Image.asset(
              width: 61.w,
              fit: BoxFit.fitWidth,
              'assets/images/home/inventory_icon.png',
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
                  onPressed: () {
                    modalContent(
                      title: 'Defense',
                      widget: GuestModal(
                        imgWidget: Image(
                          image: const AssetImage(
                              'assets/images/guest/defence.png'),
                          width: 180.w,
                          height: 180.w,
                        ),
                        text:
                            'View the records of being attacked by\nother players.',
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.w),
                    child: Image.asset(
                      width: 52.w,
                      fit: BoxFit.fitWidth,
                      'assets/images/home/defense_icon.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 수송 버튼
                MotionButton(
                  scale: 0.2,
                  onPressed: () {
                    modalContent(
                      title: 'Transport',
                      widget: GuestModal(
                        imgWidget: Image(
                          image: const AssetImage(
                              'assets/images/guest/transport.png'),
                          width: 180.w,
                          height: 180.w,
                        ),
                        text:
                            'Secure your gains by transporting your\nmined gold.',
                      ),
                    );
                  },
                  child: Image.asset(
                    width: 65.w,
                    fit: BoxFit.fitWidth,
                    'assets/images/home/transport_icon.png',
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 교역소 버튼
                MotionButton(
                  scale: 0.2,
                  onPressed: () {
                    modalContent(
                      title: 'Trading Post',
                      widget: GuestModal(
                        imgWidget: Image(
                          image: const AssetImage(
                              'assets/images/guest/trading_post.png'),
                          width: 180.w,
                          height: 180.w,
                        ),
                        text:
                            'Pack your gold and sync it with the Web.\nUnpack your gold for use in the game.',
                      ),
                    );
                  },
                  child: Image.asset(
                    width: 52.w,
                    fit: BoxFit.fitWidth,
                    'assets/images/home/post_icon.png',
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
                // 탐사 버튼
                MotionButton(
                  scale: 0.2,
                  onPressed: () {
                    modalContent(
                      title: 'Exploration',
                      widget: GuestModal(
                        imgWidget: Image(
                          image: const AssetImage(
                              'assets/images/guest/exploration.png'),
                          width: 180.w,
                          height: 180.w,
                        ),
                        text:
                            'Send out an exploration party to acquire\ntreasure chests.\nYou just might get lucky and find a Mining\nRight or two.',
                      ),
                    );
                  },
                  child: Image.asset(
                    width: 70.w,
                    fit: BoxFit.fitWidth,
                    'assets/images/home/exploration_icon.png',
                  ),
                ),
                SizedBox(
                  height: 7.w,
                ),
              ],
            ),
          MotionButton(
            onPressed: () async {},
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
