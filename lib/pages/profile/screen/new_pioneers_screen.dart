import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_back.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/profile/modal/new_pioneers_modal.dart';
import 'package:minewarz_app/pages/profile/model/new_pioneers_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/provider/new_pioneers_provider.dart';
import 'package:minewarz_app/pages/profile/widget/new_pioneers/new_stat_widget.dart';
import 'package:simple_animations/simple_animations.dart';

class NewPioneersScreen extends ConsumerStatefulWidget {
  const NewPioneersScreen({super.key});

  @override
  ConsumerState<NewPioneersScreen> createState() => _NewPioneersScreenState();
}

class _NewPioneersScreenState extends ConsumerState<NewPioneersScreen>
    with AnimationMixin {
  late String pageTitle = '-';
  late String pageTitles = '';
  late AnimationController statController1;
  late Animation<double> stat1;
  late Animation<double> stat2;
  late Animation<double> stat3;
  late Animation<double> stat4;
  late bool animationIng = false;
  @override
  void initState() {
    ref.read(newProfileProvider.notifier).getInitData();
    statController1 = createController()
      ..mirror(duration: const Duration(seconds: 1));
    stat1 = Tween<double>(begin: 0.0, end: 1.0).animate(statController1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final newProfile = ref.watch(newProfileProvider);
    final newProfileSelected =
        ref.watch(newProfileSelectedProvider); // 선택한 nft이미지 상태
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
                alignment: Alignment.center,
                image: AssetImage('assets/images/profile/new_pioneers_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        CustomScrollView(
          slivers: <Widget>[
            // 상단 앱바 선택한 nft 이름과 tokenId
            DefaultAppbar(
              title: newProfileSelected is PioneerModel
                  ? newProfileSelected.tokenId.toString()
                  : 'Select Pioneer',
              titles: newProfileSelected is PioneerModel
                  ? newProfileSelected.name
                  : '',
              topBg: 'assets/images/profile/newpioneers_top_bg.png',
              color: Colors.white,
            ),
          ],
        ),
        Positioned(
          top: 166.w,
          left: 0,
          right: 0,
          bottom: 81.w,
          child: Center(
            child: Container(
              width: 299.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/profile/newpioneers_box_bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 19.35.w,
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 205.92.w,
                        height: 200.84.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/profile/newpioneers_nft_bg.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Stack(
                            children: [
                              MotionButton(
                                onPressed: () {
                                  if (newProfile.pioneers?.isEmpty ?? true) {
                                    FToastShow.ftoast(
                                      text: 'There are no more pioneers.',
                                      type: 'error',
                                    );
                                  } else {
                                    modalContent(
                                      title: 'New Pioneers',
                                      widget: const NewPioneersModal(),
                                    );
                                  }
                                },
                                child: newProfileSelected is PioneerModel
                                    ? Stack(
                                        alignment: Alignment.center,
                                        clipBehavior: Clip.none,
                                        children: [
                                          //선택한 nft
                                          NftImg(
                                            type: newProfileSelected.type,
                                            url: newProfileSelected.url,
                                            size: 145.09,
                                            movePlay: true,
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/images/profile/newpioneers_nft_selected.png',
                                              width: 190.63.w,
                                              height: 185.34.w,
                                            ),
                                          ),
                                        ],
                                      ) // 선택한 nft 이미지 노출
                                    : Image.asset(
                                        'assets/images/profile/newpioneers_nft_add.png',
                                        width: 30.w,
                                        height: 30.w,
                                      ), // nft리스트 파업 호출 이미지
                              ),
                              if (newProfileSelected is PioneerModel)
                                Positioned(
                                  right: 12.w,
                                  top: 8.w,
                                  child: newProfileSelected.stat == null
                                      ? MotionButton(
                                          //선택한 nft 취소 액션
                                          onPressed: () {
                                            ref
                                                .read(newProfileSelectedProvider
                                                    .notifier)
                                                .newClear();
                                          },
                                          child: SvgPicture.asset(
                                            'assets/images/modal/modal_close.svg',
                                            height: 28.w,
                                            width: 28.w,
                                          ),
                                        )
                                      : Container(),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  const NewStatWidget(), // 선택한 nft의 stat 노출
                  SizedBox(
                    height: 10.w,
                  ),
                  // 선택한 nft가 없을때
                  if (newProfileSelected == null)
                    Container(
                      width: 185.w,
                      height: 62.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/profile/new_profile_btndis.png',
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4.w),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Roll',
                          style: TextStyle(
                            fontFamily: 'Chaloops',
                            fontSize: 22.w,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  // 선택한 nft가 있을때
                  if (animationIng)
                    SizedBox(
                      width: 185.w,
                      height: 62.w,
                      child: const LoadingWidget(isPositioned: false),
                    ),
                  if (newProfileSelected is PioneerModel &&
                      animationIng == false)
                    MotionButton(
                      onPressed: () async {
                        // 선택한 nft의 stat이 없을때
                        if (newProfileSelected.stat == null) {
                          ref
                              .read(newProfileSelectedProvider.notifier)
                              .statData();
                          statController1.play(); // 애니메이션 실행
                          setState(() {
                            animationIng = true;
                          });
                          await Future.delayed(const Duration(seconds: 2));
                          setState(() {
                            animationIng = false;
                          });
                        } else {
                          // 스탯부여한 nft를 리스트에 업데이트 후 선택한 nft 해제
                          if (!animationIng) {
                            ref
                                .read(newProfileProvider.notifier)
                                .statAdd(newProfileSelected);
                            FToastShow.ftoast(
                              text: 'Stat draw complete.',
                            );
                          }
                        }
                      },
                      child: Container(
                        width: 185.w,
                        height: 62.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              'assets/images/profile/new_profile_btn.png',
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 4.w),
                          child: Text(
                            textAlign: TextAlign.center,
                            newProfileSelected.stat == null
                                ? 'Roll'
                                : 'Confirm',
                            style: TextStyle(
                              fontFamily: 'Chaloops',
                              fontSize: 22.w,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (newProfileSelected is PioneerModel)
          Positioned(
            left: 16.w,
            bottom: DeviceHeight().fullbackBtn(15.w),
            child: newProfileSelected.stat != null
                ? Container()
                : FullPageBack(
                    callback: () {
                      // 선택한 nft의 stat이 있을때 nft 해제
                      ref.read(newProfileSelectedProvider.notifier).newClear();
                      // ref.read(newProfileProvider.notifier).read();
                    },
                  ), //available.png
          ),
        if (newProfileSelected == null)
          Positioned(
            left: 16.w,
            bottom: DeviceHeight().fullbackBtn(15.w),
            child: FullPageBack(
              callback: () {
                // ref.read(newProfileProvider.notifier).read();
              },
            ), //available.png
          ),
        if (newProfile is NewProfileLoading) const LoadingWidget()
      ],
    );
  }
}
