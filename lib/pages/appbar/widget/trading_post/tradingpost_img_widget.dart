import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/appbar/modal/packing_modal.dart';
import 'package:minewarz_app/pages/appbar/modal/packing_processing_modal.dart';
import 'package:minewarz_app/pages/appbar/modal/unpacking_modal.dart';
import 'package:minewarz_app/pages/appbar/provider/trading_post_provider.dart';

class TradingPostImgWidget extends ConsumerStatefulWidget {
  final Function(bool) callback;

  const TradingPostImgWidget({super.key, required this.callback});

  @override
  ConsumerState<TradingPostImgWidget> createState() =>
      _TradingPostImgWidgetState();
}

class _TradingPostImgWidgetState extends ConsumerState<TradingPostImgWidget> {
  packingCheck(String type) async {
    widget.callback(true);

    final progress = type == 'Packing'
        ? await ref.read(tradingPostProvider.notifier).packingProgress()
        : await ref.read(tradingPostProvider.notifier).unPackingProgress();

    if (progress) {
      modalContent(
        title: 'Processing',
        widget: const PackingProcessingModal(),
      );
    } else {
      ref.read(tradingPostProvider.notifier).setTradingPostData();
      modalContent(
        title: type == 'Packing' ? 'Packing' : 'Unpacking',
        widget:
            type == 'Packing' ? const PackingModal() : const UnPackingModal(),
      );
    }

    widget.callback(false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 30.w,
            height: 366.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotLottieLoader.fromAsset(
                  "assets/images/home/lottie/home_transport_character1.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(
                        height: 366.w,
                        dotlottie.animations.values.single,
                        fit: BoxFit.fitHeight,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16.h,
            height: 204.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 220.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/common/trading_post/tradingpost_bg2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 53.h,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/common/trading_post/tradingpost_bg1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 34.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MotionButton(
                  onPressed: () async {
                    packingCheck('Packing');
                  },
                  child: Image(
                    width: 68.w,
                    fit: BoxFit.fitWidth,
                    image: const AssetImage(
                      'assets/images/common/trading_post/packing_btn.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 31.w,
                ),
                MotionButton(
                  onPressed: () async {
                    packingCheck('unPacking');
                  },
                  child: Image(
                    width: 74.w,
                    fit: BoxFit.fitWidth,
                    image: const AssetImage(
                      'assets/images/common/trading_post/unpacking_btn.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
