import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class RefreshModal extends ConsumerWidget {
  final num refreshCost;
  const RefreshModal({super.key, required this.refreshCost});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you want to refresh the list?',
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
                    'assets/images/action/refresh_list_img.png',
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
                  Container(
                    margin: EdgeInsets.only(left: 10.w, top: 2.w),
                    padding: EdgeInsets.only(left: 12.w, right: 5.w),
                    color: Colors.white,
                    child: Mzp(
                      mzp: refreshCost,
                      mzpSize: 16,
                      mzpSmallSize: 14,
                      mzpColor: Colors.black,
                      mzpfontFamily: 'ProximaSoft',
                      fontWeight: FontWeight.w800,
                      mzpSmallColor: AppColor.lightGrey,
                    ),
                  ),
                  Image.asset(
                    'assets/images/appbar/icn_mzp.png',
                    width: 19.w,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.w),
          CustomButton(
            fontSize: 20,
            onPressed: () async {
              Navigator.pop(context);
              ref.read(targetListProvider.notifier).refresh();
              await Future.delayed(const Duration(milliseconds: 500));
              if (context.mounted) {
                ref.read(myInfoProvider.notifier).setMyInfoData();
              }
            },
            lienColor: AppColor.darkYellow,
            bgColor: AppColor.lightYellow,
            textColor: Colors.black,
            text: 'Confirm',
          ),
        ],
      ),
    );
  }
}
