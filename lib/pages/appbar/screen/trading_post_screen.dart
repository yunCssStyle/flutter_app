import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_back.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/appbar/modal/recent_history_modal.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/appbar/provider/trading_post_provider.dart';
import 'package:minewarz_app/pages/appbar/widget/trading_post/tradingpost_gold_widget.dart';
import 'package:minewarz_app/pages/appbar/widget/trading_post/tradingpost_img_widget.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';

class TradingPostScreen extends ConsumerStatefulWidget {
  final bool isProvider;

  const TradingPostScreen({super.key, this.isProvider = true});

  @override
  ConsumerState<TradingPostScreen> createState() => _TradingPostScreenState();
}

class _TradingPostScreenState extends ConsumerState<TradingPostScreen> {
  bool modalIsShow = false;

  @override
  void initState() {
    super.initState();
    ref.read(tradingPostProvider.notifier).setTradingPostData();
  }

  @override
  Widget build(BuildContext context) {
    final tradingPost = ref.watch(tradingPostProvider);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  'assets/images/common/trading_post/tradingpost_bg.png',
                ),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ),
        ),
        CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            const DefaultAppbar(
              title: 'Trading Post',
              topBg: 'assets/images/common/trading_post/tradingpost_top_bg.png',
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              fillOverscroll: true,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // 상단 골드 표시 박스
                      const TradingPostGoldWidget(),
                      // 아래 이미지 및 각 버튼
                      TradingPostImgWidget(callback: (boolean) {
                        setState(() {
                          modalIsShow = boolean;
                        });
                      }),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 16.w,
                    child: MotionButton(
                      onPressed: () async {
                        modalContent(
                          title: 'Last Transaction',
                          widget: const RecentHistoryModal(),
                        );
                      },
                      child: Image.asset(
                        fit: BoxFit.fitWidth,
                        width: 73.w,
                        'assets/images/common/trading_post/last_transaction.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: DeviceHeight().fullbackBtn(15.w),
          left: 16.w,
          child: FullPageBack(
            isProvider: widget.isProvider,
            callback: () {
              ref.read(tradingPostProvider.notifier).packingRead();
              ref.read(homeProvider.notifier).setHomeData();
            },
          ),
        ),
        if (tradingPost is TradingPostLoading || modalIsShow)
          const LoadingWidget(),
      ],
    );
  }
}
