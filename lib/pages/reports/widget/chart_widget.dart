import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/mz_slider/mz_slider.dart';
import 'package:minewarz_app/common/widget/supertooltip/src/super_tooltip.dart';
import 'package:minewarz_app/common/widget/supertooltip/src/super_tooltip_controller.dart';
import 'package:minewarz_app/pages/reports/model/chart_model.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/chart_provider.dart';
import 'package:minewarz_app/pages/reports/provider/reports_provider.dart';
import 'package:minewarz_app/pages/reports/widget/report_nodata.dart';

class ChartWidget extends ConsumerStatefulWidget {
  const ChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends ConsumerState<ChartWidget> {
  late bool isChart = false;
  late bool tabbool = true;
  late List<ChartListModel> chartList;
  late ScrollController horizontalScroll = ScrollController();
  double _currentSliderValue = 0;
  double width = 100;
  List<String> items = ['PUBLIC', 'A', 'B', 'C', 'D', 'E'];
  int currentIndex = 0;
  String type = 'TRANSIT';
  bool chartIsShow = false;
  final textTooltop = SuperTooltipController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initDataCall(); // async 함수 실행
    });
  }

  @override
  void dispose() {
    horizontalScroll.dispose();
    textTooltop.dispose();
    super.dispose();
  }

  void initDataCall() async {
    final reports = ref.watch(reportsProvider);
    if (reports is ReportsModel && reports.yesterdayZone != null) {
      asyncMethod(item: reports.yesterdayZone);
      setState(() {
        currentIndex = items.indexOf(reports.yesterdayZone!);
      });
    } else {
      asyncMethod();
    }
  }

  void moveToPreviousItem() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
      asyncMethod();
    }
  }

  void moveToNextItem() {
    if (currentIndex < items.length - 1) {
      setState(() {
        currentIndex++;
      });
      asyncMethod();
    }
  }

  tabCilck(types) {
    setState(() {
      // currentIndex = 0;
      type = types;
    });
    asyncMethod();
  }

  // initState async 함수
  asyncMethod({String? item}) async {
    setState(() {
      chartIsShow = false;
    });
    final chart = await ref
        .read(chartProvider.notifier)
        .setChartData(zone: item ?? items[currentIndex], type: type);
    if (chart is ChartModel) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (horizontalScroll.hasClients) {
          scrollToEnd();
        }
      });
      width = chart.charts.length * 46.w;
      _currentSliderValue = chart.charts.length * 46.w;
      if (mounted) {
        setState(() {
          chartIsShow = true;
        });
      }
    }
  }

  Future<void> scrollToEnd() async {
    // await Future.delayed(const Duration(microseconds: 200));
    await horizontalScroll.animateTo(
      horizontalScroll.position.maxScrollExtent,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final chart = ref.watch(chartProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Opacity(
                  opacity: currentIndex == 0 ? 0.2 : 1,
                  child: Image.asset(
                    'assets/images/reports/arrow_left.png',
                    width: 28.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                onPressed: () {
                  if (currentIndex > 0) {
                    moveToPreviousItem();
                  }
                },
              ),
              Text(
                '${items[currentIndex] != 'PUBLIC' ? 'ZONE' : ''} ${items[currentIndex]} Chart',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Chaloops',
                  fontSize: 24.w,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              IconButton(
                icon: Opacity(
                  opacity: currentIndex == items.length - 1 ? 0.2 : 1,
                  child: Image.asset(
                    'assets/images/reports/arrow_right.png',
                    width: 28.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                onPressed: () {
                  if (currentIndex != items.length) {
                    moveToNextItem();
                  }
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    tabCilck('TRANSIT');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 52.w,
                    color: type == 'TRANSIT'
                        ? AppColor.lightRed
                        : AppColor.lightYellow2,
                    child: Text(
                      'Transit',
                      style: TextStyle(
                        color: type == 'TRANSIT'
                            ? Colors.white
                            : AppColor.lightYellow3,
                        fontFamily: 'Chaloops',
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    tabCilck('ATTACK');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 52.w,
                    color: type == 'ATTACK'
                        ? AppColor.darkRed
                        : AppColor.lightYellow2,
                    child: Text(
                      'Attack',
                      style: TextStyle(
                        color: type == 'ATTACK'
                            ? Colors.white
                            : AppColor.lightYellow3,
                        fontFamily: 'Chaloops',
                        fontSize: 18.w,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.w,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            if (chart is ChartModel && chartIsShow)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    if (chart.charts.isNotEmpty)
                      Stack(
                        children: [
                          SingleChildScrollView(
                            padding: EdgeInsets.only(left: 60.w, right: 60.w),
                            scrollDirection: Axis.horizontal,
                            controller: horizontalScroll,
                            child: SizedBox(
                              width: 1700.w / 31 * chart.charts.length,
                              height: 204.w,
                              child: Container(
                                height: 140.w,
                                padding: EdgeInsets.only(top: 48.w),
                                child: BarChart(
                                  BarChartData(
                                    titlesData: FlTitlesData(
                                      show: true,
                                      leftTitles: const AxisTitles(
                                        drawBelowEverything: true,
                                      ),
                                      topTitles: const AxisTitles(
                                        drawBelowEverything: true,
                                      ),
                                      rightTitles: const AxisTitles(
                                        drawBelowEverything: true,
                                      ),
                                      bottomTitles: AxisTitles(
                                        drawBelowEverything: false,
                                        sideTitles: SideTitles(
                                          reservedSize: 26.sp,
                                          showTitles: true,
                                          getTitlesWidget: (value, meta) =>
                                              Text(
                                            value < 10
                                                ? '0${value.toInt()}'
                                                : value.toInt().toString(),
                                            style: TextStyle(
                                              fontFamily: 'Chaloops',
                                              fontSize: 20.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: BarChartAlignment.spaceAround,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    backgroundColor: Colors.transparent,
                                    groupsSpace: 0,
                                    gridData: const FlGridData(
                                      show: false,
                                    ),
                                    barTouchData: BarTouchData(
                                      enabled: true,
                                      touchTooltipData: BarTouchTooltipData(
                                        tooltipBgColor: Colors.transparent,
                                        tooltipPadding: const EdgeInsets.all(0),
                                        tooltipMargin: 0,
                                        getTooltipItem: (
                                          BarChartGroupData group,
                                          int groupIndex,
                                          BarChartRodData rod,
                                          int rodIndex,
                                        ) {
                                          return BarTooltipItem(
                                            '${rod.toY <= 0 ? '0' : rod.toY.toString()}%',
                                            TextStyle(
                                              fontFamily: 'Chaloops',
                                              fontSize: 16.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    extraLinesData: ExtraLinesData(
                                      horizontalLines: [
                                        HorizontalLine(
                                          y: 0,
                                          color: Colors.black,
                                          strokeWidth: 2.w,
                                        ),
                                      ],
                                    ),
                                    barGroups: chart.charts.map((e) {
                                      return BarChartGroupData(
                                        x: e.hour,
                                        showingTooltipIndicators: const [0],
                                        barsSpace: 400,
                                        barRods: [
                                          BarChartRodData(
                                            fromY: 0,
                                            toY: e.percent.toDouble(),
                                            width: 46.w,
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2.w,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                            color: AppColor.lightYellow,
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                    // [
                                    //   for (int i = 0; i < 30; i++)
                                    //     BarChartGroupData(
                                    //       x: i + 1,
                                    //       showingTooltipIndicators: const [0],
                                    //       barsSpace: 400,
                                    //       barRods: [
                                    //         BarChartRodData(
                                    //           fromY: 0,
                                    //           toY: 50 + i.toDouble(),
                                    //           width: 46.w,
                                    //           borderSide: BorderSide(
                                    //             color: Colors.black,
                                    //             width: 2.w,
                                    //           ),
                                    //           borderRadius:
                                    //               const BorderRadius.only(
                                    //             topLeft: Radius.circular(0),
                                    //             topRight: Radius.circular(0),
                                    //           ),
                                    //           color: AppColor.lightYellow,
                                    //         ),
                                    //       ],
                                    //     ),
                                    // ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              height: 220.h,
                              width: 62.w,
                              color: const Color.fromRGBO(230, 225, 206, 0.8),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              height: 220.h,
                              width: 62.w,
                              color: const Color.fromRGBO(230, 225, 206, 0.8),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            left: 0,
                            top: 0,
                            child: Container(
                              height: 220.h,
                              width: 60.w,
                              color: Colors.white.withOpacity(0),
                            ),
                          ),
                        ],
                      ),
                    if (chart.charts.isNotEmpty && chart.charts.length > 4)
                      MzSlider(
                        value: _currentSliderValue,
                        max: width,
                        onChanged: (double value) {
                          horizontalScroll.jumpTo(value);
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    if (chart.charts.isEmpty) const ReportsNoData()
                  ],
                ),
              ),
            if (chart is ChartLoading || !chartIsShow)
              SizedBox(
                width: double.infinity,
                height: 300.w,
                child: const LoadingWidget(isPositioned: false),
              ),
            if (chart is ChartError) const ReportsNoData(),
            Positioned(
              top: 0.w,
              right: 16.w,
              child: SuperTooltip(
                controller: textTooltop,
                barrierColor: Colors.black.withOpacity(0),
                content: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Text(
                    type == 'TRANSIT'
                        ? "This chart shows the amount of times\nGold has been transported each hour.\nOnly hours from 01:00 to 23:00 are\ndisplayed since transportation\noccurs across all mines at 24:00 (UTC)."
                        : "This chart shows the amount of attacks that\noccurred during each hour.\nUse this information and set your\ntransportation schedule to avoid peak attack\nhours.",
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
            ),
          ],
        ),
      ],
    );
  }
}
