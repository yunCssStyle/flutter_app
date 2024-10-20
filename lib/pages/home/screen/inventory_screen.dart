import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_tab.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';
import 'package:minewarz_app/pages/home/provider/inventory_provider.dart';
import 'package:minewarz_app/pages/home/provider/map_provider.dart';
import 'package:minewarz_app/pages/home/screen/inventory_view_screen.dart';
import 'package:minewarz_app/pages/home/screen/map_view_screen.dart';

class InvertoryScreen extends ConsumerStatefulWidget {
  const InvertoryScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<InvertoryScreen> createState() => _InvertoryScreenState();
}

class _InvertoryScreenState extends ConsumerState<InvertoryScreen> {
  bool _isLoggedIn = false;
  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  void tabCilck(bool value) {
    if (value) {
      ref.read(mapProvider.notifier).setMapData();
    }
    setState(() {
      _isLoggedIn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    final inventory = ref.watch(inventoryProvider);
    return LayoutWidget(
      myAppBar: false,
      bottomNavigationBar: false,
      safeAreaIs: false,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Expanded(
                child: PageTransitionSwitcher(
                  reverse: !_isLoggedIn,
                  transitionBuilder: (
                    Widget child,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                  ) {
                    return SharedAxisTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: _transitionType,
                      fillColor: Colors.transparent,
                      child: child,
                    );
                  },
                  child: _isLoggedIn
                      ? const MapViewScreen()
                      : const InvertoryViewScreen(),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FullPageTab(
              isShowTab: _isLoggedIn,
              tabAction: tabCilck,
              text1: 'Items',
              text2: 'Map',
              isLock2: home is HomeModel ? !home.isDivision : false,
              callback: () {
                // 창을 닫을 때 읽음 처리
                if (inventory is InventoryModel && inventory.data != null) {
                  final readedIds = <int>[];
                  for (var mine in inventory.data!.mines) {
                    if (mine.readed == false) {
                      readedIds.add(mine.id);
                    }
                  }
                  ref.read(inventoryProvider.notifier).putRead(
                        read: InventoryIdsModel(ids: readedIds),
                        ticketRead: inventory.data!.ticket.readed,
                      );
                  ref.read(homeProvider.notifier).reset();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
