import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/guest/widget/profile/profile_btns_widget.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/widget/profile/stat_card_widget.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/profile/modal/stat_details_modal.dart';

class ProfileGuestScreen extends ConsumerStatefulWidget {
  const ProfileGuestScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileGuestScreen> createState() => _ProfileGuestScreenState();
}

class _ProfileGuestScreenState extends ConsumerState<ProfileGuestScreen> {
  ProfileStatModel? stat; // 스텟
  ProfileStatModel? statBonus; // 스텟 보너스

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // 스탯 리스트
  statList() {
    return [
      const StatCardWidget(
        stat: 'luck',
        value: 20,
      ),
      const StatCardWidget(
        stat: 'silverTongue',
        value: 55,
      ),
      const StatCardWidget(
        stat: 'stamina',
        value: 11,
      ),
      const StatCardWidget(
        stat: 'intuition',
        value: 45,
      ),
    ];
  }

  // 프로필 상세 정보 팝업
  void statDetails() {
    modalContent(
      title: 'Stat Details',
      widget: const StatDetailsModal(
        stat: ProfileStatModel(
          intuition: 10,
          luck: 10,
          silverTongue: 10,
          stamina: 10,
        ), // 스텟
        statBonus: ProfileStatModel(
          intuition: 35,
          luck: 10,
          silverTongue: 45,
          stamina: 1,
        ), // 스텟 보너스
      ),
      autoScroll: true, // 자동 스크롤
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 47.w, horizontal: 18.w),
                  child: Center(
                    child: SizedBox(
                      height: 428.w,
                      child: Column(
                        children: [
                          // 프로필 이미지 영역
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 272.82.w,
                                width: 276.w,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/profile/nft_back_bg.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const NftImg(
                                type: 'IMAGE',
                                url: 'assets/images/profile/no_nft.png',
                                size: 259.64,
                                networkImg: false,
                              ),
                              Container(
                                height: 275.87.w,
                                width: 276.w,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/profile/nft_back.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // 프로필 이미지 영역
                          SizedBox(
                            height: 5.w,
                          ),
                          // 느낌표 팝업 영역
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MotionButton(
                                onPressed: () {
                                  statDetails();
                                },
                                child: Image.asset(
                                  'assets/images/common/icn_tip.png',
                                  width: 27.w,
                                  height: 27.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                          // 느낌표 팝업 영역
                          SizedBox(
                            height: 10.w,
                          ),
                          // 프로필 스텟정보 영역
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: statList(), // 프로필 정보가 없을 경우 기본값
                          ),
                          // 프로필 스텟정보 영역
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const ProfileBtnsGuestWidget(), // 프로필 버튼 영역
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
