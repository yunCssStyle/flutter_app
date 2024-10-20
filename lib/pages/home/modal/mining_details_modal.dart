import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_details_widget.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_widget.dart';

class MiningDetailsModal extends ConsumerStatefulWidget {
  final int id;
  const MiningDetailsModal({super.key, required this.id});

  @override
  ConsumerState<MiningDetailsModal> createState() => _MiningDetailsModalState();
}

class _MiningDetailsModalState extends ConsumerState<MiningDetailsModal> {
  late MinesListModel mineWithId1 = MinesListModel(
    id: 0,
    level: 0,
    miningPower: 0,
    readed: false,
    active: false,
    locked: false,
    energy: 0,
  );
  late bool levelUpgrade = false;

  @override
  Widget build(BuildContext context) {
    final inventory = ref.watch(inventoryProvider);
    if (inventory is InventoryModel && inventory.data != null) {
      mineWithId1 = inventory.data!.mines.firstWhere(
        (mine) => mine.id == widget.id,
        orElse: () => inventory.data!.mines.first,
      );
      setState(() {
        levelUpgrade = inventory.data!.mines
            .any((element) => element.isLevel(mineWithId1));
      });
    }
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.w, bottom: 20.w),
            child: Text(
              'Miner Information',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProximaSoft',
                fontSize: 18.w,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (inventory is InventoryModel && inventory.data != null)
            MiningWidget(
              level: mineWithId1.level,
              levelSize: 59,
              size: 128,
              mp: mineWithId1.miningPower,
              mpSize: 20,
              equipped: mineWithId1.active,
              equippedSize: 38,
              gaugeHeight: 10,
              gauge: mineWithId1.energy,
              stringSize: 4.4,
              stringColor: 6,
              upgrade: levelUpgrade,
              upgradeSize: 29,
            ),
          SizedBox(
            height: 15.w,
          ),
          MiningDetailsWidget(mineWithId: mineWithId1),
          if (mineWithId1.energy == -1)
            Transform.translate(
              offset: Offset(0, -54.w),
              child: SizedBox(
                width: 302.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 26.w,
                        ),
                        Image.asset(
                            'assets/images/home/inventory/event_label.png',
                            width: 38.w,
                            fit: BoxFit.fitWidth),
                      ],
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Container(
                      width: 302.w,
                      transformAlignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/home/inventory/event_bg.png'),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 18.w, bottom: 9.w),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Use Mining Rights to hire capable miners.\nWorking miners will consume energy.\nBut don’t fret!\nMiners won’t get tired until the next update!',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            fontSize: 14.w,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
