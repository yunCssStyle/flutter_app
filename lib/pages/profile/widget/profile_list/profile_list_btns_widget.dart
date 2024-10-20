import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/profile/modal/change_pioneer_modal.dart';
import 'package:minewarz_app/pages/profile/modal/pioneer_details_modal.dart';
import 'package:minewarz_app/pages/profile/modal/unequip_pioneer_modal.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';

class ProfileListBtnsWidget extends StatelessWidget {
  final int index;
  final int length;
  final PioneerModel profileIndex;
  final Function(int, int) callback;
  const ProfileListBtnsWidget({
    super.key,
    required this.index,
    required this.length,
    required this.profileIndex,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 장착되지 않은 경우 Equip 버튼 출력
        if (!profileIndex.equipped)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () {
              modalContent(
                title: 'Change Pioneer',
                widget: ChangePioneerModal(
                  id: profileIndex.id,
                  callback: () {
                    callback(index, length);
                  },
                ),
              );
            },
            lienColor: AppColor.lightYellow1,
            bgColor: AppColor.lightYellow,
            textColor: Colors.black,
            text: 'Equip',
          ),
        if (!profileIndex.equipped)
          SizedBox(
            height: 8.w,
          ),
        // 장착된 경우 Unequip 버튼 출력
        if (profileIndex.equipped)
          CustomButton(
            width: 110.w,
            height: 46.w,
            fontSize: 16,
            onPressed: () {
              modalContent(
                title: 'unequip Pioneer',
                widget: UnequipPioneerModal(
                  id: profileIndex.id,
                  callback: () {
                    callback(index, length);
                  },
                ),
              );
            },
            lienColor: AppColor.lightBule1,
            bgColor: AppColor.darkBule,
            text: 'Unequip',
          ),
        if (profileIndex.equipped)
          SizedBox(
            height: 8.w,
          ),
        // 기본 Details 버튼 출력
        CustomButton(
          width: 110.w,
          height: 46.w,
          fontSize: 16,
          onPressed: () {
            modalContent(
              title: 'Pioneer Details',
              widget: PioneerDetailsModal(
                id: profileIndex.id,
              ),
            );
          },
          lienColor: AppColor.lightSky,
          bgColor: AppColor.darkSky,
          textColor: Colors.black,
          text: 'Details',
        ),
      ],
    );
  }
}
