import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/common/full_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/screen/attack_screen.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class RevengeModal extends ConsumerStatefulWidget {
  final int targetId;
  final int refAttackId;
  final num attackPrice;
  final bool isExecute;
  const RevengeModal({
    super.key,
    required this.attackPrice,
    required this.targetId,
    required this.refAttackId,
    required this.isExecute,
  });

  @override
  ConsumerState<RevengeModal> createState() => _RevengeModalState();
}

class _RevengeModalState extends ConsumerState<RevengeModal> {
  bool _isLoggedIn = false;

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    final myinfo = ref.watch(myInfoProvider);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.isExecute)
                  Column(
                    children: [
                      Text(
                        'The enemy chose revenge and thereby granted you one last chance to strike back.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'If you choose to take revenge, the attack will be final, and the enemy will not be given the chance to retaliate.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5.h),
                    ],
                  ),
                Text(
                  widget.isExecute
                      ? 'Commence the attack?'
                      : 'Do you want to commence the attack?',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: widget.isExecute ? 100.h : 52.h),
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
                        mzp: widget.attackPrice,
                        mzpSize: 16,
                        mzpSmallSize: 14,
                        mzpColor: myinfo.balance.gold >= widget.attackPrice
                            ? Colors.black
                            : AppColor.darkRed,
                        mzpfontFamily: 'ProximaSoft',
                        fontWeight: FontWeight.w800,
                        mzpSmallColor: myinfo.balance.gold >= widget.attackPrice
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
          SizedBox(height: 10.w),
          Stack(
            children: [
              MotionButton(
                scale: 0.05,
                child: FullPage(
                  transitionType: ContainerTransitionType.fade,
                  closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                    return FullPageOpen(
                      openContainer: () async {
                        ref.read(isAttackProvider.notifier).state = true;
                        setState(() {
                          _isLoggedIn = true;
                        });
                        final attack = await ref
                            .read(attackProvider.notifier)
                            .getAttackRevenge(
                              targetId: widget.targetId,
                              refAttackId: widget.refAttackId,
                            );
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                        if (attack) {
                          defenseOpens();
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
                      type: 'revenges',
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
