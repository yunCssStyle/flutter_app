import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/login/model/account_model.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountModal extends ConsumerStatefulWidget {
  final String type;
  final BlockedDetailsModel? blockedDetails;
  const AccountModal({super.key, required this.type, this.blockedDetails});

  @override
  ConsumerState<AccountModal> createState() => _AccountModalState();
}

class _AccountModalState extends ConsumerState<AccountModal> {
  bool isEquipped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
            //account_deleted.png
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 16.w,
                  fit: BoxFit.fitWidth,
                  image: const AssetImage(
                      'assets/images/login/component_icon.png'),
                ),
                Text(
                  widget.type == 'WITHDRAWAL'
                      ? 'Deleted Account'
                      : 'Blocked Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w700,
                    color: AppColor.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            if (widget.type == 'WITHDRAWAL')
              Text(
                'Your account has been deleted.\nPlease contact support for further assistance.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
            if (widget.type == 'BLOCKED')
              Text(
                'Your account has been blocked.\nPlease contact support for further assistance.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
            if (widget.type == 'BLOCKED') SizedBox(height: 30.h),
            if (widget.type == 'BLOCKED' && widget.blockedDetails != null)
              Text(
                widget.blockedDetails!.endDateTime != null
                    ? 'Blocked Until: ${widget.blockedDetails!.endDateTime}'
                    : 'Permanently Banned',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'ProximaSoft',
                  fontWeight: FontWeight.w700,
                ),
              ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.type != 'BLOCKED')
                Image(
                  width: 120.w,
                  fit: BoxFit.fitWidth,
                  image:
                      const AssetImage('assets/images/profile/nft_nolist.png'),
                ),
              if (widget.type == 'BLOCKED')
                Image(
                  width: 151.w,
                  fit: BoxFit.fitWidth,
                  image:
                      const AssetImage('assets/images/login/blocked_img.png'),
                ),
            ],
          ),
        ),
        Stack(
          children: [
            CustomButton(
              text: 'Support',
              bgColor: AppColor.lightYellow,
              lienColor: AppColor.darkYellow,
              height: 50.h,
              fontSize: 20,
              textColor: Colors.black,
              onPressed: () async {
                final url = Uri.parse(
                    'https://minewarz.zendesk.com/hc/en-us/requests/new');
                if (!await launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                )) {
                  launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              },
            ),
            if (isEquipped) const LoadingWidget(),
          ],
        ),
      ],
    );
  }
}
