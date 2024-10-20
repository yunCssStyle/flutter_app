import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
export 'full_page_open.dart';
export 'full_page_layout.dart';
export 'full_page_back.dart';

class FullPage extends StatefulWidget {
  const FullPage({
    super.key,
    required this.closedBuilder,
    required this.transitionType,
    required this.onClosed,
    required this.child,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool?> onClosed;
  final Widget child;

  @override
  State<FullPage> createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: widget.transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return widget.child;
      },
      onClosed: widget.onClosed,
      tappable: false,
      closedBuilder: widget.closedBuilder,
      closedColor: Colors.transparent,
      closedElevation: 0.0,
    );
  }
}
