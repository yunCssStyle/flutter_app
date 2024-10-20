import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/full_page/default_appbar.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/map_provider.dart';
import 'package:minewarz_app/pages/home/widget/inventory/map_empty_widget.dart';
import 'package:minewarz_app/pages/home/widget/inventory/map_notempty_widget.dart';
import 'package:simple_animations/simple_animations.dart';

class MapViewScreen extends ConsumerStatefulWidget {
  const MapViewScreen({super.key});

  @override
  ConsumerState<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends ConsumerState<MapViewScreen> {
  final ScrollController _controller = ScrollController();
  bool _showButton = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset > 200) {
        setState(() {
          _showButton = true;
        });
      } else {
        setState(() {
          _showButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final map = ref.watch(mapProvider);
    return Stack(children: [
      CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          const DefaultAppbar(
            title: 'Overview',
            topBg: 'assets/images/home/inventory/top_bg.png',
          ),
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: Offset(0, -20.w),
              child: Container(
                height: 1280.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image:
                        AssetImage('assets/images/home/inventory/map_bg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (map is InventoryMapModel && map.data != null)
                      MapNotEmpty(
                        map: map,
                      ),
                    if (map is InventoryMapModel && map.data == null)
                      const MapEmpty()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      if (!_showButton)
        Positioned(
          bottom: 100.w,
          right: 0,
          left: 0,
          child: Center(
            child: LoopAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, 10 * value),
                  child: Image.asset(
                    'assets/images/home/inventory/scroll_icon.png',
                    width: 30.w,
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
              // optional parameters
              curve: Curves.easeInOut,
            ),
          ),
        ),
      if (map is InventoryLoading) const LoadingWidget()
    ]);
  }
}
