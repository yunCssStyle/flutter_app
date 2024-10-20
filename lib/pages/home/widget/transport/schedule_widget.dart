import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/home/model/schedule_model.dart';
import 'package:minewarz_app/pages/home/provider/schedule_correction_provider.dart';

class ScheduleWidget extends ConsumerStatefulWidget {
  final int index;
  final ScheduleModel? scheduleModel;
  const ScheduleWidget({Key? key, required this.index, this.scheduleModel})
      : super(key: key);

  @override
  ConsumerState<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends ConsumerState<ScheduleWidget> {
  ScheduleModel? scheduleModelOld;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    // ref.read(scheduleCorrectionProvider.notifier).setScheduleData();
    scheduleModelOld = widget.scheduleModel;
  }

  @override
  Widget build(BuildContext context) {
    final scheduleData = ref.watch(scheduleCorrectionProvider);
    return GestureDetector(
      onTap: () {
        if (widget.index != 23) {
          ref
              .read(scheduleCorrectionProvider.notifier)
              .setTime(widget.index + 1);
        }
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (scheduleData is ScheduleModel)
            Container(
              width: 46.w,
              height: 42.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    scheduleData.transportSchedules[widget.index].reserved
                        ? 'assets/images/home/transport/schedule_day_box_on.png'
                        : 'assets/images/home/transport/time_box_bg.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              child: Center(
                child: Text(
                  (widget.index + 1).toString(),
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontSize: 20.w,
                    color: widget.index == 23
                        ? const Color(0xFFBFB000)
                        : Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          if (scheduleData is ScheduleModel)
            if (scheduleData.transportSchedules[widget.index].reserved)
              Positioned(
                left: -6,
                top: -6.w,
                child: Image(
                  width: 13.w,
                  image: AssetImage(
                    widget.index == 23
                        ? 'assets/images/home/transport/check_schedule_dim.png'
                        : 'assets/images/home/transport/check_schedule.png',
                  ),
                ),
              ),
          if (scheduleData is ScheduleLoading)
            Container(
              width: 46.w,
              height: 42.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/home/transport/time_box_bg.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
