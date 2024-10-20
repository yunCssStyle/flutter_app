import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_check_box.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:minewarz_app/pages/login/style/login_form.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  bool privacyPolicy = false; // 개인정보처리방침
  bool gameTermsofUse = false; // 게임 이용약관

  // 로그인 함수
  void loginFunction(String type) {
    if (privacyPolicy && gameTermsofUse) {
      ref.read(loginProvider.notifier).login(type);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 14.w,
                bottom: 10.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomCheckBox(
                    value: privacyPolicy,
                    text: 'Privacy Policy ',
                    linkText: '(Link)',
                    linkUrl: 'https://docs.minewarz.io/support/privacy-policy',
                    onChanged: () {
                      setState(() {
                        privacyPolicy = !privacyPolicy;
                      });
                    },
                  ),
                  CustomCheckBox(
                    value: gameTermsofUse,
                    text: 'Game Terms of Use ',
                    linkText: '(Link)',
                    linkUrl: 'https://docs.minewarz.io/support/terms-of-use',
                    onChanged: () {
                      setState(() {
                        gameTermsofUse = !gameTermsofUse;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Please agree to the terms and conditions first.',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: !privacyPolicy || !gameTermsofUse
                          ? AppColor.red
                          : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    style: btnStyle('apple'),
                    onPressed: () => loginFunction('apple'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          height: 50,
                          image: AssetImage(
                            'assets/images/login/logo_apple.png',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        Expanded(
                          child: Text(
                            'Sign in with Apple',
                            textAlign: TextAlign.center,
                            style: btnTextStyle(true),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  ElevatedButton(
                    style: btnStyle('google'),
                    onPressed: () => loginFunction('google'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          height: 50,
                          image: AssetImage(
                            'assets/images/login/logo_googleg.png',
                          ),
                          fit: BoxFit.fitHeight,
                        ),
                        Expanded(
                          child: Text(
                            'Sign in with Google',
                            textAlign: TextAlign.center,
                            style: btnTextStyle(true),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  TextButton(
                    // onPressed: () => loginFunction('guest'),
                    onPressed: () {
                      if (privacyPolicy && gameTermsofUse) {
                        ref.read(loginProvider.notifier).guestLogin();
                      }
                    },
                    child: Text(
                      'Guest Login',
                      style: btnTextStyle(false),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: DeviceHeight().firstBotton(0.w),
        ),
      ],
    );
  }
}
