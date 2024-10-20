import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/profile/modal/stat_details_modal.dart';

class StatCardWidget extends ConsumerWidget {
  final String stat;
  final int value;
  const StatCardWidget({super.key, required this.stat, required this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 80.94.w,
      height: 104.19.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/profile/stat_cade.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14.w, bottom: 5.w),
            child: Image(
              width: 28.w,
              image: AssetImage(
                statDetails
                    .firstWhere((element) => element['stat'] == stat)['icon']
                    .toString(),
              ),
            ),
          ),
          SizedBox(height: 5.w),
          Text(
            stat == 'silverTongue' ? 'Silver Tongue' : titleCase(stat),
            style: TextStyle(
              fontFamily: 'Chaloops',
              fontSize: 11.w,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.w),
          Text(
            value.toString(),
            style: TextStyle(
              fontFamily: 'Chaloops',
              height: 1.2,
              fontSize: 20.w,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  String titleCase(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }
}
