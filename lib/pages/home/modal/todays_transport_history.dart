import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/home/model/transport_model.dart';
import 'package:minewarz_app/pages/home/provider/transport_history_provider.dart';
import 'package:minewarz_app/pages/home/widget/transport/history_completed.dart';

class TodaysTransportHistory extends ConsumerStatefulWidget {
  const TodaysTransportHistory({super.key});

  @override
  ConsumerState<TodaysTransportHistory> createState() =>
      _TodaysTransportHistoryState();
}

class _TodaysTransportHistoryState
    extends ConsumerState<TodaysTransportHistory> {
  List<TransportsModel> sortedTransports = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(transportHistoryProvider.notifier).setTransportData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final transportHistoryData = ref.watch(transportHistoryProvider);
    if (transportHistoryData is TransportHistoryModel) {
      // transportHistoryData.transports를 departureTime을 기준으로 정렬
      setState(() {});
      sortedTransports =
          List<TransportsModel>.from(transportHistoryData.transports)
            ..sort((a, b) => a.departureTime.compareTo(b.departureTime));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: transportHistoryData is TransportHistoryModel
          ? sortedTransports.map((e) {
              if (e.completed) {
                return HistoryCompleted(
                  departureTime: e.departureTime,
                  transportAmount: e.data!.transportAmount,
                  transportFee: e.data!.transportFee,
                  jackpotFund: e.data!.jackpotFund,
                  acquiredAmount: e.data!.acquiredAmount,
                  bonus: e.data!.bonus,
                );
              } else {
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 8.w),
                  padding: EdgeInsets.symmetric(vertical: 10.w),
                  decoration: const BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/home/transport/no_complete_bg.png',
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Departure Time',
                        style: TextStyle(
                          fontFamily: 'Chaloops',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.darkGrey,
                        ),
                      ),
                      Text(
                        '${e.departureTime >= 10 ? e.departureTime.toString() : e.departureTime}:00',
                        style: TextStyle(
                          fontFamily: 'Chaloops',
                          fontSize: 16.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.lightGrey1,
                        ),
                      ),
                    ],
                  ),
                );
              }
            }).toList()
          : [
              const LoadingWidget(isPositioned: false),
            ],
    );
  }
}
