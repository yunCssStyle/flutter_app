import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';

class MzSlider extends StatefulWidget {
  final double value;
  final double max;
  final Function onChanged;
  final Color inactiveColor;
  final Color activeColor;
  final String imgPath;
  const MzSlider({
    super.key,
    required this.value,
    required this.max,
    required this.onChanged,
    this.inactiveColor = AppColor.lightBule1,
    this.activeColor = AppColor.darkBule,
    this.imgPath = 'assets/images/common/nav_profile_on.png',
  });

  @override
  State<MzSlider> createState() => _MzSliderState();
}

class _MzSliderState extends State<MzSlider> {
  ui.Image? _sliderThumbImage;

  @override
  void initState() {
    super.initState();
    _loadSliderThumbImage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.transparent,
      ),
      clipBehavior: Clip.hardEdge,
      child: _sliderThumbImage != null
          ? SliderTheme(
              data: SliderThemeData(
                trackHeight: 8.h,
                inactiveTrackColor: widget.inactiveColor,
                activeTrackColor: widget.activeColor,
                thumbShape: SliderThumbImage(_sliderThumbImage!, 40.w),
              ),
              child: Slider(
                value: widget.value,
                max: widget.max,
                onChanged: (double value) {
                  widget.onChanged(value);
                },
              ),
            )
          : const CircularProgressIndicator(),
    );
  }

  void _loadSliderThumbImage() async {
    const imageProvider = AssetImage('assets/images/common/mzslider.png');
    final ImageStream stream = imageProvider.resolve(ImageConfiguration.empty);
    final listener =
        ImageStreamListener((ImageInfo info, bool synchronousCall) {
      setState(() {
        _sliderThumbImage = info.image;
      });
    });
    stream.addListener(listener);
  }
}

class SliderThumbImage extends SliderComponentShape {
  final ui.Image image;
  final double desiredWidth;

  SliderThumbImage(this.image, this.desiredWidth);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(desiredWidth, image.height.toDouble());
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    final double aspectRatio = image.width / image.height;
    final double desiredHeight = desiredWidth / aspectRatio;

    Offset imageOffset = Offset(
      center.dx - (desiredWidth / 2),
      center.dy - (desiredHeight / 2),
    );

    Rect srcRect =
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble());
    Rect destRect = Rect.fromLTWH(
        imageOffset.dx, imageOffset.dy, desiredWidth, desiredHeight);

    Paint paint = Paint()..filterQuality = FilterQuality.high;

    canvas.drawImageRect(image, srcRect, destRect, paint);
  }
}
