import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';

class TextWidget extends ConsumerStatefulWidget {
  final String status;
  final int shortenedTime;
  final int time;
  const TextWidget({
    super.key,
    required this.status,
    required this.shortenedTime,
    required this.time,
  });

  @override
  ConsumerState<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends ConsumerState<TextWidget> {
  final textTooltop = SuperTooltipController();

  @override
  void dispose() {
    textTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        // Container(
        //   height: 80.w,
        // ),
        if (widget.status == 'COMPLETED')
          Text(
            'Exploration Complete',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Chaloops',
              fontSize: 32.w,
              fontWeight: FontWeight.w700,
            ),
          ),
        if (widget.status == 'WAITED')
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 27.w,
                ),
                Expanded(
                  child: Text(
                    'Awaiting Exploration',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Chaloops',
                      fontSize: 24.w,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SuperTooltip(
                  controller: textTooltop,
                  barrierColor: Colors.black.withOpacity(0),
                  content: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      "Exploration will take 3 hours.",
                      softWrap: true,
                      style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 12.w,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/common/icn_tip.png',
                    width: 27.w,
                    height: 27.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
        if (widget.status == 'STARTED')
          CountdownTimerWidget(
              endTime: widget.time,
              fontSize: 32.w,
              fontFamily: 'Chaloops',
              fontWeight: FontWeight.w700,
              fontColor: Colors.black,
              callback: () {
                ref.read(explorationProvider.notifier).timeEnd(context);
              }),
      ],
    );
  }
}
