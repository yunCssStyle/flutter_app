import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class DeletAccountModal extends ConsumerStatefulWidget {
  const DeletAccountModal({super.key});

  @override
  ConsumerState<DeletAccountModal> createState() => _DeletAccountModalState();
}

class _DeletAccountModalState extends ConsumerState<DeletAccountModal> {
  final TextEditingController _textEditingController = TextEditingController();
  bool isButtonEnabled = false;

  void _updateButtonState() {
    String inputText = _textEditingController.text;
    setState(() {
      isButtonEnabled =
          inputText == 'CONFIRM' || inputText == 'confirm' ? true : false;
    });
  }

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 20.w,
              ),
              Text(
                'Would you like to delete your account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.w,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ProximaSoft',
                ),
              ),
              SizedBox(height: 14.w),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'If you wish to delete your account, please enter "',
                      style: TextStyle(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'ProximaSoft',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'CONFIRM',
                      style: TextStyle(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'ProximaSoft',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '" in the field below. "',
                      style: TextStyle(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'ProximaSoft',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Stack(
                children: [
                  if (_textEditingController.text.isEmpty)
                    Text(
                      'CONFIRM',
                      style: TextStyle(
                        height: 1.6.w,
                        fontSize: 32.w,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Chaloops',
                        color: AppColor.lightGrey2,
                      ),
                    ),
                  TextField(
                    controller: _textEditingController,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 32.w,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Chaloops',
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.lightGrey,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.lightGrey,
                          width: 2.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        height: 0.1,
                        fontSize: 32.w,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Chaloops',
                        color: AppColor.lightGrey2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 36.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    width: 16.w,
                    'assets/images/common/options/icn_!.svg',
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    'Caution',
                    style: TextStyle(
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ProximaSoft',
                      color: AppColor.red,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.w),
              Container(
                color: AppColor.lightGrey2,
                padding: EdgeInsets.fromLTRB(10.w, 12.w, 10.w, 12.w),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 19.w,
                          height: 18.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                'assets/images/common/options/num_bg.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '01',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Chaloops',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: Text(
                            'When you delete your account, all your records will be deleted and cannot be restored.',
                            style: TextStyle(
                              fontSize: 14.w,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 19.w,
                          height: 18.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                'assets/images/common/options/num_bg.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '02',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Chaloops',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: Text(
                            'To delete your account, all your NFTs in use must be unlocked.\nPlease check your slots in the game.',
                            style: TextStyle(
                              fontSize: 14.w,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 19.w,
                          height: 18.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                'assets/images/common/options/num_bg.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '03',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Chaloops',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: Text(
                            'You cannot rejoin with the same ID as the withdrawn account.',
                            style: TextStyle(
                              fontSize: 14.w,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'ProximaSoft',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50.w,
          child: Row(
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
                text: 'Delete Account',
                bgColor: AppColor.lightYellow,
                lienColor: AppColor.darkYellow,
                width: MediaQuery.of(context).size.width / 2 - 10,
                height: 50.h,
                fontSize: 20,
                isDisabled: isButtonEnabled ? false : true,
                textColor: Colors.black,
                onPressed: () {
                  if (isButtonEnabled) {
                    ref.read(myInfoProvider.notifier).putWithdrawal();
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
