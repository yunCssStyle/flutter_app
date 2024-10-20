import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimerWidget extends StatefulWidget {
  final int endTime;
  final bool nextDay;
  final String timeType;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  final Function? callback;
  const CountdownTimerWidget({
    super.key,
    required this.endTime,
    this.nextDay = false,
    this.timeType = 'HH:mm:ss',
    this.fontSize = 14,
    this.fontWeight = FontWeight.w800,
    this.fontColor = Colors.white,
    this.fontFamily = 'Proxima Soft',
    this.callback,
  });
  @override
  // ignore: library_private_types_in_public_api
  _CountdownTimerWidgetState createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  late int remainingSeconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    final nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    if (widget.nextDay) {
      remainingSeconds = widget.endTime - nowTime;
    } else {
      remainingSeconds = widget.endTime;
    }
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      } else {
        // timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = formatTime(remainingSeconds);

    if (formattedTime == '00:00:00' || formattedTime == '00:00') {
      widget.callback?.call();
    }
    return Text(
      formattedTime,
      style: TextStyle(
        fontSize: widget.fontSize,
        fontFamily: widget.fontFamily,
        color: widget.fontColor,
        fontWeight: widget.fontWeight,
        decoration: TextDecoration.none,
      ),
    );
  }

  String formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    String hoursStr = hours.toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');

    if (widget.timeType == 'HH:mm') {
      return '$hoursStr:$minutesStr';
    } else if (widget.timeType == 'mm:ss') {
      return '$minutesStr:$secondsStr';
    } else {
      return '$hoursStr:$minutesStr:$secondsStr';
    }
  }
}
