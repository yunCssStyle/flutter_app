// 버튼 스타일
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

btnStyle(String type) {
  return ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 0,
      ),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
    ),
    elevation: MaterialStateProperty.all(0),
    minimumSize:
        MaterialStateProperty.all(const Size.fromHeight(50)), //  <-- Add this
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return type == 'google' ? const Color(0xFF4285F4) : Colors.black;
        }
        return type == 'google' ? const Color(0xFF4285F4) : Colors.black;
      },
    ),
  );
}

// 버튼 텍스트 스타일
btnTextStyle(bool isColor) {
  return TextStyle(
    fontFamily: 'ProximaSoft',
    color: isColor ? Colors.white : Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
}
