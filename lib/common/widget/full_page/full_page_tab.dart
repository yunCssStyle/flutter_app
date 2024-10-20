import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/utils/device_height.dart';

import 'full_page_back.dart';

enum ColorType { brown, gray }

class FullPageTab extends ConsumerWidget {
  final bool isShowTab;
  final Function(bool) tabAction;
  final String text1;
  final String text2;
  final ColorType colorType;
  final bool isLock1;
  final bool isLock2;
  final Function? callback;
  const FullPageTab(
      {super.key,
      required this.isShowTab,
      required this.tabAction,
      required this.text1,
      required this.text2,
      this.colorType = ColorType.gray,
      this.isLock1 = false,
      this.isLock2 = false,
      this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgLeft = [
      'assets/images/common/full_page_lbtn_gray.png',
      'assets/images/common/full_page_lbtn.png'
    ];
    final imgRight = [
      'assets/images/common/full_page_rbtn_gray.png',
      'assets/images/common/full_page_rbtn.png'
    ];
    final onBtnColorbg = colorType == ColorType.gray
        ? const Color(0xff2C2727)
        : const Color(0xFFAE4B03);
    final offBtnColorbg = colorType == ColorType.gray
        ? const Color(0xff1E1C1C)
        : const Color(0xFF8C410B);
    final borderColor =
        colorType == ColorType.gray ? Colors.black : const Color(0xFF702F00);
    final textColor = colorType == ColorType.gray
        ? const Color(0xFF514B4B)
        : const Color(0xFFEB7739);
    return Container(
      height: colorType == ColorType.gray
          ? DeviceHeight().tabHeight(66.w)
          : DeviceHeight().tabHeight(90.w),
      padding: EdgeInsets.only(top: colorType == ColorType.gray ? 0 : 24.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage(colorType == ColorType.gray
              ? 'assets/images/home/transport/bottom_bg_gray.png'
              : 'assets/images/home/transport/bottom_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 82.w,
          ),
          Positioned(
            top: !isShowTab ? 9.w : 0,
            right: 0,
            width: !isShowTab
                ? MediaQuery.of(context).size.width / 2 - 30
                : MediaQuery.of(context).size.width / 2 + 30,
            height: !isShowTab ? 73.w : 82.w,
            child: GestureDetector(
              onTap: () {
                if (!isLock2) {
                  ref.read(soundsProvider.notifier).cilckSound();
                  tabAction(true);
                }
              },
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (isShowTab)
                      Image(
                        image: AssetImage(
                            imgRight[colorType == ColorType.gray ? 0 : 1]),
                      ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: !isShowTab ? offBtnColorbg : onBtnColorbg,
                          border: Border(
                            top: BorderSide(
                              color: !isShowTab ? borderColor : Colors.black,
                              width: 4.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: !isShowTab ? 10.w : 14.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                text2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: !isShowTab ? 20.w : 20.w,
                                  height: 1.2,
                                  color: !isShowTab ? textColor : Colors.white,
                                  fontFamily: 'Chaloops',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (isLock2)
                                Padding(
                                  padding: EdgeInsets.only(left: 6.w),
                                  child: Image(
                                    width: 15.w,
                                    image: const AssetImage(
                                        'assets/images/home/transport/bottom_lock.png'),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: isShowTab ? 9.w : 0,
            width: isShowTab
                ? MediaQuery.of(context).size.width / 2 - 30
                : MediaQuery.of(context).size.width / 2 + 30,
            height: isShowTab ? 73.w : 82.w,
            child: GestureDetector(
              onTap: () {
                if (!isLock1) {
                  ref.read(soundsProvider.notifier).cilckSound();
                  tabAction(false);
                }
              },
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: isShowTab ? offBtnColorbg : onBtnColorbg,
                          border: Border(
                            top: BorderSide(
                              color: isShowTab ? borderColor : Colors.black,
                              width: 4.w,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: isShowTab ? 10.w : 14.w),
                          child: Transform.translate(
                            offset: Offset(30.w, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: isShowTab ? 20.w : 20.w,
                                    height: 1.2,
                                    color: isShowTab ? textColor : Colors.white,
                                    fontFamily: 'Chaloops',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                if (isLock1)
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.w),
                                    child: Image(
                                      width: 15.w,
                                      image: const AssetImage(
                                          'assets/images/home/transport/bottom_lock.png'),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (!isShowTab)
                      Image(
                        image: AssetImage(
                            imgLeft[colorType == ColorType.gray ? 0 : 1]),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: DeviceHeight().fullbackBtn(8.w),
            left: 16.w,
            child: FullPageBack(
              callback: callback,
            ),
          )
        ],
      ),
    );
  }
}
