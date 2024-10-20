import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/pages/guest/provider/home/home_provider.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';

class MzpWidget extends ConsumerStatefulWidget {
  const MzpWidget({super.key});

  @override
  ConsumerState<MzpWidget> createState() => _MzpWidgetState();
}

class _MzpWidgetState extends ConsumerState<MzpWidget> {
  final mzpTooltop = SuperTooltipController();
  @override
  void dispose() {
    mzpTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mzp = ref.watch(homeProvider);
    return Positioned(
      top: 250.w,
      width: MediaQuery.of(context).size.width,
      child: mzp is HomeModel
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 4.w,
                  height: 30.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.center,
                      image: AssetImage(
                          'assets/images/home/mzp_left.png'), // 배경 이미지
                    ),
                  ),
                ),
                Container(
                  height: 30.w,
                  padding: EdgeInsets.only(
                      left:
                          mzp.data.distribute!.miningPower > 0 ? 2.3.w : 3.65.w,
                      right: 3.65.w),
                  decoration: const BoxDecoration(
                    color: Color(0xFF484544),
                  ),
                  child: SuperTooltip(
                    height: 32.w,
                    controller: mzpTooltop,
                    left: 62.w,
                    right: 62.w,
                    barrierColor: Colors.black.withOpacity(0),
                    content: Column(
                      children: [
                        SizedBox(
                          height: 6.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Today`s Capacity',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'ProximaSoft',
                                color: AppColor.lightGrey1,
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Mzp(
                              mzpIconSize: 16.42,
                              mzpIcon: true,
                              iconRight: 4,
                              mzp: mzp.data.distribute!.dividends,
                              mzpSize: 12,
                              mzpSmallSize: 11,
                              mzpColor: Colors.white,
                              mzpSmallColor: AppColor.lightGrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    child: mzp.data.distribute!.miningPower > 0
                        ? Mzp(
                            mzpIconPath: 'assets/images/home/icn_mzp.png',
                            mzpIconSize: 27,
                            mzpIcon: true,
                            iconRight: 6,
                            mzp: mzp.data.distribute!.miningPower,
                            mzpSize: 18,
                            mzpSmallSize: 14,
                            mzpColor: Colors.white,
                            mzpSmallColor: AppColor.lightGrey,
                          )
                        : Text(
                            'Public Dividend',
                            style: TextStyle(
                                fontFamily: 'Chaloops',
                                color: Colors.white,
                                fontSize: 18.w,
                                fontWeight: FontWeight.w700),
                          ),
                  ),
                ),
                Container(
                  width: 4.w,
                  height: 30.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.center,
                      image: AssetImage(
                          'assets/images/home/mzp_right.png'), // 배경 이미지
                    ),
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
