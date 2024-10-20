import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';

class MzpWidget extends ConsumerStatefulWidget {
  const MzpWidget({super.key});

  @override
  ConsumerState<MzpWidget> createState() => _MzpWidgetState();
}

class _MzpWidgetState extends ConsumerState<MzpWidget> {
  bool infoShow = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mp = ref.watch(homeProvider);
    return SizedBox(
      child: mp is HomeModel && mp.isDivision
          ? Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      infoShow = !infoShow;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 3.w,
                        height: 23.w,
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
                        width: 165.w,
                        height: 23.w,
                        padding: EdgeInsets.only(left: 3.6.w, right: 3.6.w),
                        decoration: const BoxDecoration(
                          color: Color(0xFF484544),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mp.data.distribute!.miningPower > 0
                                  ? Mzp(
                                      mzpIconPath:
                                          'assets/images/home/icn_mpa.png',
                                      mzpIconSize: 20,
                                      mzpIcon: true,
                                      iconRight: 6,
                                      mzp: mp.data.distribute!.miningPower,
                                      mzpSize: 14,
                                      mzpSmallSize: 10,
                                      mzpColor: Colors.white,
                                      mzpSmallColor: AppColor.lightGrey,
                                    )
                                  : Text(
                                      'Public Dividend',
                                      style: TextStyle(
                                          fontFamily: 'Chaloops',
                                          color: Colors.white,
                                          fontSize: 16.w,
                                          fontWeight: FontWeight.w700),
                                    ),
                              Transform.rotate(
                                angle: infoShow ? 0 : 3.14159,
                                child: Image.asset(
                                  width: 18.w,
                                  fit: BoxFit.fitWidth,
                                  'assets/images/home/fold_icon.png',
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        width: 3.w,
                        height: 23.w,
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
                  ),
                ),
                if (infoShow)
                  Container(
                    width: 165.w,
                    color: Colors.black,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                      child: SizedBox(
                        width: 156.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Today’s Capacity',
                                        style: TextStyle(
                                          color: Color(0xffcacaca),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          height: 1.4,
                                          fontFamily: 'ProximaSoft',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Mzp(
                                  mzpIconSize: 16.42,
                                  mzpIcon: true,
                                  iconRight: 4,
                                  mzp: mp.data.distribute!.dividends,
                                  mzpfontFamily: 'ProximaSoft',
                                  mzpSize: 12,
                                  mzpSmallSize: 11,
                                  mzpColor: Colors.white,
                                  mzpSmallColor: AppColor.lightGrey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            )
          : Container(),
    );
  }
}
