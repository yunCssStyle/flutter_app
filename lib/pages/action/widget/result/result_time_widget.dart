import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';

class ResultTimeWidget extends StatefulWidget {
  final int time;
  final Function onTimeEnd;
  final bool isLoggedIn;
  const ResultTimeWidget({
    super.key,
    required this.time,
    required this.onTimeEnd,
    this.isLoggedIn = false,
  });

  @override
  State<ResultTimeWidget> createState() => _ResultTimeWidgetState();
}

class _ResultTimeWidgetState extends State<ResultTimeWidget> {
  late int currentTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    currentTime = widget.time;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentTime -= 1;
      });
      if (currentTime == 0) {
        timer.cancel(); // 타이머 멈추기
        widget.onTimeEnd(); // onTimeEnd 함수 실행
      }
    });
  }

  @override
  void dispose() {
    timer.cancel(); // 타이머 멈추기
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoggedIn) {
      setState(() {
        timer.cancel();
      });
    }
    return Positioned(
      right: 18.w,
      top: 8.w,
      child: Text(
        currentTime.toString(),
        style: TextStyle(
          fontFamily: 'Chaloops',
          fontSize: 20.w,
          fontWeight: FontWeight.w700,
          color: AppColor.lightRed,
        ),
      ),
    );
  }
}
