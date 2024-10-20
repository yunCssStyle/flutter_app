import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/divisions_provider.dart';
import 'package:minewarz_app/pages/reports/widget/report_nodata.dart';

class DivisionsWidget extends ConsumerStatefulWidget {
  const DivisionsWidget({super.key});

  @override
  ConsumerState<DivisionsWidget> createState() => _DivisionsWidgetState();
}

class _DivisionsWidgetState extends ConsumerState<DivisionsWidget> {
  DateTime yesterday = DateTime.now().toUtc().subtract(const Duration(days: 1));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  asyncMethod() async {
    ref.read(divisionsProvider.notifier).setReportDiData(
        "${yesterday.year}-${yesterday.month < 10 ? '0${yesterday.month}' : yesterday.month}-${yesterday.day < 10 ? '0${yesterday.day}' : yesterday.day}");
  }

  @override
  Widget build(BuildContext context) {
    final divisions = ref.watch(divisionsProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: yesterday,
              firstDate: DateTime(2000),
              lastDate:
                  DateTime.now().toUtc().subtract(const Duration(days: 1)),
            );
            if (selectedDate != null) {
              setState(() {
                yesterday = selectedDate;
              });
              ref.read(divisionsProvider.notifier).setReportDiData(
                  '${yesterday.year}-${yesterday.month < 10 ? '0${yesterday.month}' : yesterday.month}-${yesterday.day < 10 ? '0${yesterday.day}' : yesterday.day}');
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('dd.MM.yyyy').format(yesterday),
                style: TextStyle(
                  color: AppColor.lightRed,
                  fontFamily: 'Chaloops',
                  fontSize: 20.w,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Image.asset(
                'assets/images/reports/arrow.png',
                width: 20.w,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Text(
          'Divisions (MP)',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Chaloops',
            fontSize: 24.w,
            fontWeight: FontWeight.w700,
            height: 1.2,
          ),
        ),
        SizedBox(
          height: 16.w,
        ),
        if (divisions is DivisionsModel)
          Column(
            children: divisions.data.toJson().entries.map((entry) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 16.w),
                decoration: BoxDecoration(
                  color: entry.key == 'zoneE' ||
                          entry.key == 'zoneC' ||
                          entry.key == 'zoneA'
                      ? Colors.white.withOpacity(0.3)
                      : null,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ZONE ${entry.key.replaceAll('zone', "")}',
                      style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 14.w,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      divisions.waiting
                          ? 'Calculating...'
                          : entry.value.toString(),
                      style: TextStyle(
                        fontFamily: 'ProximaSoft',
                        fontSize: 16.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        if (divisions is DivisionsLoading)
          SizedBox(
            width: double.infinity,
            height: 260.w,
            child: const LoadingWidget(isPositioned: false),
          ),
        if (divisions is DivisionsError) const ReportsNoData()
      ],
    );
  }
}
