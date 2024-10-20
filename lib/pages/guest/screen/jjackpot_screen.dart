import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class JjackpotGuestScreen extends ConsumerStatefulWidget {
  const JjackpotGuestScreen({super.key});

  @override
  ConsumerState<JjackpotGuestScreen> createState() =>
      _JjackpotGuestScreenState();
}

class _JjackpotGuestScreenState extends ConsumerState<JjackpotGuestScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(
            height: 100.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Coming Soon!',
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontSize: 32.w,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30.w,
                ),
                Image(
                  image: const AssetImage('assets/images/guest/jjackpot.png'),
                  width: 258.w,
                  height: 202.w,
                ),
              ],
            ),
          ),
          CustomButton(
            text: 'Login',
            bgColor: AppColor.lightYellow,
            height: 56.w,
            fontSize: 20,
            textColor: Colors.black,
            iconEndPath: 'assets/images/common/options/login_icon.svg',
            iconEndWidth: 24.w,
            onPressed: () {
              ref.read(loginProvider.notifier).guestLogout();
            },
          ),
          SizedBox(
            height: 50.w,
          ),
          SizedBox(
            height: DeviceHeight().navHeight(80.w),
          )
        ],
      ),
    );
  }
}
