// ignore_for_file: prefer_null_aware_operators

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/map_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_widget.dart';

class MapNotEmpty extends ConsumerStatefulWidget {
  final InventoryMapModel? map;
  const MapNotEmpty({super.key, this.map});

  @override
  ConsumerState<MapNotEmpty> createState() => _MapNotEmptyState();
}

class _MapNotEmptyState extends ConsumerState<MapNotEmpty> {
  List<Map<String, int>> listPositioned = [
    {'left': 25, 'top': 63},
    {'right': 22, 'top': -10},
    {'left': 74, 'top': 186},
    {'right': 45, 'top': 282},
    {'right': 122, 'top': 390},
    {'left': 28, 'top': 506},
    {'right': 25, 'top': 563},
    {'right': 58, 'top': 676},
    {'left': 46, 'top': 776},
    {'right': 35, 'top': 849},
    {'left': 41, 'top': 976},
  ];
  int totalMiningPower = 0; // miningPower의 합 계산

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  void _asyncMethod() async {
    // ref.read(mapProvider.notifier).setMapData();
    // final inventoryServices = ref.read(inventoryServicesProvider); // 인베토리 api
    // await inventoryServices.getInventoryMap(); // 인베토리 리스트 정보 조회 api 호출
    // final map = ref.read(mapProvider);
    if (widget.map is InventoryMapModel) {
      for (var mine in widget.map!.data!.mines) {
        setState(() {
          totalMiningPower += mine.miningPower;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final map = ref.watch(mapProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.w,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Displays today’s mining status set at ',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  height: 1.2,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '00:00',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontSize: 14.w,
                ),
              ),
            ],
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Settings changes at the inventory will be reflected at the\nnext ',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  height: 1.2,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '00:00',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.w,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  fontSize: 14.w,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/home/inventory/icn_mzp.png',
              width: 16.w,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Current MP',
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 14.w,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Mzp(
                mzp: totalMiningPower,
                mzpSize: 14,
                mzpSmallSize: 12,
                mzpColor: Colors.white,
                mzpSmallColor: AppColor.lightGrey,
                mzpfontFamily: 'ProximaSoft',
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              'assets/images/home/inventory/icn_mzp1.png',
              width: 16.w,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              'Active mines',
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 14.w,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            if (map is InventoryMapModel && map.data != null)
              Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text(
                  '${map.data!.mines.length}',
                  style: const TextStyle(
                    fontFamily: 'ProximaSoft',
                    color: AppColor.lightYellow,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          height: 26.w,
        ),
        if (map is InventoryMapModel && map.data != null)
          SizedBox(
            height: 954.w,
            child: Stack(
              clipBehavior: Clip.none,
              children: map.data!.mines.isNotEmpty
                  ? map.data!.mines.asMap().entries.map((entry) {
                      final index = entry.key;
                      return Positioned(
                        top: listPositioned[index]['top']!.w,
                        left: listPositioned[index]['left'] != null
                            ? listPositioned[index]['left']!.w
                            : null,
                        right: listPositioned[index]['right'] != null
                            ? listPositioned[index]['right']!.w
                            : null,
                        child: MiningWidget(
                          level: map.data!.mines[index].level,
                          mp: map.data!.mines[index].miningPower,
                          size: 96,
                        ),
                      );
                    }).toList()
                  : [
                      Positioned(
                        top: listPositioned[0]['top']!.w,
                        left: listPositioned[0]['left'] != null
                            ? listPositioned[0]['left']!.w
                            : null,
                        right: listPositioned[0]['right'] != null
                            ? listPositioned[0]['right']!.w
                            : null,
                        child: const MiningWidget(
                          level: 0,
                          mp: 0,
                          size: 96,
                          ismark: false,
                        ),
                      )
                    ],
              // children: listPositioned.asMap().entries.map((entry) {
              //   final index = entry.key;
              //   if (index >= 0 && index < map.data.mines.length) {
              //     return Positioned(
              //       top: entry.value['top']!.w,
              //       left: entry.value['left'] != null
              //           ? entry.value['left']!.w
              //           : null,
              //       right: entry.value['right'] != null
              //           ? entry.value['right']!.w
              //           : null,
              //       child: MiningWidget(
              //         level: map.data.mines[index].level,
              //         mp: map.data.mines[index].miningPower,
              //         size: 96,
              //       ),
              //     );
              //   } else {
              //     return Positioned(
              //       top: entry.value['top']!.w,
              //       left: entry.value['left'] != null
              //           ? entry.value['left']!.w
              //           : null,
              //       right: entry.value['right'] != null
              //           ? entry.value['right']!.w
              //           : null,
              //       child: const MiningWidget(
              //         size: 96,
              //       ),
              //     );
              //   }
              // }).toList(),
            ),
          ),
      ],
    );
  }
}
