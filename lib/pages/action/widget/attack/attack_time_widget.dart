import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttackTimeWidget extends StatefulWidget {
  final int time;
  final Function onTimeEnd;
  final bool isLoggedIn;
  const AttackTimeWidget({
    super.key,
    required this.time,
    required this.onTimeEnd,
    this.isLoggedIn = false,
  });

  @override
  State<AttackTimeWidget> createState() => _AttackTimeWidgetState();
}

class _AttackTimeWidgetState extends State<AttackTimeWidget> {
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
  Widget build(BuildContext context) {
    if (widget.isLoggedIn) {
      setState(() {
        timer.cancel();
      });
    }
    return Column(
      children: [
        Text(
          currentTime.toString(),
          style: TextStyle(
            fontSize: 40.w,
            fontFamily: 'Chaloops',
            fontWeight: FontWeight.w700,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        Text(
          'Choose your weapon!',
          style: TextStyle(
            fontSize: 18.w,
            fontFamily: 'Chaloops',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 1,
          ),
        ),
        Text(
          'You will lose if you don\'t select in time.',
          style: TextStyle(
            fontSize: 14.w,
            fontFamily: 'Chaloops',
            fontWeight: FontWeight.w400,
            color: Colors.white,
            height: 1.8,
          ),
        ),
      ],
    );
  }
}
