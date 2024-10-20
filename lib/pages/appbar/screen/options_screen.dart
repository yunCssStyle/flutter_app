import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/notification.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/appbar/modal/change_nickname_modal.dart';
import 'package:minewarz_app/pages/appbar/modal/delete_account_modal.dart';
import 'package:minewarz_app/pages/appbar/modal/logout_modal.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/appbar/widget/options/options_check_widget.dart';
import 'package:minewarz_app/pages/appbar/widget/options/purchase_widget.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaml/yaml.dart';

class OptionsScreen extends ConsumerStatefulWidget {
  final bool guest;
  const OptionsScreen({super.key, this.guest = false});

  @override
  ConsumerState<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends ConsumerState<OptionsScreen> {
  late String version = '';
  late String uid = '';
  bool isPurchase = false;
  @override
  void initState() {
    super.initState();
    _verifyVersion();
  }

  void _verifyVersion() async {
    // ref.read(soundsProvider.notifier).soundinit();
    final deviceId = await ref.read(loginProvider.notifier).getId();
    rootBundle.loadString('pubspec.yaml').then((value) {
      var doc = loadYaml(value);
      version = doc['version'];
      final versionLast = version.split('.')[2].split('+');
      setState(() {
        version = '${version.split('.')[0]}.${version.split('.')[1]}.'
            '${int.parse(versionLast[0])} (${versionLast[1]})';
        deviceId.toString().length > 30
            ? uid = deviceId.toString().substring(0, 30)
            : uid = deviceId.toString();
      });
    });
  }

  guideCilck() async {
    final url = Uri.parse('https://docs.minewarz.io/how-to-play/game-contents');
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  supportCilck() async {
    final url = Uri.parse('https://docs.minewarz.io/support/faq');
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSound = ref.watch(soundsProvider);
    final isNotifications = ref.watch(notificationProvider);
    final myInfo = ref.watch(myInfoProvider);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // const PurchaseWidget(),
                // const PurchaseWidgetTest(),
                SizedBox(height: 5.w),
                // const PurchaseWidget(),
                OptionsCheckWidget(
                  iconPath: 'assets/images/common/options/sound_icon.svg',
                  title: 'Sound',
                  value: isSound,
                  optionsCheckToggle: (value) {
                    if (isSound) {
                      ref.read(soundsProvider.notifier).soundoff();
                    } else {
                      ref.read(soundsProvider.notifier).soundon();
                    }
                  },
                ),
                OptionsCheckWidget(
                  iconPath:
                      'assets/images/common/options/notifications_icon.svg',
                  title: 'Notifications',
                  value: isNotifications,
                  optionsCheckToggle: (value) {
                    AppSettings.openAppSettings(
                        type: AppSettingsType.notification);
                  },
                ),
                SizedBox(height: 10.w),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomButton(
                      text: 'Change Nickname',
                      bgColor: AppColor.lightGrey1,
                      height: 40.w,
                      fontSize: 18,
                      paddright: 6.w,
                      align: MainAxisAlignment.spaceBetween,
                      isGuest: widget.guest,
                      isDisabled: widget.guest,
                      textColor: Colors.black,
                      onPressed: () {
                        if (widget.guest) return;
                        modalContent(
                          title: 'Change Nickname',
                          widget: const ChangeNicknameModal(),
                        );
                      },
                    ),
                    if (!widget.guest &&
                        myInfo is MyInfoModel &&
                        !myInfo.member.paidNicknameChange)
                      PurchaseWidget(
                        callback: () {
                          setState(() {
                            isPurchase = false;
                          });
                        },
                        startCallback: () {
                          setState(() {
                            isPurchase = true;
                          });
                        },
                      ),
                  ],
                ),
                SizedBox(height: 12.w),
                CustomButton(
                  align: MainAxisAlignment.spaceBetween,
                  text: 'Delete Account',
                  bgColor: AppColor.lightGrey1,
                  height: 40.w,
                  fontSize: 18,
                  isGuest: widget.guest,
                  isDisabled: widget.guest,
                  textColor: Colors.black,
                  onPressed: () {
                    if (widget.guest) return;
                    modalContent(
                      title: 'Delete Account',
                      widget: const DeletAccountModal(),
                    );
                  },
                ),
                SizedBox(height: 12.w),
                CustomButton(
                  text: 'Guide',
                  bgColor: AppColor.lightGrey1,
                  height: 40.w,
                  fontSize: 18,
                  textColor: Colors.black,
                  iconEndPath: 'assets/images/common/options/window_icon.svg',
                  iconEndWidth: 22.w,
                  paddright: 7.w,
                  align: MainAxisAlignment.spaceBetween,
                  onPressed: () => guideCilck(),
                ),
                SizedBox(height: 12.w),
                CustomButton(
                  text: 'Customer Support',
                  bgColor: AppColor.lightGrey1,
                  height: 40.w,
                  fontSize: 18,
                  textColor: Colors.black,
                  iconEndPath: 'assets/images/common/options/window_icon.svg',
                  iconEndWidth: 22.w,
                  paddright: 7.w,
                  align: MainAxisAlignment.spaceBetween,
                  onPressed: () => supportCilck(),
                ),
                SizedBox(height: 10.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'MINE WARZ\'s local time zone is set to ',
                      style: TextStyle(
                        fontSize: 13.w,
                        color: AppColor.darkGrey1,
                        fontFamily: 'ProximaSoft',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'UTC+0',
                      style: TextStyle(
                        fontSize: 14.w,
                        color: Colors.black,
                        fontFamily: 'ProximaSoft',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (myInfo is MyInfoModel)
                      Text(
                        'UID : ${104328 + myInfo.member.id}',
                        style: TextStyle(
                          color: AppColor.darkGrey,
                          fontSize: 12.w,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'ProximaSoft',
                        ),
                      ),
                    Text(
                      'Ver.$version',
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'ProximaSoft',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.w),
                CustomButton(
                  text: widget.guest ? 'Login' : 'Log Out',
                  bgColor: AppColor.lightYellow,
                  height: 40.w,
                  fontSize: 18,
                  textColor: Colors.black,
                  iconEndPath: widget.guest
                      ? 'assets/images/common/options/login_icon.svg'
                      : 'assets/images/common/options/logout_icon.svg',
                  iconEndWidth: 24.w,
                  onPressed: () async {
                    if (widget.guest) {
                      await ref
                          .read(soundsUrlProvider.notifier)
                          .soundUrl('intro');
                      ref.read(soundsProvider.notifier).soundFun();
                      ref.read(loginProvider.notifier).guestLogout();
                    } else {
                      modalContent(
                        title: 'Log Out',
                        widget: const LogoutModal(),
                      );
                    }
                  },
                ),
              ],
            )
          ],
        ),
        if (isPurchase || myInfo is MyInfoLoading)
          Positioned(
            top: -16.w,
            left: -16.w,
            right: -16.w,
            bottom: -40.w,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: const LoadingWidget(isPositioned: false),
            ),
          ),
      ],
    );
  }
}
