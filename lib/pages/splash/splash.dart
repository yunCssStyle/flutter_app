import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const LayoutWidget(
      myAppBar: false,
      bottomNavigationBar: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
