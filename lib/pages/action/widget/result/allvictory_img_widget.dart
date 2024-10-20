import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/sounds.dart';

class AllVictoryImgWidget extends ConsumerStatefulWidget {
  const AllVictoryImgWidget({super.key});

  @override
  ConsumerState<AllVictoryImgWidget> createState() =>
      _AllVictoryImgWidgetState();
}

class _AllVictoryImgWidgetState extends ConsumerState<AllVictoryImgWidget> {
  final List<String> title = [
    'Yours is mine.\nMine is mine.',
    'Yeah!\nIt’s all mine!',
  ];

  final sounds = [
    [
      'sounds/attack/allmine_male_female2.mp3',
      'sounds/attack/allmine_male_female2.mp3',
    ],
    [
      'sounds/attack/final_allmine_male.mp3',
      'sounds/attack/final_allmine_female.mp3',
    ],
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
              color: Colors.black,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          Image.asset(
            'assets/images/action/all_mine_img.png',
            width: 323.w,
            height: 251.w,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
