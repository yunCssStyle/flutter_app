import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/total_provider.dart';

class TotalWidget extends ConsumerStatefulWidget {
  const TotalWidget({super.key});

  @override
  ConsumerState<TotalWidget> createState() => _TotalWidgetState();
}

class _TotalWidgetState extends ConsumerState<TotalWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(totalProvider.notifier).setReportTotalData();
  }

  @override
  Widget build(BuildContext context) {
    final total = ref.watch(totalProvider);
    final totalDate = total is TotalModel
        ? 'Date(${DateFormat('dd-MM-yyyy').format(DateTime.parse(total.date))})'
        : 'Date()';
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: DeviceHeight().firstTop(70.w),
        left: 16.w,
        right: 16.w,
        bottom: 30.w,
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
        alignment: Alignment.bottomCenter,
        image: AssetImage('assets/images/reports/totalbg.png'),
        fit: BoxFit.fitWidth,
      )),
      child: Column(
        children: [
          SizedBox(
            height: 40.w,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              totalDate,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                fontSize: 14.w,
                color: const Color(0xFF6B76A4),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Total Amount Incinerated',
            style: TextStyle(
              fontFamily: 'Chaloops',
              fontSize: 16.w,
              color: AppColor.lightGrey,
            ),
          ),
          Mzp(
            mzpIcon: true,
            mzpIconSize: 29.61,
            align: MainAxisAlignment.center,
            mzp: total is TotalModel ? total.incinerated : 0,
            mzpSize: 24,
            mzpSmallSize: 16,
            mzpColor: Colors.white,
            mzpSmallColor: AppColor.darkGrey,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Total JJACKshot Funds',
            style: TextStyle(
              fontFamily: 'Chaloops',
              fontSize: 14.w,
              color: AppColor.lightGrey,
            ),
          ),
          Mzp(
            mzpIcon: true,
            mzpIconSize: 25.96,
            align: MainAxisAlignment.center,
            mzp: total is TotalModel ? total.jackpot : 0,
            mzpSize: 20,
            mzpSmallSize: 14,
            mzpColor: Colors.white,
            mzpSmallColor: AppColor.darkGrey,
          ),
        ],
      ),
    );
  }
}
