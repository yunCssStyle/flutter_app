import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/common/full_button.dart';
import 'package:minewarz_app/common/widget/full_page/full_page.dart';
import 'package:minewarz_app/pages/home/provider/exploration_provider.dart';
import 'package:minewarz_app/pages/home/widget/exploration/results_widget.dart';
import 'package:minewarz_app/pages/home/widget/exploration/gauge_widget.dart';

class ButtonWidget extends ConsumerWidget {
  final String status;
  final int tabRemainingCount;
  const ButtonWidget(
      {super.key, required this.status, required this.tabRemainingCount});

  void mysteryBoxCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: DeviceHeight().firstBotton(120.w),
      ),
      child: SizedBox(
        height: 56.w,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            if (status == 'COMPLETED')
              FullPage(
                transitionType: ContainerTransitionType.fade,
                closedBuilder: (BuildContext _, VoidCallback defenseOpens) {
                  return FullPageOpen(
                    openContainer: () async {
                      defenseOpens();
                    },
                    height: 31.w,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 61.w,
                      child: FullButton(
                        height: 56.w,
                        lienColor: AppColor.darkYellow,
                        bgColor: AppColor.lightYellow,
                        textColor: Colors.black,
                        text: 'View Results',
                      ),
                    ),
                  );
                },
                onClosed: mysteryBoxCle,
                child: const FullPageLayout(
                  child: ResultsWidget(),
                ),
              ),
            if (status == 'WAITED')
              CustomButton(
                fontSize: 20,
                onPressed: () {
                  ref.read(explorationProvider.notifier).postDeploy();
                },
                lienColor: AppColor.darkYellow,
                bgColor: AppColor.lightYellow,
                textColor: Colors.black,
                text: 'Deploy',
              ),
            if (status == 'STARTED')
              GaugeWidget(
                count: tabRemainingCount,
              ),
          ],
        ),
      ),
    );
  }
}
