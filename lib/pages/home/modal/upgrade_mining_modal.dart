import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/upgrade_topimg_widget.dart';

class UpgradeMiningModal extends ConsumerStatefulWidget {
  final int id;
  final Function() callback;
  const UpgradeMiningModal(
      {super.key, required this.id, required this.callback});

  @override
  ConsumerState<UpgradeMiningModal> createState() =>
      _UpgradeMiningModalModalState();
}

class _UpgradeMiningModalModalState extends ConsumerState<UpgradeMiningModal> {
  late MinesListModel? upgradeMine1;
  late MinesListModel? upgradeMine2;
  late UpgradeGetModel? upgradeMine;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   _asyncMethod(); // async 함수 실행
    // });

    final inventory = ref.read(inventoryProvider);
    if (inventory is InventoryModel && inventory.data != null) {
      upgradeMine1 = inventory.data!.mines.firstWhere(
        (mine) => mine.id == widget.id,
        orElse: () => inventory.data!.mines.first,
      );
      final filteredMines =
          inventory.data!.mines.where((mine) => mine.id != widget.id).toList();
      upgradeMine2 = filteredMines.firstWhere(
        (mine) => mine.level == upgradeMine1!.level,
        orElse: () => filteredMines.first,
      );
      if (upgradeMine2 != null) {
        ref
            .read(upgradeProvider.notifier)
            .setUpgradeData([widget.id, upgradeMine2!.id]);
      }
    }
  }

  @override
  void dispose() {
    upgradeMine1 = null;
    upgradeMine2 = null;
    upgradeMine = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final upgrade = ref.watch(upgradeProvider);
    final myinfo = ref.watch(myInfoProvider);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          UpgradeTopimgWidget(
            upgradeMine1: upgradeMine1,
            upgradeMine2: upgradeMine2,
          ),
          if (upgrade is UpgradeGetModel)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cost',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ProximaSoft',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Stack(
                  children: [
                    if (myinfo is MyInfoModel)
                      Container(
                        margin: EdgeInsets.only(left: 10.w, top: 2.w),
                        padding: EdgeInsets.only(left: 15.w, right: 5.w),
                        color: Colors.white,
                        child: Mzp(
                          mzp: upgrade.cost,
                          mzpSize: 16,
                          mzpSmallSize: 14,
                          mzpColor: myinfo.balance.gold >= upgrade.cost
                              ? Colors.black
                              : AppColor.darkRed,
                          mzpfontFamily: 'ProximaSoft',
                          fontWeight: FontWeight.w800,
                          mzpSmallColor: myinfo.balance.gold >= upgrade.cost
                              ? AppColor.lightGrey
                              : AppColor.lightRed,
                        ),
                      ),
                    Image.asset(
                      'assets/images/appbar/icn_mzp.png',
                      width: 23.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ],
            ),
          SizedBox(height: 10.w),
          if (upgrade is UpgradeGetModel)
            CustomButton(
              fontSize: 20,
              onPressed: () {
                if (myinfo is MyInfoModel) {
                  if (myinfo.balance.gold >= upgrade.cost) {
                    ref.read(upgradeProvider.notifier).postUpgrade(
                          InventoryIdsModel(
                            ids: [widget.id, upgradeMine2!.id],
                          ),
                        );
                    widget.callback();
                  } else {
                    FToastShow.ftoast(
                      text: 'You do not have enough Gold.',
                      type: 'error',
                    );
                  }
                }
              },
              lienColor: AppColor.darkYellow,
              bgColor: AppColor.lightYellow,
              textColor: Colors.black,
              text: 'Upgrade',
            ),
          if (upgrade is UpgradeMineModel)
            CustomButton(
              fontSize: 20,
              onPressed: () {
                widget.callback();
                Navigator.pop(context);
              },
              lienColor: AppColor.darkYellow,
              bgColor: AppColor.lightYellow,
              textColor: Colors.black,
              text: 'Confirm',
            ),
        ],
      ),
    );
  }
}
