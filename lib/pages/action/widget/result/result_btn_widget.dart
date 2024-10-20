import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/provider/sounds.dart';
import 'package:minewarz_app/common/provider/sounds_url.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/provider/revenge_list_provider.dart';
import 'package:minewarz_app/pages/action/provider/target_list_provider.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

import 'result_time_widget.dart';

class ResultBtnWidget extends ConsumerStatefulWidget {
  final String type;
  final int attackId;
  final String text;
  final Function() callback;
  final Function() endcallback;
  const ResultBtnWidget({
    super.key,
    required this.callback,
    required this.endcallback,
    required this.text,
    required this.attackId,
    required this.type,
  });

  @override
  ConsumerState<ResultBtnWidget> createState() => _ResultBtnWidgetState();
}

class _ResultBtnWidgetState extends ConsumerState<ResultBtnWidget>
    with WidgetsBindingObserver {
  bool didChange = false;
  bool endAttack = false;
  bool endTime = false;
  bool isNotNetwork = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  void nextEndHome(ref, contexts) async {
    setState(() {
      endTime = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    nextHome(ref, contexts);
  }

  void nextHome(ref, contexts) async {
    if (widget.text == 'Next') {
      if (endAttack) {
        return;
      }
      setState(() {
        endAttack = true;
      });
      ref.read(attackProvider.notifier).getAttack(attackId: widget.attackId);
      await ref.read(soundsUrlProvider.notifier).soundUrl('action');
      if (!didChange) {
        ref.read(soundsProvider.notifier).soundFun();
      } else {
        ref.read(soundsProvider.notifier).soundDispose();
      }
      widget.callback();
      setState(() {
        endAttack = false;
      });
    } else {
      if (endAttack) {
        return;
      }
      setState(() {
        endAttack = true;
      });
      Navigator.of(contexts).pop();
      if (widget.type == 'attack') {
        ref.read(targetListProvider.notifier).reset();
      } else {
        ref.read(revengeListProvider.notifier).reset();
      }
      ref.read(myInfoProvider.notifier).setMyInfoData();
      ref.read(soundsProvider.notifier).cilckAttack();
      ref.read(targetNicknameProvider.notifier).state = '';
      ref.read(isAttackProvider.notifier).state = false;
      await ref.read(soundsUrlProvider.notifier).soundUrl('home');
      if (!didChange) {
        ref.read(soundsProvider.notifier).soundFun();
      } else {
        ref.read(soundsProvider.notifier).soundDispose();
      }
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (PlayerState.disposed == bgPlayer.state) {
          bgPlayer = AudioPlayer();
        }
        setState(() {
          didChange = false;
        });
        break;
      case AppLifecycleState.inactive:
        if (Platform.isIOS) {
          ref.read(soundsProvider.notifier).soundDispose();
        }
        break;
      case AppLifecycleState.paused:
        setState(() {
          didChange = true;
        });
        break;
      case AppLifecycleState.detached:
        setState(() {
          didChange = true;
        });
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.w,
      child: Stack(
        children: [
          CustomButton(
            onPressed: () => nextHome(ref, context),
            bgColor: widget.text == 'Exit'
                ? AppColor.darkBule
                : AppColor.lightYellow,
            text: widget.text,
            textColor: widget.text == 'Exit' ? Colors.white : Colors.black,
            lienColor: widget.text == 'Exit'
                ? AppColor.lightBule1
                : AppColor.darkYellow,
          ),
          ResultTimeWidget(
            time: 5,
            onTimeEnd: () => nextEndHome(ref, context),
          ),
          if (endTime && !isNotNetwork) const LoadingWidget(),
        ],
      ),
    );
  }
}
