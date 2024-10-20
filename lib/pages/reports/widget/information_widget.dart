import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/reports/model/information_model.dart';
import 'package:minewarz_app/pages/reports/provider/information_provider.dart';

class InformationWidget extends ConsumerStatefulWidget {
  const InformationWidget({super.key});

  @override
  ConsumerState<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends ConsumerState<InformationWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(informationProvider.notifier).setMyInformationData();
  }

  @override
  Widget build(BuildContext context) {
    final information = ref.watch(informationProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Information',
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
                    'Mining Power',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    information is InformationModel
                        ? information.myInformation.miningPower.toString()
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
                    'Mining Capacity',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    information is InformationModel
                        ? information.myInformation.miningCapacity.toString()
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
                    'Gold Acquired',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    information is InformationModel
                        ? information.myInformation.totalGoldAcquired.toString()
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
                    'Attack Profit',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    information is InformationModel
                        ? information.myInformation.attackProfit.toString()
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
                    'Losses from Attacks',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    information is InformationModel
                        ? information.myInformation.lossesFromAttacks.toString()
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
          ],
        ),
        if (information is InformationLoading)
          SizedBox(
            width: double.infinity,
            height: 260.w,
            child: const LoadingWidget(isPositioned: false),
          )
      ],
    );
  }
}
