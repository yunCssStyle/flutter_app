import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/pages/reports/modal/rankings_details_modal.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_detail_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_widget.dart';

class RankingMyWidget extends StatelessWidget {
  final RankingType type;
  final MyRankingModel ranking;
  const RankingMyWidget({
    super.key,
    required this.type,
    required this.ranking,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.w),
      decoration: const BoxDecoration(
        color: AppColor.lightYellow,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top ${ranking.rank.toString()}',
                    style: TextStyle(
                      color: AppColor.lightRed,
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                  Text(
                    'Your Ranking',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  modalContent(
                    title: ranking.profile.nickname,
                    widget: RankingsDetailsModal(
                      url: ranking.profile.profileUrl,
                      type: ranking.profile.profileType,
                      nickname: ranking.profile.nickname ?? 'No Name',
                      stat: ranking.profile.stat,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/reports/zome1.png',
                  width: 22.5.w,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.w,
          ),
          RankingDetailWidget(
            goldAcquired: RankingType.mining == type
                ? ranking.goldAcquired
                : ranking.attackProfit ?? 0,
            miningPower: RankingType.mining == type
                ? ranking.miningPower ?? 0
                : ranking.ofAttacks ?? 0,
            mainAxisAlignment: MainAxisAlignment.center,
            type: type,
            miningCapacity: RankingType.mining == type
                ? ranking.miningCapacity ?? 0
                : ranking.biggestWinnings ?? 0,
            earningsFromLooting: RankingType.mining == type
                ? ranking.earningsFromLooting ?? 0
                : ranking.goldAcquired,
          ),
        ],
      ),
    );
  }
}
