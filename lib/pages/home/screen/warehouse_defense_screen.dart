import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/button_motion/motion_button.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/pages/home/model/defense_model.dart';
import 'package:minewarz_app/pages/home/provider/defense_provider.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/widget/defense/defense_list_widget.dart';
import 'package:minewarz_app/pages/home/widget/defense/revenge_btn_widget.dart';
import 'package:minewarz_app/pages/home/widget/defense/defense_appbar_widget.dart';

class WarehouseDefenseScreen extends ConsumerStatefulWidget {
  const WarehouseDefenseScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WarehouseDefenseScreen> createState() =>
      _WarehouseDefenseScreenState();
}

class _WarehouseDefenseScreenState
    extends ConsumerState<WarehouseDefenseScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(defenseProvider.notifier).setDefensetData();
    });
  }

  void defenseCle(defense) {
    // 창을 닫을 때 읽음 처리
    if (defense is DefenseModel) {
      revengeOpen(defense);
      Navigator.pop(context, true);
      ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
      ref.read(layoutProvider.notifier).setMyAppBar(true);
      ref.read(homeProvider.notifier).reset();
    }
  }

  void revengeOpen(defense) {
    if (defense is DefenseModel) {
      final readedIds = <int>[];
      for (var mine in defense.defenceHistories) {
        if (mine.readed == false) {
          readedIds.add(mine.defenceId);
        }
      }
      ref.read(defenseProvider.notifier).putRead(readedIds);
    }
  }

  @override
  Widget build(BuildContext context) {
    final defense = ref.watch(defenseProvider);
    return LayoutWidget(
      myAppBar: false,
      bottomNavigationBar: false,
      safeAreaIs: false,
      backgroundColor: Colors.transparent,
      backgroundImage: 'assets/images/home/defense/warehouse_defense_bg.png',
      child: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              DefenseAppbarWidget(
                title: 'Warehouse Defense',
                level: defense is DefenseModel ? defense.myDefenceRounds : 1,
              ),
              if (defense is DefenseModel && defense.defenceHistories.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: true,
                  fillOverscroll: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'There are no records.',
                        style: TextStyle(
                          fontFamily: 'Chaloops',
                          fontSize: 20.w,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 100.w,
                      ),
                    ],
                  ),
                ),
              if (defense is DefenseModel &&
                  defense.defenceHistories.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
                    child: Column(
                      children: [
                        Column(
                          children: defense.defenceHistories.map(
                            (e) {
                              return DefenseListWidget(
                                e: e,
                              );
                            },
                          ).toList(),
                        ),
                        SizedBox(
                          height: DeviceHeight().firstBotton(70.w),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
          Positioned(
            bottom: DeviceHeight().fullbackBtn(15.w),
            left: 16.w,
            right: 16.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MotionButton(
                  onPressed: () => defenseCle(defense),
                  child: SvgPicture.asset(
                    'assets/images/common/full_page_back.svg',
                    height: 44.w,
                    width: 44.w,
                  ),
                ),
                SizedBox(
                  width: 11.w,
                ),
                if (defense is DefenseModel &&
                    defense.defenceHistories.isNotEmpty)
                  RevengeBtnWidget(
                    revengeOpen: () => revengeOpen(defense),
                  ),
              ],
            ),
          ),
          // if (defense is DefenseLoading) const LoadingWidget(),
        ],
      ),
    );
  }
}
