import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/modal/modal.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/reports/modal/rankings_details_modal.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_detail_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_widget.dart';

class RankingTopWidget extends StatelessWidget {
  final RankingType type;
  final MyRankingModel ranking;
  const RankingTopWidget({
    super.key,
    required this.type,
    required this.ranking,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 28.w),
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 30.w,
          ),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 100.w),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/images/reports/rankingList.png'),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40.w,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'TOP ${ranking.rank} ',
                        style: TextStyle(
                          color: AppColor.lightRed,
                          fontFamily: 'Chaloops',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      WidgetSpan(
                        child: Image.asset(
                          'assets/images/reports/topone.png',
                          width: 20.86.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
                Text(
                  ranking.profile.nickname ?? 'No Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Chaloops',
                    fontSize: 18.w,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 20.w,
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
                SizedBox(
                  height: 20.w,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 160.w,
              height: 160.w,
              color: Colors.black,
              child: Stack(
                children: [
                  NftImg(
                    url: ranking.profile.profileUrl,
                    type: ranking.profile.profileType,
                    size: 160.w,
                  ),
                  Image.asset(
                    'assets/images/reports/frame.png',
                    width: 160.w,
                    height: 160.w,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GestureDetector(
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
                        'assets/images/reports/zome.png',
                        width: 27.17.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
