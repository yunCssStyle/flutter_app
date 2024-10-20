import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';

void modalMaintenance(
    {required String message,
    required String startDateTime,
    required String endDateTime}) {
  final context = GetIt.I<NavigationService>().getContext();
  showDialog(
    context: context,
    builder: (context) {
      return PopScope(
        canPop: false,
        child: ModalContent(
          title: 'Maintenance Underway',
          autoScroll: false,
          modalClose: true,
          widget: Maintenance(
            message: message,
            startDateTime: startDateTime,
            endDateTime: endDateTime,
          ),
        ),
      );
    },
  );
}

class Maintenance extends ConsumerWidget {
  final String message;
  final String startDateTime;
  final String endDateTime;
  const Maintenance({
    super.key,
    required this.message,
    required this.startDateTime,
    required this.endDateTime,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                message,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 20.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'UTC ',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.3,
                    ),
                  ),
                  Text(
                    startDateTime,
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ~ ',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    endDateTime,
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70.w),
              Image(
                width: 290.w,
                fit: BoxFit.fitWidth,
                image: const AssetImage('assets/images/login/maintenance.png'),
              ),
              SizedBox(height: 50.w),
            ],
          ),
        ),
        SizedBox(
          // height: 16.w,
          height: DeviceHeight().moaelTopSizw(70.w),
        )
      ],
    );
  }
}
