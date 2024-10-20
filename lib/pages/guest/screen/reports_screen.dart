import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class ReportsGuestScreen extends ConsumerStatefulWidget {
  const ReportsGuestScreen({super.key});

  @override
  ConsumerState<ReportsGuestScreen> createState() => _ReportsGuestScreenState();
}

class _ReportsGuestScreenState extends ConsumerState<ReportsGuestScreen> {
  final bool isDday = false;
  @override
  void initState() {
    super.initState();
  }

  // initState async 함수

  @override
  void dispose() {
    super.dispose();
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
                  'Review reports summarizing your gains.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontSize: 18.w,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                Text(
                  'Sign up now to begin mining gold and loot other players!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    letterSpacing: -0.3,
                  ),
                ),
                SizedBox(
                  height: 50.w,
                ),
                Image(
                  image: const AssetImage('assets/images/guest/reports.png'),
                  width: 137.w,
                  height: 195.w,
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
