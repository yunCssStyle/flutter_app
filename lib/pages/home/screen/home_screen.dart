import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/widget/home/bg_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/btn_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/first_day_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/gold_view_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/kiki_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/mystery_box_widget.dart';
import 'package:minewarz_app/pages/home/widget/home/stone_widget.dart';
import 'package:minewarz_app/pages/profile/provider/profile_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
    ref.read(inventoryProvider.notifier).setInventoryData();
    ref.read(myInfoProvider.notifier).setMyInfoData();
    ref.read(profileProvider.notifier).getInitData();
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
                  level: home.isDivision && home.data.mineLevel != null
                      ? home.data.mineLevel! == 0
                          ? 1
                          : home.data.mineLevel!
                      : 1,
                ),
              // 서버 에러 일때 상단 레벨에 따른 이미지 배경
              if (home is HomeError)
                const BgWidget(
                  isDday: false,
                  level: 1,
                ),
              //미스터리 배경 이펙트 이미지
              if (home is HomeModel && home.isDivision)
                MysteryBoxWidget(
                  mysteryBox: home.data.mysteryBox!, //미스터리 박스 상태값
                ),
              // 상단 캐릭터 이미지
              if (home is HomeModel)
                KikiWidget(
                  isDday: home.isDivision,
                  mysteryBox: home.isDivision ? home.data.mysteryBox! : false,
                ),
              Positioned(
                top: 197.w,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/home/groud.png',
                ),
              ),
              //미스터리 박스
              if (home is HomeModel && home.isDivision)
                MysteryBoxBtnWidget(
                  mysteryBox: home.data.mysteryBox!,
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
                  ref.read(homeProvider.notifier).cartreset();
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
                            "assets/images/home/lottie/character${home.isDivision ? home.data.mineLevel == 0 ? 1 : home.data.mineLevel : 1}.lottie",
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
              if (home is HomeModel && !home.isDivision) const FirstDayWidget(),
              // MZP
              if (home is HomeModel && home.isDivision) const GoldViewWidget(),
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
              if (home is HomeLoading) const LoadingWidget(),
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
