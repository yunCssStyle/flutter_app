import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class ResultImgWidget extends ConsumerStatefulWidget {
  final bool isWin;
  const ResultImgWidget({super.key, this.isWin = false});

  @override
  ConsumerState<ResultImgWidget> createState() => _ResultImgWidgetState();
}

class _ResultImgWidgetState extends ConsumerState<ResultImgWidget> {
  List<String> title = [
    'Woo-hoo!',
    'Yippee!',
    'Hooray!',
    'Awesome!',
    'Hurrah!',
    'Great!,',
    'Way to go!',
    'All mine!!',
  ];
  List sounds = [
    [
      'sounds/attack/woo-hoo_male.mp3',
      'sounds/attack/woo-hoo_female.mp3',
    ],
    [
      'sounds/attack/yippee_male.mp3',
      'sounds/attack/yippee_female.mp3',
    ],
    [
      'sounds/attack/hooray_male.mp3',
      'sounds/attack/hooray_female.mp3',
    ],
    [
      'sounds/attack/awesome_male.mp3',
      'sounds/attack/awesome_female.mp3',
    ],
    [
      'sounds/attack/hurrah_male.mp3',
      'sounds/attack/hurrah_female.mp3',
    ],
    [
      'sounds/attack/great_male.mp3',
      'sounds/attack/great_female.mp3',
    ],
    [
      'sounds/attack/waytogo_male.mp3',
      'sounds/attack/waytogo_female.mp3',
    ],
    [
      'sounds/attack/allmine_male.mp3',
      'sounds/attack/allmine_female.mp3',
    ]
  ];
  final random = Random();
  int randomIndex = 0;
  int randommale = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        randomIndex = random.nextInt(title.length);
        randommale = random.nextInt(2);
      });
      ref.read(soundsProvider.notifier).soundPause();
      ref
          .read(soundsProvider.notifier)
          .cilckAttack(sound: sounds[randomIndex][randommale]);
    });
  }

  @override
  void dispose() {
    // ref.read(soundsProvider.notifier).audioAttackStop();
    super.dispose();
    title = [];
    sounds = [];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title[randomIndex],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Chaloops',
              fontSize: 44.w,
              fontWeight: FontWeight.w700,
              color: widget.isWin ? Colors.black : Colors.white,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          if (widget.isWin)
            Image.asset(
              'assets/images/action/mine_img.png',
              width: 275.07.w,
              height: 297.w,
              fit: BoxFit.fitWidth,
            ),
          if (!widget.isWin)
            Image.asset(
              'assets/images/action/result_img.png',
              width: 240.w,
              height: 290.w,
              fit: BoxFit.fitWidth,
            ),
        ],
      ),
    );
  }
}
