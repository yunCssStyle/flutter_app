import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/guest/modal/guest_modal.dart';

class ProfileBtnsGuestWidget extends ConsumerStatefulWidget {
  const ProfileBtnsGuestWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileBtnsGuestWidget> createState() =>
      _ProfileBtnsGuestWidgetState();
}

class _ProfileBtnsGuestWidgetState
    extends ConsumerState<ProfileBtnsGuestWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140.w,
      right: 16.w,
      child: Column(
        children: [
          // 프로필 리스트 팝업
          MotionButton(
            onPressed: () {
              modalContent(
                title: 'Pioneers',
                widget: GuestModal(
                  imgWidget: Image(
                    image: const AssetImage('assets/images/guest/pioneer.png'),
                    width: 180.w,
                    height: 180.w,
                  ),
                  text:
                      'Bring over and use your PFPs.\nGain in-game bonuses through your PFPs.',
                ),
              );
            },
            child: Image(
              width: 54.w,
              image: const AssetImage(
                  'assets/images/profile/profile_list_btn.png'),
            ),
          ),
          SizedBox(
            height: 10.w,
          ),
          // 스탯 부여 전 리스트 팝업
          MotionButton(
            onPressed: () {
              modalContent(
                title: 'New Pioneer',
                widget: GuestModal(
                  imgWidget: Image(
                    image:
                        const AssetImage('assets/images/guest/new_pioneer.png'),
                    width: 180.w,
                    height: 180.w,
                  ),
                  text: 'Assign abilities to your new PFPs.',
                ),
              );
            },
            child: Image(
              width: 45.w,
              image:
                  const AssetImage('assets/images/profile/profile_new_btn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
