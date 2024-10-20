import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'dart:math' as math;

class ProfileImgWidget extends StatelessWidget {
  final bool readed;
  final String type;
  final String url;
  final Color color;
  final bool equipped;
  final bool selected;
  const ProfileImgWidget({
    super.key,
    this.readed = false,
    required this.type,
    required this.url,
    this.equipped = false,
    this.color = Colors.black,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108.w,
      height: 108.w,
      padding: EdgeInsets.all(3.w),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.w),
        color: color,
      ),
      child: Stack(
        children: [
          NftImg(
            type: type,
            url: url,
            color: color,
          ),
          Positioned(
            top: -13.w,
            right: -5.w,
            child: Transform.rotate(
              angle: 8 * math.pi / 180,
              child: Container(
                width: 108.w,
                height: 10.w,
                color: color,
              ),
            ),
          ),
          Positioned(
            left: -5.w,
            bottom: -13.w,
            child: Transform.rotate(
              angle: 8 * math.pi / 180,
              child: Container(
                width: 108.w,
                height: 10.w,
                color: color,
              ),
            ),
          ),
          if (equipped && !selected)
            Positioned(
              left: -3.w,
              top: -3.w,
              child: Image.asset(
                'assets/images/profile/equipped_icon.png',
                width: 62.w,
                fit: BoxFit.fitWidth,
              ),
            ),
          if (!readed)
            Positioned(
              top: 2.w,
              right: 2.w,
              child: SvgPicture.asset(
                height: 16.w,
                'assets/images/home/icn_new.svg',
                fit: BoxFit.fitHeight,
              ),
            ),
        ],
      ),
    );
  }
}
