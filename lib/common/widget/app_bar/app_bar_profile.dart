import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/provider/profile_provider.dart';

class AppBarProfile extends ConsumerStatefulWidget {
  const AppBarProfile({super.key});

  @override
  ConsumerState<AppBarProfile> createState() => _AppBarProfileState();
}

class _AppBarProfileState extends ConsumerState<AppBarProfile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void profileListCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);
    final myInfo = ref.watch(myInfoProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.black,
          width: 50.w,
          height: 50.w,
          child: Stack(
            children: [
              if (profile is ProfileModel)
                NftImg(
                  type: profile.pioneer.type,
                  url: profile.pioneer.url,
                  size: 50.w,
                ),
              if (profile is ProfileError)
                NftImg(
                  type: 'IMAGE',
                  url: 'assets/images/profile/no_nft.png',
                  size: 50.w,
                  networkImg: false,
                ),
              if (profile is ProfileError)
                NftImg(
                  type: 'IMAGE',
                  url: 'assets/images/profile/no_nft.png',
                  size: 50.w,
                  networkImg: false,
                ),
              SvgPicture.asset(
                height: 50.w,
                width: 50.w,
                'assets/images/appbar/profile_img_frame.svg',
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        Container(
          width: 120.w,
          height: 36.w,
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          color: Colors.black,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Transform.translate(
              offset: const Offset(0, -1),
              child: myInfo is MyInfoModel
                  ? Text(
                      myInfo.member.nickname,
                      style: TextStyle(
                        fontSize:
                            myInfo.member.nickname.length > 10 ? 13.w : 18.w,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Chaloops',
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ),
        SvgPicture.asset(
          height: 38.w,
          'assets/images/appbar/profile_name.svg',
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
