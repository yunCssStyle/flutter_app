import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';
import 'package:minewarz_app/pages/profile/provider/profile_provider.dart';
import 'package:minewarz_app/pages/profile/screen/new_pioneers_screen.dart';
import 'package:minewarz_app/pages/profile/screen/profile_list_screen.dart';

class ProfileBtnsWidget extends ConsumerStatefulWidget {
  const ProfileBtnsWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileBtnsWidget> createState() => _ProfileBtnsWidgetState();
}

class _ProfileBtnsWidgetState extends ConsumerState<ProfileBtnsWidget> {
  // 프로필 리스트 닫기 함수
  void profileListCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {
      ref.read(profileProvider.notifier).getInitData();
      ref.read(profileListProvider.notifier).read();
    }
  }

  // 스탯정보 전 리스트 닫기 함수
  void newProfileListCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {
      ref.read(profileProvider.notifier).getInitData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);
    return Positioned(
      top: 140.w,
      right: 16.w,
      child: Column(
        children: [
          // 프로필 리스트 팝업
          MotionButton(
            child: FullPage(
              transitionType: ContainerTransitionType.fade,
              closedBuilder: (BuildContext _, VoidCallback profileListOpens) {
                return FullPageOpen(
                  openContainer: () {
                    profileListOpens();
                  } // 프로필 리스트 팝업 오픈
                  ,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        width: 54.w,
                        image: const AssetImage(
                            'assets/images/profile/profile_list_btn.png'),
                      ),
                      if (profile is ProfileModel)
                        if (profile.newBadge.pioneerList)
                          Positioned(
                            top: 2.w,
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
              onClosed: profileListCle,
              child: const FullPageLayout(
                child: ProfileListScreen(), // 프로필 리스트 팝업
              ),
            ),
          ),
          SizedBox(
            height: 10.w,
          ),
          // 스탯 부여 전 리스트 팝업
          MotionButton(
            child: FullPage(
              transitionType: ContainerTransitionType.fade,
              closedBuilder: (BuildContext _, VoidCallback newPioneersOpens) {
                return FullPageOpen(
                  openContainer: () {
                    newPioneersOpens();
                  } // 스탯정보 부여 nft 팝업 오픈
                  ,
                  child: Stack(
                    children: [
                      Image(
                        width: 45.w,
                        image: const AssetImage(
                            'assets/images/profile/profile_new_btn.png'),
                      ),
                      if (profile is ProfileModel)
                        if (profile.newBadge.newPioneer)
                          Positioned(
                            top: 2.w,
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
              onClosed: newProfileListCle,
              child: const FullPageLayout(
                child: NewPioneersScreen(),
                // child: TransportScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
