import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

import 'animation_controller_state.dart';

/// A widget to show a "3D" pushable button
class MotionButton extends StatefulWidget {
  const MotionButton({
    Key? key,
    this.child,
    this.onPressed,
    this.elevation = 16.0,
    this.scale = 0.3,
  }) : super(key: key);

  /// child widget (normally a Text or Icon)
  final Widget? child;
  final double elevation;
  final double scale;

  /// button pressed callback
  final VoidCallback? onPressed;

  @override
  // ignore: library_private_types_in_public_api
  _MotionButtonState createState() =>
      // ignore: no_logic_in_create_state
      _MotionButtonState(const Duration(milliseconds: 0));
}

class _MotionButtonState extends AnimationControllerState<MotionButton> {
  _MotionButtonState(Duration duration) : super(duration);

  bool _isDragInProgress = false;
  Offset _gestureLocation = Offset.zero;
  bool clicked = true;

  void _handleTapDown(TapDownDetails details) async {
    ProviderContainer container = ProviderScope.containerOf(context);
    container.read(soundsProvider.notifier).cilckSound();
    _gestureLocation = details.localPosition;
    animationController.forward();
  }

  void _handleTapUp(TapUpDetails details) async {
    animationController.reverse();
    if (clicked) {
      clicked = false;
      widget.onPressed?.call();
      await Future.delayed(const Duration(milliseconds: 500));
      clicked = true;
    }
  }

  void _handleTapCancel() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!_isDragInProgress && mounted) {
        animationController.reverse();
      }
    });
  }

  void _handleDragStart(DragStartDetails details) {
    _gestureLocation = details.localPosition;
    _isDragInProgress = true;
    animationController.forward();
  }

  void _handleDragEnd(Size buttonSize) {
    if (_isDragInProgress) {
      _isDragInProgress = false;
      animationController.reverse();
    }
    if (_gestureLocation.dx >= 0 &&
        _gestureLocation.dy < buttonSize.width &&
        _gestureLocation.dy >= 0 &&
        _gestureLocation.dy < buttonSize.height) {
      widget.onPressed?.call();
    }
  }

  void _handleDragCancel() {
    if (_isDragInProgress) {
      _isDragInProgress = false;
      animationController.reverse();
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _gestureLocation = details.localPosition;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final buttonSize = Size(constraints.maxWidth, constraints.maxHeight);
          return GestureDetector(
            onTapDown: _handleTapDown,
            onTapUp: _handleTapUp,
            onTapCancel: _handleTapCancel,
            onHorizontalDragStart: _handleDragStart,
            onHorizontalDragEnd: (_) => _handleDragEnd(buttonSize),
            onHorizontalDragCancel: _handleDragCancel,
            onHorizontalDragUpdate: _handleDragUpdate,
            onVerticalDragStart: _handleDragStart,
            onVerticalDragEnd: (_) => _handleDragEnd(buttonSize),
            onVerticalDragCancel: _handleDragCancel,
            onVerticalDragUpdate: _handleDragUpdate,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: 1.0 + animationController.value * widget.scale,
                  child: Container(
                    child: widget.child,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
