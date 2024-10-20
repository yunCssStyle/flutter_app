import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';

void modalAppEnd() {
  final context = GetIt.I<NavigationService>().getContext();
  showDialog(
    context: context,
    builder: (context) {
      return const PopScope(
        child: ModalContent(
          title: 'Quit',
          autoScroll: false,
          modalClose: true,
          widget: AppEnd(),
        ),
      );
    },
  );
}

class AppEnd extends ConsumerWidget {
  const AppEnd({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30.w),
        Text(
          'Are you sure you want to\nquit the MINE WARZ?',
          style: TextStyle(
            fontFamily: 'ProximaSoft',
            fontSize: 16.w,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.w),
              Image(
                width: 120.w,
                fit: BoxFit.fitWidth,
                image: const AssetImage('assets/images/profile/nft_nolist.png'),
              ),
            ],
          ),
        ),
        CustomButton(
          text: 'Quit',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 56.w,
          fontSize: 20,
          textColor: Colors.black,
          onPressed: () => SystemNavigator.pop(),
        ),
        // SizedBox(
        //   // height: 16.w,
        //   height: DeviceHeight().moaelTopSizw(70.w),
        // )
        SizedBox(height: 30.w),
      ],
    );
  }
}
