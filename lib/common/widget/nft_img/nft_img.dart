import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_mov.dart';

class NftImg extends StatefulWidget {
  final String type;
  final String url;
  final Color color;
  final double size;
  final bool movePlay;
  final bool networkImg;
  const NftImg({
    super.key,
    required this.type,
    required this.url,
    this.size = 108,
    this.color = Colors.black,
    this.movePlay = false,
    this.networkImg = true,
  });

  @override
  State<NftImg> createState() => _NftImgState();
}

class _NftImgState extends State<NftImg> {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  bool isHighEndDevice = false; // 고사양 디바이스 여부

  @override
  void initState() {
    super.initState();
    // checkDeviceSpecs();
  }

  Future<void> checkDeviceSpecs() async {
    AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
    // Android 기기의 사양 정보를 확인하고 필요한 조건을 설정합니다.
    // 예를 들어, RAM 용량, CPU 성능 등을 고려할 수 있습니다.
    // 여기에서는 간단한 예제로 Android 버전을 기준으로 고사양 디바이스 여부를 판단합니다.
    if (androidInfo.version.sdkInt >= 26) {
      setState(() {
        isHighEndDevice = true;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == 'IMAGE') {
      return Container(
        width: widget.size.w,
        height: widget.size.w,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(0),
          image: widget.networkImg
              ? DecorationImage(
                  image: NetworkImage(widget.url),
                  fit: BoxFit.contain,
                  onError: (exception, stackTrace) {
                    const SizedBox();
                  },
                )
              : DecorationImage(
                  image: AssetImage(widget.url),
                  fit: BoxFit.contain,
                ),
        ),
        child: widget.networkImg
            ? Image.network(
                widget.url,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return const SizedBox();
                  }
                  return Center(
                    child: loadingProgress.expectedTotalBytes != null
                        ? const LoadingWidget(isPositioned: false)
                        : Container(
                            color: Colors.black,
                          ),
                  );
                },
              )
            : Image.asset(
                widget.url,
                fit: BoxFit.contain,
              ),
      );
    } else {
      // if (isHighEndDevice) {
      //   return const Text(
      //     '고사양 디바이스입니다.',
      //     style: TextStyle(color: Colors.white),
      //   );
      // } else {
      //   return const Text(
      //     '저사양 디바이스입니다.',
      //     style: TextStyle(color: Colors.white),
      //   );
      // }
      return NftMov(
        url: widget.url,
        size: widget.size,
        movePlay: widget.movePlay,
      );
    }
  }
}
