// 입력 버튼 스타일
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';

registerBtnStyle(valid) {
  return ButtonStyle(
    shadowColor: MaterialStateProperty.all<Color>(
      Colors.transparent,
    ),
    padding: MaterialStateProperty.all<EdgeInsets>(
      EdgeInsets.zero,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      valid
          ? AppColor.lightYellow
          : AppColor.lightGrey1, // 닉네임 중복 체크 통과 여부에 따라 버튼 활성화 여부
    ),
    minimumSize: MaterialStateProperty.all<Size>(
      Size(double.infinity, 56.w),
    ),
  );
}

// 체크 버튼 스타일
checkBtnStyle(textCheck) {
  return ButtonStyle(
    shadowColor: MaterialStateProperty.all<Color>(
      Colors.transparent,
    ),
    padding: MaterialStateProperty.all<EdgeInsets>(
      EdgeInsets.zero,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      textCheck
          ? AppColor.lightYellow
          : AppColor.lightGrey1, // 텍스트 체크 통과 여부에 따라 버튼 활성화 여부
    ),
    minimumSize: MaterialStateProperty.all<Size>(
      Size(102.w, 56.w),
    ),
  );
}

// 텍스트 필드 스타일
inputDecoration() {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.w),
    hintText: 'abcd1234',
    hintStyle: TextStyle(
      fontSize: 16.w,
      fontWeight: FontWeight.w700,
      fontFamily: 'ProximaSoft',
      color: AppColor.lightGrey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0), // 둥근 테두리
      borderSide: const BorderSide(
        color: Colors.black,
      ), // 테두리 색상
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0), // 둥근 테두리
      borderSide: const BorderSide(
        color: Colors.black,
      ), // 포커스 테두리 색상
    ),
  );
}
