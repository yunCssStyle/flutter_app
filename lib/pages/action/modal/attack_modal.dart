import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/full_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/action/screen/attack_screen.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class AttackModal extends ConsumerStatefulWidget {
  final int targetId;
  final num isGold;
  const AttackModal({
    super.key,
    required this.targetId,
    required this.isGold,
  });

  @override
  ConsumerState<AttackModal> createState() => _AttackModalState();
}

class _AttackModalState extends ConsumerState<AttackModal> {
  bool _isLoggedIn = false;
  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final myinfo = ref.watch(myInfoProvider);
    final targetList = ref.watch(targetListProvider);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you want to commence the attack?',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 52.h),
                Image(
                  width: 216.w,
                  fit: BoxFit.fitWidth,
                  image: const AssetImage(
                    'assets/images/action/attack_img.png',
                  ),
                ),
              ],
            ),
          ),
          if (widget.isGold > 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cost',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ProximaSoft',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Stack(
                  children: [
                    if (myinfo is MyInfoModel)
                      Container(
                        margin: EdgeInsets.only(left: 10.w, top: 2.w),
                        padding: EdgeInsets.only(left: 18.w, right: 5.w),
                        color: Colors.white,
                        child: Mzp(
                          mzp: widget.isGold,
                          mzpSize: 16,
                          mzpSmallSize: 14,
                          mzpColor: myinfo.balance.gold >= widget.isGold
                              ? Colors.black
                              : AppColor.darkRed,
                          mzpfontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w800,
                          mzpSmallColor: myinfo.balance.gold >= widget.isGold
                              ? AppColor.lightGrey
                              : AppColor.lightRed,
                        ),
                      ),
                    Image.asset(
                      'assets/images/appbar/icn_mzp.png',
                      width: 23.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ],
            ),
          if (widget.isGold > 0) SizedBox(height: 10.w),
          Stack(
            children: [
              MotionButton(
                scale: 0.05,
                child: FullPage(
                  transitionType: ContainerTransitionType.fade,
                  closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                    return FullPageOpen(
                      openContainer: () async {
                        if (targetList is TargetModel) {
                          // 공격 시작시 타겟이 있는지 확인
                          bool isTargetId = targetList.data!.attackTargets.any(
                              (target) => target!.targetId == widget.targetId);
                          if (isTargetId) {
                            // 타켓이 있을 경우 공격 시작
                            ref.read(isAttackProvider.notifier).state = true;
                            setState(() {
                              _isLoggedIn = true;
                            });
                            final attack = await ref
                                .read(attackProvider.notifier)
                                .getAttack(
                                  targetId: widget.targetId,
                                  isGold: widget.isGold > 0 ? true : false,
                                );
                            // ignore: use_build_context_synchronously
                            Navigator.pop(context);
                            if (attack) {
                              defenseOpens();
                            }
                          } else {
                            // 타켓이 없을 경우 모달 닫기 후 에러 토스트 출력
                            Navigator.pop(context);
                            FToastShow.ftoast(
                              text: 'Target list has been refreshed.',
                              type: 'error',
                            );
                          }
                        }
                      },
                      height: 31.w,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 61.w,
                        child: FullButton(
                          height: 56.w,
                          lienColor: AppColor.darkYellow,
                          bgColor: AppColor.lightYellow,
                          textColor: Colors.black,
                          text: 'Confirm',
                        ),
                      ),
                    );
                  },
                  onClosed: defenseOpensCle,
                  child: const FullPageLayout(
                    backPressed: false,
                    child: AttackScreen(
                      type: 'attack',
                    ),
                  ),
                ),
              ),
              if (_isLoggedIn) const LoadingWidget()
            ],
          ),
        ],
      ),
    );
  }
}
