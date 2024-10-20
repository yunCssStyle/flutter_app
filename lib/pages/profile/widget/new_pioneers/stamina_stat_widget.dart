import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/profile/provider/new_pioneers_provider.dart';
import 'package:simple_animations/simple_animations.dart';

class StaminaStatWidget extends ConsumerStatefulWidget {
  const StaminaStatWidget({super.key});

  @override
  ConsumerState<StaminaStatWidget> createState() => _StaminaStatWidgetState();
}

class _StaminaStatWidgetState extends ConsumerState<StaminaStatWidget>
    with AnimationMixin {
  late AnimationController sizeController;
  late Animation<double> size;

  @override
  void initState() {
    sizeController = createController();
    size = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: sizeController,
        curve: Curves.bounceInOut, // Add your desired curve here
      ),
    );
    super.initState();
  }

  playmo(newProfileSelected) async {
    if (newProfileSelected != null) {
      if (newProfileSelected.stat != null) {
        await Future.delayed(const Duration(milliseconds: 600));
        sizeController.play(duration: const Duration(milliseconds: 300));
      } else {
        sizeController.reset();
      }
    } else {
      sizeController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final newProfileSelected = ref.watch(newProfileSelectedProvider);
    playmo(newProfileSelected);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          width: 22.w,
          fit: BoxFit.fitWidth,
          image:
              const AssetImage('assets/images/profile/newpioneers_stamina.png'),
        ),
        SizedBox(
          height: 7.w,
        ),
        Transform.scale(
          scale: newProfileSelected != null
              ? newProfileSelected.stat != null
                  ? size.value
                  : 1
              : 1,
          child: Container(
            width: 62.w,
            height: 76.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/images/profile/newpioneers_statx_box.png'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 6.w,
                ),
                SizedBox(
                  height: 26.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Stamina',
                    style: TextStyle(
                      color: AppColor.lightYellow,
                      height: 1,
                      fontSize: 12.w,
                      fontFamily: 'Chaloops',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (newProfileSelected == null)
                  Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontSize: 18.w,
                      fontFamily: 'Chaloops',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                if (newProfileSelected != null)
                  Text(
                    newProfileSelected.stat != null
                        ? newProfileSelected.stat!.stamina.toString()
                        : '-',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontSize: 18.w,
                      fontFamily: 'Chaloops',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                if (newProfileSelected != null)
                  Text(
                    newProfileSelected.statBonus != null
                        ? '(+${newProfileSelected.statBonus!.stamina.toString()})'
                        : '',
                    style: TextStyle(
                      color: AppColor.darkRed,
                      height: 1.2,
                      fontSize: 14.w,
                      fontFamily: 'Chaloops',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
