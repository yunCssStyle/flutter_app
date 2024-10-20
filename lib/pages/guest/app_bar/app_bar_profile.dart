import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';

class AppBarProfile extends ConsumerStatefulWidget {
  final String nickName;
  const AppBarProfile({super.key, required this.nickName});

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
              child: Text(
                widget.nickName,
                style: TextStyle(
                  fontSize: widget.nickName.length > 10 ? 14.w : 18.w,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Chaloops',
                  color: Colors.white,
                ),
              ),
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
