import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/time/countdown_timer_widget.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

void modalNotSnapShot() {
  final context = GetIt.I<NavigationService>().getContext();
  int textCount = countOccurrencesOfText(
    context.toString(),
    'dependencies',
  );
  if (textCount > 0) {
    return;
  }
  showDialog(
    context: context,
    builder: (context) {
      return const PopScope(
        canPop: false,
        child: ModalContent(
          title: 'Miner on Standby',
          autoScroll: false,
          modalClose: false,
          widget: NotSnapShot(),
        ),
      );
    },
  );
}

int countOccurrencesOfText(String originalText, String targetText) {
  int count = 0;
  int index = originalText.indexOf(targetText);

  while (index != -1) {
    count++;
    index = originalText.indexOf(targetText, index + 1);
  }

  return count;
}

class NotSnapShot extends ConsumerStatefulWidget {
  const NotSnapShot({super.key});
  @override
  ConsumerState<NotSnapShot> createState() => _NotSnapShotState();
}

class _NotSnapShotState extends ConsumerState<NotSnapShot> {
  DateTime nowUtc = DateTime.now().toUtc();
  DateTime nextDayUtc = DateTime.utc(DateTime.now().toUtc().year,
      DateTime.now().toUtc().month, DateTime.now().toUtc().day + 1);
  int remainingTime = 0;

  @override
  void initState() {
    super.initState();
    remainingTime = nextDayUtc.difference(nowUtc).inSeconds;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Miner Status :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                'Standby Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: AppColor.red,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 35.w),
              Text(
                'Activation Countdown :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 10.w),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.w),
                child: CountdownTimerWidget(
                  endTime: remainingTime,
                  fontFamily: 'Chaloops',
                  fontSize: 32,
                  fontColor: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 100.w),
              Text(
                'Reasons for Standby :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 10.w),
              Container(
                color: AppColor.lightGrey2,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: Offset(0, 2.w),
                          child: Container(
                            color: Colors.black,
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              '01',
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 10.w,
                                color: AppColor.lightGrey1,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          'Account has been reactivated upon being\nblocked or restored.',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 12.w,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: Offset(0, 2.w),
                          child: Container(
                            color: Colors.black,
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              '02',
                              style: TextStyle(
                                fontFamily: 'ProximaSoft',
                                fontSize: 10.w,
                                color: AppColor.lightGrey1,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          'Account has been reactivated from dormancy\nupon failure to login for 7 days or more.',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 12.w,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
            ],
          ),
        ),
        CustomButton(
          text: 'Log Out',
          bgColor: AppColor.lightYellow,
          height: 40.w,
          fontSize: 18,
          textColor: Colors.black,
          iconEndPath: 'assets/images/common/options/logout_icon.svg',
          iconEndWidth: 24.w,
          onPressed: () async {
            await ref.read(soundsUrlProvider.notifier).soundUrl('intro');
            ref.read(soundsProvider.notifier).soundFun();
            ref.read(loginProvider.notifier).logout();
          },
        ),
        SizedBox(
          // height: 16.w,
          height: DeviceHeight().moaelTopSizw(70.w),
        )
      ],
    );
  }
}
