import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/is_check.dart';

class MiningWidget extends StatelessWidget {
  final int? level;
  final int? mp;
  final bool equipped;
  final double equippedSize;
  final bool upgrade;
  final double upgradeSize;
  final double size;
  final double levelSize;
  final double mpSize;
  final bool isCheck;
  final Color color;
  final double opacity;
  final bool disabled;
  final bool action;
  final double gaugeHeight;
  final bool ismark;
  final int gauge;
  final bool lock;
  final double stringSize;
  final double stringColor;
  const MiningWidget({
    super.key,
    this.level = 0,
    this.mp = 0,
    this.equipped = false,
    this.equippedSize = 26,
    this.upgrade = false,
    this.isCheck = false,
    this.size = 108,
    this.levelSize = 46,
    this.mpSize = 13,
    this.color = Colors.black,
    this.opacity = 1,
    this.disabled = false,
    this.action = false,
    this.gaugeHeight = 5,
    this.ismark = true,
    this.gauge = 100,
    this.lock = false,
    this.stringSize = 3,
    this.stringColor = 4,
    this.upgradeSize = 20,
  });

  levelColor(level) {
    switch (level) {
      case 1:
      case 2:
        return const Color(0xFF7E7E7E);
      case 3:
      case 4:
        return const Color(0xFF2739C3);
      case 5:
      case 6:
        return const Color(0xFFB3802C);
      case 7:
        return const Color(0xFF00B9D5);
      case 8:
        return const Color(0xFFAB00EA);
      case 9:
        return const Color(0xFFFFD200);
      case 10:
        return const Color(0xFFFF000C);
      default:
        return const Color(0xFF7E7E7E);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(stringSize.w),
      child: Container(
        color: levelColor(level),
        padding: EdgeInsets.all(stringColor.w),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              width: size.w,
              fit: BoxFit.fitWidth,
              level == 0
                  ? 'assets/images/home/inventory/invetory_level.png'
                  : 'assets/images/home/inventory/invetory_level$level.png',
            ),
            if (level != 0 && ismark)
              Positioned(
                bottom: equippedSize <= 26 ? 12.w : 15.w,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    width: levelSize.w,
                    fit: BoxFit.fitWidth,
                    // disabled
                    //     ? 'assets/images/home/inventory/invetory_level_disabledtx$level.png'
                    //     :
                    action
                        ? 'assets/images/home/inventory/invetory_level_actiontx$level.png'
                        : 'assets/images/home/inventory/invetory_level_tx$level.png',
                  ),
                ),
              ),
            if (mp != 0)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.w),
                    color: AppColor.darkGrey1,
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: gauge < 0 ? 100 ~/ 10 : gauge ~/ 10,
                            child: AnimatedContainer(
                              width: double.infinity,
                              height: gaugeHeight.w,
                              color: const Color(0xFF04B300),
                              alignment: AlignmentDirectional.topStart,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn,
                              child: SizedBox(
                                height: gaugeHeight.w,
                              ),
                            ),
                          ),
                          Expanded(
                              flex:
                                  gauge < 0 ? 10 - 100 ~/ 10 : 10 - gauge ~/ 10,
                              child: const SizedBox())
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            if (mp != 0)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.w),
                  color: !disabled ? Colors.black : AppColor.darkGrey1,
                  child: Text(
                    'MP $mp',
                    style: TextStyle(
                      color: !disabled ? Colors.white : AppColor.darkGrey,
                      fontFamily: 'Chaloops',
                      fontSize: mpSize.w,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            if (upgrade)
              Positioned(
                bottom: equippedSize <= 26 ? 14.w : 20.w,
                right: 5.w,
                child: Image.asset(
                  'assets/images/home/inventory/up_icon.png',
                  width: upgradeSize.w,
                  fit: BoxFit.fitWidth,
                ),
              ),
            if (equipped)
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  width: equippedSize.w,
                  fit: BoxFit.fitWidth,
                  'assets/images/home/inventory/mounted.png',
                ),
              ),
            if (level == 0 && ismark)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.6,
                  child: Container(color: Colors.black),
                ),
              ),
            if (isCheck)
              Positioned(top: -7.w, right: -7.w, child: const IsCheck()),
            if (lock)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                  alignment: Alignment.center,
                  child: Image.asset(
                    width: 32.w,
                    fit: BoxFit.fitWidth,
                    'assets/images/home/transport/lock.png',
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
