import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/widget/profile/stat_detail_card_widget.dart';

final statDetails = [
  {
    'stat': 'luck',
    'icon': 'assets/images/profile/stat_luck.png',
    'img': 'assets/images/profile/stat_luckimg.png',
    'title': 'Luck',
    'text':
        'This stat represents your luck.\nYou can expect fortunate discoveries or situations from this.'
  },
  {
    'stat': 'stamina',
    'icon': 'assets/images/profile/stat_stamina.png',
    'img': 'assets/images/profile/stat_staminaimg.png',
    'title': 'Stamina',
    'text':
        'You need stamina for any task.\nThe higher this stat, the less likely you will tire easily, even during long journeys.'
  },
  {
    'stat': 'intuition',
    'icon': 'assets/images/profile/stat_intuition.png',
    'img': 'assets/images/profile/stat_intuitionimg.png',
    'title': 'Intuition',
    'text':
        'This represents your keen sense.\nThis stat will help you reduce the probability of failure and you might receive help in discovering new things.'
  },
  {
    'stat': 'silverTongue',
    'icon': 'assets/images/profile/stat_tongue.png',
    'img': 'assets/images/profile/stat_tongueimg.png',
    'title': 'Silver Tongue',
    'text':
        'You have a way with words.\nThis stat allows you to gain more profits from trades.'
  },
];

class StatDetailsModal extends ConsumerWidget {
  final ProfileStatModel stat;
  final ProfileStatModel statBonus;
  const StatDetailsModal(
      {super.key, required this.stat, required this.statBonus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: stat
          .toJson()
          .entries
          .map((e) => StatDetailCardWidget(
                stat: e.key,
                value: e.value,
                statBonus: e.key,
                valueBonus: statBonus.toJson()[e.key],
              ))
          .toList(),
    );
  }
}
