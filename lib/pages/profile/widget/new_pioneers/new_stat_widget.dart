import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'intuition_stat_widget.dart';
import 'luck_stat_widget.dart';
import 'silvertongue_stat_widget.dart';
import 'stamina_stat_widget.dart';

class NewStatWidget extends StatelessWidget {
  const NewStatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278.25.w,
      height: 107.w,
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment(0, 0.3.w),
          image: const AssetImage(
              'assets/images/profile/newpioneers_statx_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LuckStatWidget(),
          SilverTongueStatWidget(),
          StaminaStatWidget(),
          IntuitionStatWidget(),
        ],
      ),
    );
  }
}
