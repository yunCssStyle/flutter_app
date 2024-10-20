import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:video_player/video_player.dart';

class NftMov extends StatefulWidget {
  final String url;
  final double size;
  final bool movePlay;
  const NftMov({
    super.key,
    required this.url,
    this.size = 108,
    this.movePlay = false,
  });

  @override
  State<NftMov> createState() => _NftMovState();
}

class _NftMovState extends State<NftMov> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.url.toString()))
          ..initialize().then(
            (_) {
              if (widget.movePlay) {
                _controller.play();
                _controller.setVolume(0);
                _controller.setLooping(true);
              } else {
                // _controller.seekTo(const Duration(seconds: 5));
              }
              setState(() {});
            },
          ).catchError((error) {
            // print(error);
          });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.w,
      child: _controller.value.hasError
          ? Container(
              color: Colors.black,
              width: widget.size.w,
              height: widget.size.w,
            )
          : Container(
              color: Colors.black,
              width: widget.size.w,
              child: _controller.value.isInitialized
                  ? Center(
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    )
                  : const LoadingWidget(isPositioned: false),
            ),
    );
  }
}
