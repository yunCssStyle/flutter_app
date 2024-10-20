import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/reports_provider.dart';
import 'package:minewarz_app/pages/reports/widget/chart_widget.dart';
import 'package:minewarz_app/pages/reports/widget/divisions_widget.dart';
import 'package:minewarz_app/pages/reports/widget/exploration_widget.dart';
import 'package:minewarz_app/pages/reports/widget/information_widget.dart';
import 'package:minewarz_app/pages/reports/widget/mining_power_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_widget.dart';
import 'package:minewarz_app/pages/reports/widget/total_widget.dart';

class ReportsScreen extends ConsumerStatefulWidget {
  const ReportsScreen({super.key});

  @override
  ConsumerState<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends ConsumerState<ReportsScreen> {
  final bool isDday = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(myInfoProvider.notifier).setMyInfoData();
    ref.read(reportsProvider.notifier).setReportData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reports = ref.watch(reportsProvider);
    return Column(
      children: [
        if (reports is ReportsModel)
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TotalWidget(),
                  SizedBox(
                    height: 50.w,
                  ),
                  const MiningPowerWidget(),
                  SizedBox(
                    height: 50.w,
                  ),
                  const DivisionsWidget(),
                  SizedBox(
                    height: 50.w,
                  ),
                  const ExplorationWidget(),
                  if (reports.yesterdayZone != null)
                    const Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        RankingWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        ChartWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        InformationWidget(),
                      ],
                    ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        // if (reports is ReportsLoading)
        //   Expanded(
        //     child: Center(
        //       child: Lottie.asset(
        //         // repeat: false,
        //         'assets/lottie/common/papa_loading.json',
        //         width: 100.w,
        //       ),
        //     ),
        //   ),
        SizedBox(
          height: DeviceHeight().navHeight(80.w),
        )
      ],
    );
  }
}
