import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/home/modal/mining_details_modal.dart';
import 'package:minewarz_app/pages/home/modal/upgrade_mining_modal.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';

class InventoryListBtnsWidget extends ConsumerWidget {
  final bool isActive;
  final bool active;
  final bool upgrade;
  final bool lock;
  final int length;
  final int id;
  final int index;
  final Function(int, int) callback;
  const InventoryListBtnsWidget({
    super.key,
    required this.isActive,
    required this.active,
    required this.upgrade,
    required this.length,
    required this.id,
    required this.index,
    required this.callback,
    this.lock = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (lock)
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: 9.w),
                decoration: const ShapeDecoration(
                  color: Colors.black,
                  shadows: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 0,
                      spreadRadius: 0,
                      color: Colors.black,
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                ),
                child: SizedBox(
                  height: 60.w,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                          height: 2.w,
                          color: AppColor.lightBule,
                        ),
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.all(6),
                            color: AppColor.darkBule,
                            child: Center(
                              child: Text(
                                'Standing by until Mining Right settings are finalized.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'ProximaSoft',
                                    fontSize: 12.w,
                                    height: 1.2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/home/transport/tail.png',
                width: 15.w,
                height: 11.w,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        if (!active && !lock)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () async {
              if (!isActive) {
                final state = await ref
                    .read(inventoryProvider.notifier)
                    .putActive(ActivateModel(id: id, active: true));
                if (state) {
                  callback(index, length);
                }
              } else {
                FToastShow.ftoast(
                  text: 'There are no empty slots.',
                  type: 'error',
                );
              }
            },
            lienColor: AppColor.lightYellow1,
            bgColor: AppColor.lightYellow,
            textColor: Colors.black,
            text: 'Activate',
          ),
        if (active && !lock)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () async {
              final state = await ref
                  .read(inventoryProvider.notifier)
                  .putActive(ActivateModel(id: id, active: false));
              if (state) {
                callback(index, length);
              }
            },
            lienColor: AppColor.lightBule1,
            bgColor: AppColor.darkBule,
            text: 'Deactivate',
          ),
        if (upgrade && !lock)
          SizedBox(
            height: 8.w,
          ),
        if (upgrade && !lock)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () {
              modalContent(
                title: 'Upgrade Mining Rights',
                isMzp: true,
                widget: UpgradeMiningModal(
                  id: id,
                  callback: () {
                    callback(index, length);
                  },
                ),
              );
            },
            lienColor: AppColor.lightSky,
            bgColor: AppColor.darkSky,
            textColor: Colors.black,
            text: 'Upgrade',
          ),
        if (!lock)
          SizedBox(
            height: 8.w,
          ),
        if (!lock)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () {
              modalContent(
                title: 'Mining Right Details',
                widget: MiningDetailsModal(id: id),
              );
            },
            lienColor: AppColor.lightRed1,
            bgColor: AppColor.lightRed,
            textColor: Colors.black,
            text: 'Details',
          ),
      ],
    );
  }
}
