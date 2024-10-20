import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class TimeIndicator extends StatelessWidget {
  final DateTime startTime;
  final DateTime endTime;

  const TimeIndicator(this.startTime, this.endTime, {super.key});

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.scheduled([startTime, endTime], builder: (context) {
      final now = DateTime.now();
      final started = now.compareTo(startTime) >= 0;
      final ended = now.compareTo(endTime) >= 0;
      return Text(started
          ? ended
              ? "Ended"
              : "Started"
          : "Not Started");
    });
  }
}
