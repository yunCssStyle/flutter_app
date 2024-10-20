import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FullPageLayout extends ConsumerWidget {
  const FullPageLayout({
    super.key,
    this.child,
    this.backPressed = false,
  });

  final Widget? child;
  final bool backPressed;

  // Future<void> _onBackPressed(BuildContext context, WidgetRef ref) async {
  //   Navigator.pop(context, true);
  //   ref.read(layoutProvider.notifier).setBottomNavigationBar(true);
  //   ref.read(layoutProvider.notifier).setMyAppBar(true);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      // onPopInvoked: (didPop) async {
      //   if (backPressed) {
      //     await _onBackPressed(context, ref);
      //   }
      // },
      // onWillPop: () async {
      //   if (backPressed) {
      //     await _onBackPressed(context, ref);
      //   }
      //   return false;
      // },
      child: Scaffold(
        body: child,
      ),
    );
  }
}
