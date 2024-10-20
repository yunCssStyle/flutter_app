import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/profile/provider/profile_list_provider.dart';

class ChangePioneerModal extends ConsumerStatefulWidget {
  final int id;
  final Function callback;
  const ChangePioneerModal(
      {super.key, required this.id, required this.callback});

  @override
  ConsumerState<ChangePioneerModal> createState() => _ChangePioneerModalState();
}

class _ChangePioneerModalState extends ConsumerState<ChangePioneerModal> {
  bool isEquipped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Would you like to change pioneers?',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 52.h),
              Image(
                width: 103.w,
                fit: BoxFit.fitWidth,
                image: const AssetImage(
                  'assets/images/profile/change_pioneer_img.png',
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            CustomButton(
              text: 'Confirm',
              bgColor: AppColor.lightYellow,
              lienColor: AppColor.darkYellow,
              height: 50.h,
              fontSize: 20,
              textColor: Colors.black,
              onPressed: () async {
                setState(() {
                  isEquipped = true;
                });
                final equipped = await ref
                    .read(profileListProvider.notifier)
                    .equipped(widget.id); //리스트상태 값 장착된 리스트로 변경
                widget.callback(); // 부모 위젯 버튼 삭제 콜백
                if (equipped) {
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context); // 모달창 닫기
                }
                // Navigator.pop(context); // 모달창 닫기
              },
            ),
            if (isEquipped) const LoadingWidget(),
          ],
        ),
      ],
    );
  }
}
