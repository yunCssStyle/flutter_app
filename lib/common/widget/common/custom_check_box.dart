import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final String text;
  final String? linkText;
  final String? linkUrl;
  final Function onChanged;
  final bool isCustom;
  final Color errorColor;
  const CustomCheckBox({
    super.key,
    required this.value,
    required this.text,
    this.linkText,
    this.linkUrl,
    required this.onChanged,
    this.isCustom = false,
    this.errorColor = AppColor.red,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onChanged();
            },
            child: Row(
              children: [
                Container(
                  width: isCustom ? 24.w : 16.w,
                  height: isCustom ? 24.w : 16.w,
                  margin: EdgeInsets.only(right: 5.6.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: isCustom
                        ? const Border()
                        : Border.all(
                            color: value ? Colors.black : AppColor.red,
                            width: 1.0,
                          ),
                    image: DecorationImage(
                      image: AssetImage(
                        value
                            ? isCustom
                                ? 'assets/images/common/check_box_icon.png'
                                : 'assets/images/login/check_box_icon.png'
                            : isCustom
                                ? 'assets/images/common/uncheck_box_icon.png'
                                : 'assets/images/login/uncheck_box_icon.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: value ? Colors.black : errorColor,
                    fontWeight: isCustom ? FontWeight.w700 : FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          if (linkText != null)
            GestureDetector(
              onTap: () async {
                final url = Uri.parse(
                  linkUrl!,
                );
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
              child: Text(
                linkText!,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: value ? Colors.black : AppColor.red,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
