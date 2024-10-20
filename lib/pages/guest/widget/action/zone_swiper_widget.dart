import 'package:card_swiper/card_swiper.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/pages/action/model/action_model.dart';

class ZoneSwiperWidget extends StatefulWidget {
  final ActionModel actionData;
  final Function(int) callback;
  final SwiperController controller;
  const ZoneSwiperWidget(
      {super.key,
      required this.callback,
      required this.actionData,
      required this.controller});

  @override
  State<ZoneSwiperWidget> createState() => _ZoneSwiperWidgetState();
}

class _ZoneSwiperWidgetState extends State<ZoneSwiperWidget> {
  num _huddleMiningPower = 0;
  final zoneName = {
    'PUBLIC_ZONE': 'PUBLIC ZONE',
    'A_ZONE': 'ZONE A',
    'B_ZONE': 'ZONE B',
    'C_ZONE': 'ZONE C',
    'D_ZONE': 'ZONE D',
    'E_ZONE': 'ZONE E',
  };
  var f = NumberFormat('###,###,###,###');
  @override
  void initState() {
    super.initState();
    final zonesHuddle = widget.actionData.zones!
        .firstWhere((zone) => zone.assigned == true, orElse: () {
      return widget.actionData.zones!.first;
    });
    _huddleMiningPower = zonesHuddle.huddleMiningPower;
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      controller: widget.controller,
      viewportFraction: 1, // 전체 슬라이드 아이템 크기
      scale: 1, // 활성화 슬라이드 아이템 크기
      scrollDirection: Axis.horizontal, // 슬라이드 방향
      axisDirection: AxisDirection.left, // 정렬
      pagination: const SwiperPagination(
        alignment: Alignment.bottomCenter, // 페이지네이션 위치
        builder: SwiperPagination.rect, // 세 가지 스타일의 pagination 사용 가능
      ), // 페이지네이션
      // control: SwiperControl(
      //   iconPrevious: Icons.access_alarms_rounded, // 이전 버튼
      //   iconNext: Icons.arrow_forward_ios, // 다음 버튼
      //   color: Colors.black, // 버튼 색상
      //   disableColor: Colors.lightGreenAccent, // 비활성화 버튼 색상
      //   size: 27.0.w, // 버튼 크기
      // ), // 컨트롤 방향 버튼
      loop: false, // 반복
      onIndexChanged: (int idx) {
        widget.callback(idx);
      },
      // autoplay: true, // 자동 슬라이드
      duration: 300, // 속도
      itemCount: widget.actionData.zones!.length, // 슬라이드 개수
      itemBuilder: (BuildContext ctx, int idx) {
        final zoneIdx = widget.actionData.zones![idx];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              zoneName[zoneIdx.zone] ?? 'Unknown Zone',
              style: TextStyle(
                fontFamily: 'Chaloops',
                fontSize: 32.w,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                height: 1.4,
              ),
            ),
            Text(
              zoneIdx.zone == 'PUBLIC_ZONE'
                  ? 'Compete within the Public Zone'
                  : zoneIdx.zone == 'A_ZONE'
                      ? 'MP ${f.format(zoneIdx.huddleMiningPower)} or More'
                      : 'MP ${f.format(zoneIdx.huddleMiningPower)} or More & Top ${f.format(zoneIdx.popRate * 100)}% Rankers',
              style: TextStyle(
                fontFamily: 'Chaloops',
                fontSize: 14.w,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.4,
              ),
            ),
            SizedBox(
              height: 7.w,
            ),
            Container(
              color: Colors.white,
              child: Transform.translate(
                offset: Offset(0, 1.w),
                child: Text(
                  '00:00 ~ 23:30',
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Container(
              height: 394.w,
              width: 375.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/action/zone/${zoneIdx.zone}${_huddleMiningPower < zoneIdx.huddleMiningPower ? '_lock' : ''}.png',
                  ),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  if (zoneIdx.assigned)
                    Positioned(
                      top: 59.w,
                      width: 375.w,
                      child: DotLottieLoader.fromAsset(
                        "assets/images/action/lottie/zone_character.lottie",
                        frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                          if (dotlottie != null) {
                            return Lottie.memory(
                              width: 375.w,
                              dotlottie.animations.values.single,
                              fit: BoxFit.fitWidth,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
