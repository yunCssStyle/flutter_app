import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/guest/modal/guest_modal.dart';

class ZoneBtnWidget extends StatelessWidget {
  final int revengeTargetCount;
  final bool assigned;
  final bool inspection;
  const ZoneBtnWidget({
    super.key,
    required this.revengeTargetCount,
    required this.assigned,
    required this.inspection,
  });

  void defenseOpensCle(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {}
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 43.w,
      left: 16.w,
      right: 16.w,
      child: SizedBox(
        height: 61.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 61.w,
              child: CustomButton(
                onPressed: () {
                  modalContent(
                    title: 'Attack',
                    widget: GuestModal(
                      imgWidget: Image(
                        image:
                            const AssetImage('assets/images/guest/attack.png'),
                        width: 180.w,
                        height: 180.w,
                      ),
                      text: 'Attack other players and loot their stash.',
                    ),
                  );
                },
                isDisabled: !assigned,
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 56.w,
                text: 'Attack',
                bgColor: AppColor.lightYellow,
                lienColor: AppColor.darkYellow,
                textColor: Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 61.w,
              child: CustomButton(
                onPressed: () {
                  modalContent(
                    title: 'Revenge',
                    widget: GuestModal(
                      imgWidget: Image(
                        image:
                            const AssetImage('assets/images/guest/revenge.png'),
                        width: 180.w,
                        height: 180.w,
                      ),
                      text:
                          'Exact revenge against those who dared\nattack you.',
                    ),
                  );
                },
                isDisabled: !assigned,
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 56.w,
                text: 'Revenge',
                bgColor: AppColor.lightRed,
                lienColor: AppColor.lightRed1,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
