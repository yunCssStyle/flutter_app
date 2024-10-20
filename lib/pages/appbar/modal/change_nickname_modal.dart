import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/appbar/services/my_info_service.dart';

class ChangeNicknameModal extends ConsumerStatefulWidget {
  const ChangeNicknameModal({super.key});

  @override
  ConsumerState<ChangeNicknameModal> createState() =>
      _ChangeNicknameModalState();
}

class _ChangeNicknameModalState extends ConsumerState<ChangeNicknameModal> {
  final TextEditingController _controller = TextEditingController();
  final RegExp _alphabetRegExp = RegExp(r'^[a-zA-Z]'); // 첫글자가 영문이 체크
  final RegExp _validationRegExp =
      RegExp(r'^(?=.*[a-zA-Z0-9]).{4,16}$'); // 영문과 숫자, 4자리 이상 16자리 이하 체크
  bool textCheck = false; // 텍스트 체크 통과 여부
  String nickName = ''; // 닉네임
  bool valid = false; // 닉네임 중복 체크 통과 여부
  bool isAlphabetError = false; // 첫글자가 영문이 아닐 때
  bool isValidationError = false; // 영문과 숫자, 4자리 이상 16자리 이하가 아닐 때

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  textFieldValidator(String value) {
    if (value != '') {
      // 텍스트가 있을 때
      if (_alphabetRegExp.hasMatch(value) &&
          _validationRegExp.hasMatch(value)) {
        // 첫글자가 영문이고 영문과 숫자, 4자리 이상 16자리 이하일 때
        setState(() {
          textCheck = true; // 텍스트 체크 통과
          nickName = value; // 닉네임
          valid = false; // 닉네임 중복 체크 후 재입력했을 시 비활성화함
        });
      } else {
        setState(() {
          textCheck = false; // 텍스트 체크 통과하지 못함
          nickName = ''; // 닉네임 초기화
          valid = false; // 닉네임 중복 체크 후 재입력했을 시 비활성화함
        });
      }
      setState(() {
        isAlphabetError = !_alphabetRegExp.hasMatch(value); // 첫글자가 영문이 아닐 때
        isValidationError =
            !_validationRegExp.hasMatch(value); // 영문과 숫자, 4자리 이상 16자리 이하가 아닐 때
      });
    } else {
      setState(() {
        isAlphabetError = false; // 초기화
        isValidationError = false; // 초기화
        nickName = ''; // 초기화
      });
    }
  }

  // 닉네임 중복 체크
  Future<void> nickNameCheck() async {
    final myInfoServices =
        ref.watch(myInfoServicesProvider); // 닉네임 중복 체크 api provider
    try {
      NicknameCheck nickNameRes = await myInfoServices
          .getInitNickNameCheck(nickName); // 닉네임 중복 체크 api 호출
      setState(() {
        valid = nickNameRes.valid; // 닉네임 중복 체크 통과 여부
      });
    } catch (e) {
      // error exception catch
      setState(() {
        valid = false; // 닉네임 중복 체크 통과 불가
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15.w),
              Text(
                textAlign: TextAlign.center,
                'Please enter a nickname you want to\nchange to.',
                style: TextStyle(
                  fontSize: 16.w,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50.w),
              Container(
                color: Colors.transparent,
                width: 320.w,
                height: 40.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        onChanged: (value) {
                          textFieldValidator(value);
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                          fontSize: 24.w,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Chaloops',
                        ),
                        decoration: InputDecoration(
                          hintText: 'abcd1234',
                          hintStyle: TextStyle(
                            fontSize: 24.w,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Chaloops',
                            color: AppColor.lightGrey,
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(0),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    CustomButton(
                      isDisabled: !textCheck,
                      text: 'Check',
                      bgColor: Colors.white,
                      height: 40.h,
                      width: 72.w,
                      fontSize: 17,
                      textColor: Colors.black,
                      onPressed: () {
                        nickNameCheck(); // 닉네임 중복 체크
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.w),
              if (!valid)
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 10.w, top: 10.w),
                  child: Text(
                    // 'Nickname unavailable. Nickname is already in use or does not follow the nickname rules.',

                    isAlphabetError
                        ? 'The first character must be alphabetic.'
                        : isValidationError
                            ? 'Must be a combination of 4–16 alphanumeric characters.'
                            : '', // 첫글자가 영문이 아닐 때, 영문과 숫자, 4자리 이상 16자리 이하가 아닐 때
                    style: TextStyle(
                      color: AppColor.red,
                      fontSize: 16.w,
                      fontFamily: 'ProximaSoft',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              SizedBox(height: 3.w),
              if (!valid)
                Text(
                  'Please enter a nickname between 4–16 characters. The name must start with an alphabet and consist of alphanumeric characters.',
                  style: TextStyle(
                    color: AppColor.darkGrey1,
                    fontSize: 16.w,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              if (valid)
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Available',
                    style: TextStyle(
                      color: AppColor.darkGrey1,
                      fontSize: 16.w,
                      fontFamily: 'ProximaSoft',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Column(
          children: [
            CustomButton(
              isDisabled: valid ? false : true,
              text: 'Confirm',
              bgColor: AppColor.lightYellow,
              lienColor: AppColor.darkYellow,
              height: 50.w,
              fontSize: 20,
              textColor: Colors.black,
              onPressed: () {
                if (valid) {
                  ref
                      .read(myInfoProvider.notifier)
                      .nickNameChangeOptions(nickName); // 닉네임 입력
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
