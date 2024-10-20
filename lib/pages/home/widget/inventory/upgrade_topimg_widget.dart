import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_widget.dart';

class UpgradeTopimgWidget extends ConsumerWidget {
  final MinesListModel? upgradeMine1;
  final MinesListModel? upgradeMine2;
  const UpgradeTopimgWidget({super.key, this.upgradeMine1, this.upgradeMine2});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upgrade = ref.watch(upgradeProvider);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (upgrade is UpgradeGetModel)
            Padding(
              padding: EdgeInsets.only(top: 20.w, bottom: 20.w),
              child: Text(
                'Merge 2 Mining Rights to upgrade.',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProximaSoft',
                  fontSize: 14.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          if (upgrade is UpgradeMineModel)
            Padding(
              padding: EdgeInsets.only(top: 20.w, bottom: 20.w),
              child: Text(
                'Mining Rights have been merged.',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProximaSoft',
                  fontSize: 14.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (upgradeMine1 != null)
                Opacity(
                  opacity: upgrade is UpgradeMineModel ? 1 : 0.5,
                  child: MiningWidget(
                    equipped: upgradeMine1!.active,
                    equippedSize: 20,
                    level: upgradeMine1!.level,
                    mp: upgradeMine1!.miningPower,
                    size: 80,
                    levelSize: 34,
                    mpSize: 10,
                    upgrade: true,
                    upgradeSize: 16,
                    disabled: false,
                  ),
                ),
              SizedBox(
                width: 10.w,
              ),
              Opacity(
                opacity: upgrade is UpgradeMineModel ? 1 : 0.5,
                child: Image.asset(
                  'assets/images/home/inventory/upgrade_icon.png',
                  width: 16.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              if (upgradeMine2 != null)
                Opacity(
                  opacity: upgrade is UpgradeMineModel ? 1 : 0.5,
                  child: MiningWidget(
                    equipped: upgradeMine2!.active,
                    equippedSize: 20,
                    level: upgradeMine2!.level,
                    mp: upgradeMine2!.miningPower,
                    size: 80,
                    levelSize: 34,
                    mpSize: 10,
                    upgrade: true,
                    upgradeSize: 16,
                    disabled: false,
                  ),
                ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 170.w,
              ),
              Positioned(
                top: 40.w,
                left: 0,
                right: 0,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: 360.w,
                    ),
                    if (upgrade is UpgradeMineModel)
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: -90.w,
                        child: DotLottieLoader.fromAsset(
                          "assets/images/common/lottie/box_ani.lottie",
                          frameBuilder:
                              (BuildContext ctx, DotLottie? dotlottie) {
                            if (dotlottie != null) {
                              return Lottie.memory(
                                width: 234.w,
                                dotlottie.animations.values.single,
                                fit: BoxFit.fitWidth,
                              );
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ),
                    if (upgrade is UpgradeMineModel)
                      Center(
                        child: MiningWidget(
                          level: upgrade.level,
                          mp: upgrade.miningPower,
                          equipped: upgrade.active,
                          gauge: upgrade.energy,
                          size: 128,
                          color: Colors.black,
                          mpSize: 16,
                          levelSize: 60,
                          gaugeHeight: 8,
                          upgrade: true,
                          upgradeSize: 26,
                          stringSize: 4,
                          stringColor: 4,
                        ),
                      ),
                    if (upgrade is UpgradeGetModel)
                      Center(
                        child: MiningWidget(
                          level: upgrade.upgradeMine.level,
                          mp: upgrade.upgradeMine.miningPower,
                          equipped: upgrade.upgradeMine.active,
                          gauge: upgrade.upgradeMine.energy,
                          size: 128,
                          color: AppColor.darkGrey1,
                          mpSize: 16,
                          levelSize: 60,
                          gaugeHeight: 8,
                          upgrade: true,
                          upgradeSize: 26,
                          disabled: false,
                          stringSize: 4,
                          stringColor: 4,
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                child: Center(
                  child: Image.asset(
                    'assets/images/home/inventory/upgrade_icn.png',
                    width: 36.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              if (upgrade is UpgradeLoading)
                Positioned(
                  top: 40.w,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: 150.w,
                    height: 150.w,
                    child: Center(
                      child: Container(
                        width: 150.w,
                        height: 150.w,
                        color: Colors.black.withOpacity(0.8),
                        child: const LoadingWidget(isPositioned: false),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 35.w,
          ),
          if (upgrade is UpgradeMineModel)
            Container(
              color: Colors.black,
              padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 4.w),
              child: Text(
                'LV ${upgrade.level}',
                style: TextStyle(
                  color: AppColor.lightYellow,
                  fontFamily: 'Chaloops',
                  fontSize: 24.w,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            )
        ],
      ),
    );
  }
}
