import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/common/widget/supertooltip/super_tooltip.dart';

class InventoryTextWidget extends StatefulWidget {
  final num mzp;
  final int slot;
  final int equip;
  final bool lock;
  final bool data;
  const InventoryTextWidget({
    super.key,
    required this.mzp,
    required this.slot,
    required this.equip,
    this.lock = false,
    this.data = true,
  });

  @override
  State<InventoryTextWidget> createState() => _InventoryTextWidgetState();
}

class _InventoryTextWidgetState extends State<InventoryTextWidget> {
  final textTooltop = SuperTooltipController();
  @override
  void dispose() {
    textTooltop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!widget.lock && widget.data)
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Activated mining rights are stored at ',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            height: 1.2,
                            fontSize: 14.w,
                          ),
                        ),
                        TextSpan(
                          text: '22:00',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            fontSize: 14.w,
                          ),
                        ),
                        TextSpan(
                          text: ' and reflected\nat ',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            height: 1.2,
                            fontSize: 14.w,
                          ),
                        ),
                        TextSpan(
                          text: '00:00',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            fontSize: 14.w,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontSize: 14.w,
                            height: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: '\nChanges will not affect today’s settings',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontSize: 14.w,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                // 인벤토리: 점검 중
                if (widget.lock && widget.data)
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Implementing Mining Right settings.\nStatus cannot be changed until ',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            height: 1.2,
                            fontSize: 14.w,
                          ),
                        ),
                        TextSpan(
                          text: '23:00',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.w,
                            height: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightGrey,
                            fontSize: 14.w,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.data)
                  SizedBox(
                    height: 6.w,
                  ),
                if (widget.data)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/home/inventory/icn_mzpw.png',
                        width: 16.w,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'Current MP',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Mzp(
                          mzp: widget.mzp,
                          mzpSize: 14,
                          mzpSmallSize: 12,
                          mzpColor: Colors.white,
                          mzpSmallColor: AppColor.lightGrey,
                          mzpfontFamily: 'ProximaSoft',
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(
                        'assets/images/home/inventory/icn_mzpw1.png',
                        width: 16.w,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'Active mines',
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.w,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                          '${widget.equip}/${widget.slot}',
                          style: const TextStyle(
                            fontFamily: 'ProximaSoft',
                            color: AppColor.lightYellow,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ), //Icn_tip.png
                      SuperTooltip(
                        controller: textTooltop,
                        barrierColor: Colors.black.withOpacity(0),
                        content: Padding(
                          padding: EdgeInsets.all(4.w),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "The number of Mining Rights you can\nactivate is your highest Mining Right level + 1.\nYour highest Mining Right level is ",
                                  style: TextStyle(
                                    fontFamily: 'ProximaSoft',
                                    fontSize: 12.w,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
                                TextSpan(
                                  text: (widget.slot - 1).toString(),
                                  style: TextStyle(
                                    fontFamily: 'ProximaSoft',
                                    fontSize: 12.w,
                                    color: Colors.white,
                                    height: 1.2,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ".",
                                  style: TextStyle(
                                    fontFamily: 'ProximaSoft',
                                    fontSize: 12.w,
                                    color: Colors.white,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/common/icn_tip.png',
                          width: 27.w,
                          height: 27.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                if (!widget.data)
                  Text(
                    'Acquire Mining Rights to take advantage of private mines.\nRight now you only have access to public mines.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      height: 1.2,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
