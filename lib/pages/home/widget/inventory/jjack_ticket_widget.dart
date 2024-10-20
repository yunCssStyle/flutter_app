import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';

class JjackTicketWidget extends StatefulWidget {
  final int count;
  final bool lock;
  const JjackTicketWidget({
    super.key,
    required this.count,
    this.lock = false,
  });

  @override
  State<JjackTicketWidget> createState() => _JjackTicketWidgetState();
}

class _JjackTicketWidgetState extends State<JjackTicketWidget> {
  final jjackTicketTooltop = SuperTooltipController();
  bool isTooltop = false;
  @override
  void dispose() {
    jjackTicketTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 120.w,
      color: Colors.black,
      padding: EdgeInsets.all(3.w),
      child: SuperTooltip(
        verticalOffset: 65.w,
        showBarrier: true,
        controller: jjackTicketTooltop,
        isTooltip: false,
        barrierColor: Colors.black.withOpacity(0),
        content: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 110.w,
              margin: EdgeInsets.only(top: 9.w),
              decoration: const ShapeDecoration(
                color: Colors.black,
                shadows: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 0,
                    spreadRadius: 0,
                    color: Colors.black,
                  ),
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
              ),
              child: SizedBox(
                height: 82.w,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        height: 2.w,
                        color: AppColor.lightBule,
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.all(6),
                          color: AppColor.darkBule,
                          child: Center(
                            child: Text(
                              'This is a JJACKShot ticket. It will be updated.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'ProximaSoft',
                                  fontSize: 12.w,
                                  height: 1.2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset(
              'assets/images/home/transport/tail.png',
              width: 15.w,
              height: 11.w,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image.asset('assets/images/home/inventory/jjack_ticket.png'),
            const Center(
              child: Text('Banner', style: TextStyle(fontSize: 18.0)),
            ),
            Positioned(
              left: 2.w,
              top: 2.w,
              child: Image.asset(
                'assets/images/common/icn_tip.png',
                width: 27.w,
                height: 27.w,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0),
                child: Text(
                  '${widget.count.toString()} ',
                  style: TextStyle(
                      fontSize: 13.w,
                      fontFamily: 'Chaloops',
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            if (widget.lock)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Container(
                  color: Colors.black.withOpacity(0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    width: 32.w,
                    fit: BoxFit.fitWidth,
                    'assets/images/home/transport/lock.png',
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
