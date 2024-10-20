// import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/_env/enviroment.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/layout/layout_widget.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';
import 'package:minewarz_app/pages/login/widget/login_form.dart';
import 'package:minewarz_app/pages/login/widget/login_video.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool privacyPolicy = true;
  bool gameTermsofUse = true;
  bool marketing = false;
  String marketingmMessage = '';
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    await ref.read(soundsUrlProvider.notifier).soundUrl('intro');
    final storage = ref.watch(secureStorageProvider);
    final type = await storage.read(key: 'type');
    await getInit(type!);
    ref.read(soundsProvider.notifier).soundFun();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginProvider);
    return LayoutWidget(
      safeAreaIs: false,
      bottomNavigationBar: false,
      myAppBar: false,
      backgroundImage: 'assets/images/login/login_bg.png',
      imageFit: BoxFit.fitHeight,
      child: Stack(
        children: [
          //로그인 영상
          const LoginVideo(),
          //마이너즈 로고
          Positioned(
            top: DeviceHeight().firstTop(38.w), // 상단 여백
            left: 0,
            right: 0,
            child: Center(
              child: Image(
                width: 229.w,
                image: const AssetImage('assets/images/login/logo.png'),
              ),
            ),
          ),
          //로그인 폼
          const LoginForm(),
          // 로딩
          if (state is AuthCheckLoading || state is AuthCheckSuccess)
            const LoadingWidget(),
        ],
      ),
    );
  }
}
