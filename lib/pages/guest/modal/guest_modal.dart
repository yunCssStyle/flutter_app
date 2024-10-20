import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

class GuestModal extends ConsumerWidget {
  final String text;
  final Widget imgWidget;
  const GuestModal({
    super.key,
    required this.text,
    required this.imgWidget,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imgWidget,
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Sign up now to begin mining gold and loot other players!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'ProximaSoft',
            fontSize: 14.w,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        SizedBox(
          height: 15.w,
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
      ],
    );
  }
}
