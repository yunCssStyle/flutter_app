import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/exploration_provider.dart';

class ExplorationWidget extends ConsumerStatefulWidget {
  const ExplorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ExplorationWidget> createState() => _ExplorationWidgetState();
}

class _ExplorationWidgetState extends ConsumerState<ExplorationWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      dataCall();
    });
  }

  void dataCall() {
    ref.read(explorationProvider.notifier).setReportExData();
  }

  @override
  Widget build(BuildContext context) {
    final exploration = ref.watch(explorationProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Exploration Stats',
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
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Exploration Time',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    exploration is ExplorationModel
                        ? exploration.waiting
                            ? 'Calculating...'
                            : exploration.data.totalExplorationTime.toString()
                        : '0',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Explorations',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    exploration is ExplorationModel
                        ? exploration.waiting
                            ? 'Calculating...'
                            : exploration.data.totalExplorationCount.toString()
                        : '0',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mystery Boxes Discovered',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    exploration is ExplorationModel
                        ? exploration.waiting
                            ? 'Calculating...'
                            : exploration.data.totalExplorationReward.toString()
                        : '0',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        if (exploration is ExplorationLoading)
          SizedBox(
            width: double.infinity,
            height: 160.w,
            child: const LoadingWidget(isPositioned: false),
          ),
      ],
    );
  }
}
