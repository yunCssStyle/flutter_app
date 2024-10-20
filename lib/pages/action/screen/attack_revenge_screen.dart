import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_tab.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/action/model/revenge_list_model.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
import 'package:minewarz_app/pages/action/provider/action_provider.dart';
import 'package:minewarz_app/pages/action/provider/revenge_list_provider.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/action/screen/revenge_list_screen.dart';

import 'target_list_screen.dart';

class AttackRevengeScreen extends ConsumerStatefulWidget {
  final bool isLoggedIn;
  const AttackRevengeScreen({
    Key? key,
    required this.isLoggedIn,
  }) : super(key: key);

  @override
  ConsumerState<AttackRevengeScreen> createState() =>
      _AttackRevengeScreenState();
}

class _AttackRevengeScreenState extends ConsumerState<AttackRevengeScreen> {
  bool _isLoggedIn = false;
  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  @override
  void initState() {
    super.initState();
    setState(() {
      _isLoggedIn = widget.isLoggedIn;
    });
  }

  void tabCilck(bool value) {
    if (value) {
    } else {}
    setState(() {
      _isLoggedIn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final targetList = ref.watch(targetListProvider);
    final revengeList = ref.watch(revengeListProvider);
    return LayoutWidget(
      myAppBar: false,
      bottomNavigationBar: false,
      safeAreaIs: false,
      backgroundColor: Colors.transparent,
      backgroundImage: 'assets/images/home/defense/warehouse_defense_bg.png',
      child: Stack(
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
                      ? const RevengeListScreen()
                      : const TargetListScreen(),
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
              text1: 'Attack',
              text2: 'Revenge',
              callback: () {
                ref.read(actionProvider.notifier).setZoneData();
                GoRouter router = GoRouter.of(context);
                router.go('/action');
              },
            ),
          ),
          if (targetList is TargetLoading || revengeList is RevengeLoading)
            const LoadingWidget(),
        ],
      ),
    );
  }
}
