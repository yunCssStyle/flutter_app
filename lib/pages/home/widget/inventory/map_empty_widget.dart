import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/map_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/mining_widget.dart';

class MapEmpty extends ConsumerStatefulWidget {
  const MapEmpty({super.key});

  @override
  ConsumerState<MapEmpty> createState() => _MapEmptyState();
}

class _MapEmptyState extends ConsumerState<MapEmpty> {
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
                text:
                    'Acquire Mining Rights to take advantage of private mines.\nRight now you only have access to public mines.',
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  color: Colors.black,
                  height: 1.2,
                  fontSize: 14.w,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60.w,
        ),
        if (map is InventoryMapModel)
          SizedBox(
            height: 954.w,
            child: Stack(children: [
              Positioned(
                left: 25.w,
                top: 73.w,
                child: const MiningWidget(
                  size: 96,
                  ismark: false,
                  equipped: true,
                ),
              )
            ]),
          ),
      ],
    );
  }
}
