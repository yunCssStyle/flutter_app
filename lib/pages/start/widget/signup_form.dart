import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/appbar/services/my_info_service.dart';
import 'package:minewarz_app/pages/start/style/signup_form.dart';
import 'package:minewarz_app/pages/start/widget/signup_text.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({super.key});

  @override
  ConsumerState<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final TextEditingController _controller = TextEditingController();
  final RegExp _alphabetRegExp = RegExp(r'^[a-zA-Z]'); // 첫글자가 영문이 체크
  final RegExp _validationRegExp =
      RegExp(r'^[a-zA-Z0-9]{4,16}$'); // 영문과 숫자, 4자리 이상 16자리 이하 체크
  bool textCheck = false; // 텍스트 체크 통과 여부
  String nickName = ''; // 닉네임
  bool valid = false; // 닉네임 중복 체크 통과 여부
  bool isAlphabetError = false; // 첫글자가 영문이 아닐 때
  bool isValidationError = false; // 영문과 숫자, 4자리 이상 16자리 이하가 아닐 때

  @override
  void dispose() {
    _controller.dispose(); // 컨트롤러 해제
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
      setState(() {
        valid = false; // 닉네임 중복 체크 통과 불가
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 텍스트 필드
              Expanded(
                child: TextField(
                  controller: _controller,
                  onChanged: (value) {
                    textFieldValidator(value); // 텍스트 체크
                  },
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 16.w,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ProximaSoft',
                  ),
                  decoration: inputDecoration(),
                ),
              ),
              SizedBox(width: 10.w),
              // 닉네임 중복 체크 버튼
              ElevatedButton(
                onPressed: () {
                  nickNameCheck(); // 닉네임 중복 체크
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style: checkBtnStyle(textCheck),
                child: Text(
                  'Check',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 15.w,
                    color: textCheck
                        ? Colors.black
                        : AppColor.lightGrey, // 텍스트 체크 통과 여부에 따라 버튼 활성화 여부
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.w),
        // 텍스트 필드 에러 메시지
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 10.w),
          child: Text(
            isAlphabetError
                ? 'The first character must be alphabetic.'
                : isValidationError
                    ? 'Must be a combination of 4–16 alphanumeric characters.'
                    : '', // 첫글자가 영문이 아닐 때, 영문과 숫자, 4자리 이상 16자리 이하가 아닐 때
            style: TextStyle(
              color: AppColor.red,
              fontSize: 14.w,
            ),
          ),
        ),
        const SignupText(), // 설명 텍스트
        // 닉네임 입력 버튼
        ElevatedButton(
          onPressed: () async {
            if (valid) {
              final storage = ref.read(secureStorageProvider);
              await storage.write(
                  key: 'FIRST', value: 'FIRST'); // 앱 처음 실행시 표시하기 위해 저장
              ref
                  .read(myInfoProvider.notifier)
                  .nickNameChange(nickName); // 닉네임 입력
            }
          },
          style: registerBtnStyle(valid),
          child: Text(
            'Register',
            style: TextStyle(
              fontFamily: 'ProximaSoft',
              fontSize: 15.w,
              color: valid
                  ? Colors.black
                  : AppColor.lightGrey, // 닉네임 중복 체크 통과 여부에 따라 버튼 활성화 여부
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
