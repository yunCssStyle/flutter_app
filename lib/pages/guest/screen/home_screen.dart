import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/guest/provider/home/home_provider.dart';
import 'package:minewarz_app/pages/guest/widget/home/bg_widget.dart';
import 'package:minewarz_app/pages/guest/widget/home/btn_widget.dart';
import 'package:minewarz_app/pages/guest/widget/home/kiki_widget.dart';
import 'package:minewarz_app/pages/guest/widget/home/mystery_box_widget.dart';
import 'package:minewarz_app/pages/guest/widget/home/mzt_widget.dart';
import 'package:minewarz_app/pages/guest/widget/home/stone_widget.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeGuestScreen extends ConsumerStatefulWidget {
  const HomeGuestScreen({super.key});

  @override
  ConsumerState<HomeGuestScreen> createState() => _HomeGuestScreenState();
}

class _HomeGuestScreenState extends ConsumerState<HomeGuestScreen> {
  final bool snapshot = false;

  @override
  void initState() {
    super.initState();
    ref.read(homeProvider.notifier).setHomeData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(homeProvider.notifier).setHomeData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              // 상단 레벨에 따른 이미지 배경
              if (home is HomeModel)
                BgWidget(
                  isDday: home.isDivision,
                  level: home.data.mineLevel!,
                ),
              // 서버 에러 일때 상단 레벨에 따른 이미지 배경
              if (home is HomeError)
                const BgWidget(
                  isDday: false,
                  level: 1,
                ),
              //미스터리 배경 이펙트 이미지
              if (home is HomeModel)
                MysteryBoxWidget(
                  mysteryBox: home.data.mysteryBox!, //미스터리 박스 상태값
                ),
              // 상단 캐릭터 이미지
              if (home is HomeModel)
                KikiWidget(
                  isDday: home.isDivision,
                  mysteryBox: false,
                ),
              Positioned(
                top: 197.w,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/home/groud.png',
                ),
              ),
              // 배경 이미지
              Positioned(
                top: 300.w,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: 147.w,
                  height: 89.33.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      image:
                          AssetImage('assets/images/home/bibg.png'), // 배경 이미지
                    ),
                  ),
                ),
              ),

              StoneWidget(
                isDday: home is HomeModel ? home.isDivision : true,
                callback: () {
                  ref.read(homeProvider.notifier).reset();
                },
              ),
              // 광산 채굴 캐릭터
              if (home is HomeModel)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: !home.isDivision
                      ? Center(
                          child: SizedBox(
                            width: 80.w,
                            height: 181.w,
                            child: Image.asset(
                              'assets/images/home/dday.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      : Container(
                          constraints: const BoxConstraints(
                            maxHeight: 300,
                          ),
                          child: DotLottieLoader.fromAsset(
                            "assets/images/home/lottie/character1.lottie",
                            frameBuilder:
                                (BuildContext ctx, DotLottie? dotlottie) {
                              if (dotlottie != null) {
                                return Lottie.memory(
                                    dotlottie.animations.values.single);
                              } else {
                                return Container();
                              }
                            },
                          ),
                        ),
                ),
              // MZP
              if (home is HomeModel && home.isDivision) const MzpWidget(),
              // 텔레그램 버튼
              Positioned(
                top: 138.w,
                left: 16.w,
                width: 61.w,
                child: MotionButton(
                  onPressed: () async {
                    final url = Uri.parse('https://t.me/minewarz');
                    if (!await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    )) {
                      launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  child: Image.asset(
                    'assets/images/home/telegram_icon.png',
                  ),
                ),
              ),
              // 홈 버튼 리스트
              if (home is HomeModel)
                BtnWidget(
                  inventoryNew: home.newBadge.inventory,
                  defenceNew: home.newBadge.defence,
                  tradingPostNew: home.newBadge.tradingPost,
                  exploreNew: home.newBadge.explore,
                ),
              // 로딩중
              if (home is HomeLoading) const LoadingWidget()
            ],
          ),
        ),
        SizedBox(
          height: DeviceHeight().navHeight(80.w),
        )
      ],
    );
  }
}
