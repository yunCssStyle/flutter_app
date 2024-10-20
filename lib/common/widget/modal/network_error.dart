import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/global/global_variable.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/routes/routes.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

void modalError() {
  final context = GetIt.I<NavigationService>().getContext();
  showDialog(
    context: context,
    builder: (context) {
      return const PopScope(
        canPop: false,
        child: ModalContent(
          title: 'Oops!',
          autoScroll: false,
          modalClose: false,
          widget: NetworkError(),
        ),
      );
    },
  );
}

class NetworkError extends ConsumerWidget {
  const NetworkError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Network Error.',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
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
          text: GoRouter.of(context).location() != '/start'
              ? 'Return to Start'
              : 'Logout',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 56.w,
          fontSize: 20,
          textColor: Colors.black,
          onPressed: () {
            ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
            ref.read(layoutProvider.notifier).setMyAppBar(true);
            if (GoRouter.of(context).location() != '/start') {
              GoRouter.of(context).go('/start');
            } else {
              ref.read(loginProvider.notifier).logout(sessions: false);
            }
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
