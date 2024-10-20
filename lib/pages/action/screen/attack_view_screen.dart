import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/provider/network.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/pages/action/model/attack_model.dart';
import 'package:minewarz_app/pages/action/provider/attack_provider.dart';
import 'package:minewarz_app/pages/action/provider/weapon_provider.dart';
import 'package:minewarz_app/pages/action/widget/attack/attack_round_widget.dart';
import 'package:minewarz_app/pages/action/widget/attack/attack_time_widget.dart';
import 'package:minewarz_app/pages/action/widget/attack/attack_action_widget.dart';
import 'package:minewarz_app/pages/action/widget/attack/attack_widget.dart';

class AttackViewScreen extends ConsumerStatefulWidget {
  final Function() callback;
  const AttackViewScreen({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  ConsumerState<AttackViewScreen> createState() => _AttackViewScreenState();
}

class _AttackViewScreenState extends ConsumerState<AttackViewScreen> {
  final List<int> numbers = [1, 2, 3]; // 숫자들의 리스트
  final random = Random();
  bool _isLoggedIn = false;
  int gunIndex = 0;

  @override
  void initState() {
    super.initState();
    numbersRandom();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {}

  void numbersRandom() {
    for (var i = numbers.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);
      final temp = numbers[i];
      numbers[i] = numbers[j];
      numbers[j] = temp;
    }
  }

  void _handleChildEvent() {
    widget.callback();
    setState(() {
      _isLoggedIn = false;
    });
    // 0초가 되면 실패 실행
  }

  void _timeEndEvent(weaponId, attackId, network) {
    setState(() {
      gunIndex = 1;
      _isLoggedIn = true;
    });
    if (network == NetworkStatus.isDisonnected) {
      ref.read(weaponProvider.notifier).loseNetwork(
            attackId: attackId,
          );
    } else {
      ref.read(weaponProvider.notifier).loseWeapon(
            attackId: attackId,
          );
    }
    // 0초가 되면 실패 실행
  }

  void attackCilck(number, weaponId, attackId, round) async {
    final isRound = ref.watch(isRoundProvider);
    if (isRound == round) {
      ref.read(isRoundProvider.notifier).state = 0;
      return;
    }
    setState(() {
      gunIndex = number;
      _isLoggedIn = true;
    });
    ref.read(isRoundProvider.notifier).state = round;
    final weaponData = await ref.read(weaponProvider.notifier).setWeaponData(
          attackId: attackId,
          weaponId: weaponId,
        );
    if (!weaponData) {
      _handleChildEvent();
    }
  }

  @override
  Widget build(BuildContext context) {
    final attack = ref.watch(attackProvider);
    final network = ref.watch(networkProviders);
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: attack is AttackModel
              ? Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/action/attack_view.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.w),
                      SizedBox(
                        height: DeviceHeight().firstTop(20.w),
                      ),
                      // 공격 라운드 위젯
                      const AttackRoundWidget(),
                      SizedBox(height: 20.w),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(2, (index) {
                                    final int i = index;
                                    return AttackWidget(
                                      index: numbers[i],
                                      statEvent:
                                          attack.weapons[index].statEvent,
                                      callback: () => attackCilck(
                                        numbers[i],
                                        attack.weapons[i].weaponId,
                                        attack.attackId,
                                        attack.round,
                                      ),
                                    );
                                  }).toList(),
                                ),
                                if (attack.weapons.length > 2)
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(1, (index) {
                                        final int i = index + 2;
                                        return AttackWidget(
                                          index: numbers[i],
                                          statEvent:
                                              attack.weapons[i].statEvent,
                                          callback: () => attackCilck(
                                            numbers[i],
                                            attack.weapons[i].weaponId,
                                            attack.attackId,
                                            attack.round,
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.w),
                      AttackTimeWidget(
                        isLoggedIn: _isLoggedIn,
                        time: attack.chooseTime,
                        onTimeEnd: () {
                          _timeEndEvent(1, attack.attackId, network);
                        },
                      ),
                      SizedBox(height: 30.w),
                    ],
                  ),
                )
              : Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/action/attack_view.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const LoadingWidget(isPositioned: false),
                ),
        ),
        if (_isLoggedIn)
          AttackActionWidget(callback: _handleChildEvent, gunIndex: gunIndex),
      ],
    );
  }
}
