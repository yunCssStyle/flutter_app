import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';

class CartWidget extends ConsumerStatefulWidget {
  final int level;
  final num nextTransportTime; // 다음 운송시간
  final num previousTransportTime; // 이전 운송시간
  final int nowDateTime; // 현재시간
  final Function callback;
  const CartWidget({
    super.key,
    required this.level,
    required this.nextTransportTime,
    required this.previousTransportTime,
    required this.nowDateTime,
    required this.callback,
  });

  @override
  ConsumerState<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends ConsumerState<CartWidget> {
  late int percent = 0; // 이미지 갯수
  late int timerPercent = 0; // 한칸의 시간
  late num miningTime = 0; // 남은 시간
  late num transportTime = 0; // 이번 수송 시간
  late num previous = 0; // 지나간 시간
  late num level = 0;
  bool isMining = false;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    setdata();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startTimer();
    });
  }

  void setdata() {
    final timerPercents =
        widget.nextTransportTime - widget.previousTransportTime;
    previous = widget.nowDateTime - widget.previousTransportTime;
    miningTime = widget.nextTransportTime - widget.nowDateTime;
    transportTime = timerPercents;
    timerPercent = timerPercents ~/ 25;
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      myFunction();
    });
  }

  void myFunction() async {
    if (miningTime > 0) {
      isMining = true;
      miningTime -= 1;
      percent = ((transportTime - miningTime) / timerPercent).floor() + 1;
      setState(() {});
    } else {
      stopTimer();
      widget.callback();
      await Future.delayed(const Duration(milliseconds: 3500));
    }
  }

  stopTimer() async {
    _timer.cancel();
  }

  @override
  void didUpdateWidget(covariant CartWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.nowDateTime != widget.nowDateTime) {
      setState(() {
        setdata();
      });
    }
  }

  @override
  void dispose() {
    isMining = false;
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(10.w, 0),
      child: Stack(
        children: [
          Row(
            children: List.generate(
              5,
              (index) {
                return Row(
                  children: [
                    if (index != 0)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 6.w,
                        height: 5.98.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                            image: AssetImage(
                                'assets/images/home/cart/cart_add_icon.png'), // 배경 이미지
                          ),
                        ),
                      ),
                    Container(
                      width: 35.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          alignment: Alignment.center,
                          image: AssetImage(
                            index == 0
                                ? 'assets/images/home/cart/cart${widget.level}_${percent > 5 ? 5.toString() : percent.toString()}.png'
                                : index == 1
                                    ? 'assets/images/home/cart/cart${widget.level}_${percent > 10 ? 5.toString() : percent > 5 ? (percent - 5).toString() : 0.toString()}.png'
                                    : index == 2
                                        ? 'assets/images/home/cart/cart${widget.level}_${percent > 15 ? 5.toString() : percent > 10 ? (percent - 10).toString() : 0.toString()}.png'
                                        : index == 3
                                            ? 'assets/images/home/cart/cart${widget.level}_${percent > 20 ? 5.toString() : percent > 15 ? (percent - 15).toString() : 0.toString()}.png'
                                            : 'assets/images/home/cart/cart${widget.level}_${percent > 25 ? 5.toString() : percent > 20 ? (percent - 20).toString() : 0.toString()}.png',
                          ), // 배경 이미지
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          if (!isMining) const LoadingWidget()
        ],
      ),
    );
  }
}
