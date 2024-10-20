import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';

class UnequipPioneerModal extends ConsumerWidget {
  final int id;
  final Function callback;
  const UnequipPioneerModal(
      {super.key, required this.id, required this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Would you like to send the Pioneer\nback to camp?',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 52.h),
              Image(
                width: 103.w,
                fit: BoxFit.fitWidth,
                image: const AssetImage(
                  'assets/images/profile/unequip_pioneer_img.png',
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          text: 'Confirm',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 50.h,
          fontSize: 20,
          textColor: Colors.black,
          onPressed: () {
            ref.read(profileListProvider.notifier).unequip(id);
            callback();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
