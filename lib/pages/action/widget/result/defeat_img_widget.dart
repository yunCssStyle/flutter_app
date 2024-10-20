import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class DefeatImgWidget extends ConsumerStatefulWidget {
  const DefeatImgWidget({super.key});

  @override
  ConsumerState<DefeatImgWidget> createState() => _DefeatImgWidgetState();
}

class _DefeatImgWidgetState extends ConsumerState<DefeatImgWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(soundsProvider.notifier).soundPause();
      ref
          .read(soundsProvider.notifier)
          .cilckAttack(sound: 'sounds/attack/attack_complete.mp3');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Defeat!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Chaloops',
              fontSize: 44.w,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          Image.asset(
            'assets/images/action/defeat_img.png',
            width: 334.w,
            height: 290.w,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
