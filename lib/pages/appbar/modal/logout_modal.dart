import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class LogoutModal extends ConsumerWidget {
  const LogoutModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do you want to log out?',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 52.h),
              Image(
                width: 116.w,
                image: const AssetImage(
                  'assets/images/common/options/logout_img.png',
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              text: 'Cancel',
              bgColor: AppColor.darkBule,
              lienColor: AppColor.lightBule1,
              width: MediaQuery.of(context).size.width / 2 - 80,
              height: 50.h,
              fontSize: 20,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CustomButton(
              text: 'Confirm',
              bgColor: AppColor.lightYellow,
              lienColor: AppColor.darkYellow,
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: 50.h,
              fontSize: 20,
              textColor: Colors.black,
              onPressed: () async {
                await ref.read(soundsUrlProvider.notifier).soundUrl('intro');
                ref.read(soundsProvider.notifier).soundFun();
                ref.read(loginProvider.notifier).logout();
              },
            ),
          ],
        )
      ],
    );
  }
}
