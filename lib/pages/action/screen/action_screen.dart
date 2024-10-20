import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/action/modal/attack_history_modal.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';
import 'package:minewarz_app/pages/action/provider/action_provider.dart';
import 'package:minewarz_app/pages/action/widget/action/zone_widget.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class ActionScreen extends ConsumerStatefulWidget {
  const ActionScreen({super.key});

  @override
  ConsumerState<ActionScreen> createState() => _ActionScreenState();
}

class _ActionScreenState extends ConsumerState<ActionScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(actionProvider.notifier).setZoneData();
    ref.read(myInfoProvider.notifier).setMyInfoData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    final action = ref.watch(actionProvider);
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              if (action is ActionModel)
                Positioned(
                  top: 70.w,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: ZoneSwiper(
                      actionData: action,
                    ),
                  ),
                ),
              Positioned(
                right: 16.w,
                top: 144.w,
                child: MotionButton(
                  onPressed: () {
                    modalContent(
                      title: 'Attack history',
                      widget: const AttackHistoryModal(),
                      autoScroll: true,
                    );
                  },
                  child: SvgPicture.asset(
                    width: 51.w,
                    'assets/images/home/transport/history_icn.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              if (action is ActionLoading)
                Positioned(
                  top: 210.w,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Opacity(
                    opacity: 0.5,
                    child: Center(
                      child: Container(
                        height: 394.w,
                        width: 375.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/images/action/zone/PUBLIC_ZONE.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (action is ActionLoading) const LoadingWidget(),
            ],
          ),
        ),
        SizedBox(height: DeviceHeight().navHeight(80.w))
      ],
    );
  }
}
