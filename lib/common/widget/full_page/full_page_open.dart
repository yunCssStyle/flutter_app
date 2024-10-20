import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/provider/layout.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class FullPageOpen extends ConsumerWidget {
  const FullPageOpen(
      {super.key,
      required this.openContainer,
      this.height,
      this.child,
      this.isProvider = true});

  final VoidCallback openContainer;
  final double? height;
  final Widget? child;
  final bool isProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: GestureDetector(
        // splashColor: Colors.transparent,
        onTap: () async {
          ProviderContainer container = ProviderScope.containerOf(context);
          container.read(soundsProvider.notifier).cilckSound();
          openContainer();
          if (isProvider) {
            ref.read(layoutProvider.notifier).setBottomNavigationBar(false);
            ref.read(layoutProvider.notifier).setMyAppBar(false);
            // await Future.delayed(const Duration(microseconds: 20000));
          }
        },
        child: child,
      ),
    );
  }
}
