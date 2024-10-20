import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/model/weapon_model.dart';
import 'package:minewarz_app/pages/action/provider/weapon_provider.dart';
import 'package:minewarz_app/pages/action/widget/result/allvictory_img_widget.dart';
import 'package:minewarz_app/pages/action/widget/result/defeat_img_widget.dart';
import 'package:minewarz_app/pages/action/widget/result/result_btn_widget.dart';
import 'package:minewarz_app/pages/action/widget/result/result_img_widget.dart';

class ResultViewScreen extends ConsumerWidget {
  final String type;
  final Function() callback;
  final Function() endcallback;
  const ResultViewScreen({
    super.key,
    required this.callback,
    required this.endcallback,
    required this.type,
  });

  String bgimg(weapon) {
    if (weapon.result == 'LOSE') {
      return 'assets/images/action/result_bg.png';
    } else {
      if (weapon.finished) {
        return 'assets/images/action/all_mine_bg.png';
      } else {
        return 'assets/images/action/mine_bg.png';
      }
    }
  }

  String btnText(weapon) {
    if (weapon.result == 'WIN') {
      if (weapon.finished) {
        return 'Claim';
      }
      return 'Next';
    } else {
      if (weapon.round == 1) {
        return 'Exit';
      }
      return 'Claim';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapon = ref.watch(weaponProvider);
    return Stack(
      children: [
        if (weapon is WeaponModel)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.w),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bgimg(weapon)),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60.w,
                  ),
                  if (weapon.result == 'WIN') //승리했을때
                    weapon.finished // 마지막 체크
                        ? const AllVictoryImgWidget() // 마지막이면 올 승리 이미지
                        : const ResultImgWidget(
                            isWin: true,
                          ), // 마지막이 아니라면 중간 승리 이미지
                  if (weapon.result == 'LOSE') //패배했을때
                    weapon.round != 1 // 라운드 체크
                        ? const ResultImgWidget() // 첫 라운드가 아니라면 중간 패배 이미지
                        : const DefeatImgWidget(), // 첫 라운드라면 첫 패배 이미지
                  if ((weapon.round == 1 && weapon.result == 'WIN') ||
                      (weapon.round != 1))
                    SizedBox(
                      height: 23.w,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              color: Colors.black,
                              padding: EdgeInsets.only(right: 4.w, left: 12.w),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    // offset: Offset(-12.w, 0),
                                    left: -30.w,
                                    top: -2.w,
                                    child: Image.asset(
                                      'assets/images/action/roundmzp_icon.png',
                                      width: 24.84.w,
                                      height: 24.58.w,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  //패배했을때 이거나 승리했는데 마지막일경우 이거나 승리했는데 첫라운드일경우
                                  if (weapon.result == 'LOSE')
                                    Mzp(
                                      mzp: weapon.currentProfit,
                                      mzpSize: 20.67,
                                      mzpSmallSize: 12.92,
                                      mzpColor: Colors.white,
                                      mzpSmallColor: AppColor.lightGrey,
                                    ),
                                  if (weapon.result == 'WIN' &&
                                      weapon.beforeProfit != null)
                                    Row(
                                      children: [
                                        if (weapon.beforeProfit! > 0)
                                          Mzp(
                                            mzp: weapon.beforeProfit!,
                                            mzpSize: 20.67,
                                            mzpSmallSize: 12.92,
                                            mzpColor: Colors.white,
                                            mzpSmallColor: AppColor.lightGrey,
                                          ),
                                        if (weapon.beforeProfit! > 0)
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                        if (weapon.beforeProfit! > 0)
                                          Image.asset(
                                            'assets/images/action/result_icon.png',
                                            width: 10.w,
                                            height: 10.w,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Mzp(
                                          mzp: weapon.roundProfit,
                                          mzpSize: 20.67,
                                          mzpSmallSize: 12.92,
                                          mzpColor: Colors.white,
                                          mzpSmallColor: AppColor.lightGrey,
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6.14.w,
                              child: Transform.translate(
                                offset: Offset(-1.w, 0),
                                child: Image.asset(
                                  alignment: Alignment.bottomLeft,
                                  'assets/images/action/result_rightbg.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10.w,
                  ),
                  ResultBtnWidget(
                    attackId: weapon.attackId,
                    callback: callback,
                    type: type,
                    text: btnText(weapon),
                    endcallback: endcallback,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
