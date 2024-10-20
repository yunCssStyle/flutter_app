import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';
import 'package:minewarz_app/pages/guest/modal/guest_modal.dart';
import 'package:minewarz_app/pages/guest/widget/action/zone_widget.dart';

class ActionGuestScreen extends ConsumerStatefulWidget {
  const ActionGuestScreen({super.key});

  @override
  ConsumerState<ActionGuestScreen> createState() => _ActionGuestScreenState();
}

class _ActionGuestScreenState extends ConsumerState<ActionGuestScreen> {
  @override
  void initState() {
    super.initState();
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
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: 70.w,
                left: 0,
                right: 0,
                bottom: 0,
                child: const Center(
                  child: ZoneSwiper(
                    actionData: ActionModel(
                      free: false,
                      miningPower: 0,
                      revengeTargetCount: 0,
                      inspection: true,
                      zones: [
                        ActionListModel(
                          assigned: false,
                          zone: "PUBLIC_ZONE",
                          huddleMiningPower: 0,
                          popRate: 0,
                        ),
                        ActionListModel(
                          assigned: true,
                          zone: "A_ZONE",
                          huddleMiningPower: 0,
                          popRate: 1,
                        ),
                        ActionListModel(
                          zone: "B_ZONE",
                          huddleMiningPower: 1000,
                          assigned: false,
                          popRate: 0.5,
                        ),
                        ActionListModel(
                          zone: "C_ZONE",
                          huddleMiningPower: 6000,
                          assigned: false,
                          popRate: 0.3,
                        ),
                        ActionListModel(
                          zone: "D_ZONE",
                          huddleMiningPower: 25000,
                          assigned: false,
                          popRate: 0.15,
                        ),
                        ActionListModel(
                          zone: "E_ZONE",
                          huddleMiningPower: 100000,
                          assigned: false,
                          popRate: 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 16.w,
                top: 144.w,
                child: MotionButton(
                  onPressed: () {
                    modalContent(
                      title: 'History',
                      widget: GuestModal(
                        imgWidget: Image(
                          image: const AssetImage(
                              'assets/images/guest/history.png'),
                          width: 180.w,
                          height: 180.w,
                        ),
                        text: 'View your attack and loot history.',
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    width: 51.w,
                    'assets/images/home/transport/history_icn.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: DeviceHeight().navHeight(80.w))
      ],
    );
  }
}
