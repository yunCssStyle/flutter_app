import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/loading/loading.dart';
import 'package:minewarz_app/common/widget/supertooltip/src/super_tooltip.dart';
import 'package:minewarz_app/common/widget/supertooltip/src/super_tooltip_controller.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';
import 'package:minewarz_app/pages/reports/model/reports_model.dart';
import 'package:minewarz_app/pages/reports/provider/ranking_provider.dart';
import 'package:minewarz_app/pages/reports/provider/reports_provider.dart';
import 'package:minewarz_app/pages/reports/widget/ranking/list_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking/my_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking/nav_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking/tab_widget.dart';
import 'package:minewarz_app/pages/reports/widget/ranking/top_widget.dart';
import 'package:minewarz_app/pages/reports/widget/report_nodata.dart';

enum RankingType {
  mining,
  plunder,
}

class RankingWidget extends ConsumerStatefulWidget {
  const RankingWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<RankingWidget> createState() => _RankingWidgetState();
}

class _RankingWidgetState extends ConsumerState<RankingWidget> {
  late bool rankingMore = false;
  late List<MyRankingModel> rankingList;
  final greenKey = GlobalKey();
  List<String> items = ['PUBLIC', 'A', 'B', 'C', 'D', 'E'];
  int currentIndex = 0;
  RankingType type = RankingType.mining;
  final textTooltop = SuperTooltipController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initDataCall();
    });
  }

  @override
  void dispose() {
    textTooltop.dispose();
    super.dispose();
  }

  void initDataCall() async {
    final reports = ref.watch(reportsProvider);
    if (reports is ReportsModel && reports.yesterdayZone != null) {
      dataCall(item: reports.yesterdayZone);
      setState(() {
        currentIndex = items.indexOf(reports.yesterdayZone!);
      });
    } else {
      dataCall();
    }
  }

  void moveToPreviousItem() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        rankingMore = false;
      });
      dataCall();
    }
  }

  void moveToNextItem() {
    if (currentIndex < items.length - 1) {
      setState(() {
        currentIndex++;
        rankingMore = false;
      });
      dataCall();
    }
  }

  void miningKing() {
    setState(() {
      // currentIndex = 0;
      type = RankingType.mining;
      rankingMore = false;
    });
    dataCall();
  }

  void plunderKing() {
    setState(() {
      // currentIndex = 0;
      type = RankingType.plunder;
      rankingMore = false;
    });
    dataCall();
  }

  void dataCall({String? item}) async {
    ref.read(rankingProvider.notifier).setRankingData(
        zone: item ?? items[currentIndex],
        type: type == RankingType.mining ? 'MINING' : 'PLUNDER');
  }

  @override
  Widget build(BuildContext context) {
    final ranking = ref.watch(rankingProvider);
    if (ranking is RankingModel) {
      setState(() {});
      rankingList = ranking.rankings.map((e) {
        return e;
      }).toList();
    }
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RankingNavWidget(
              currentIndex: currentIndex,
              items: items,
              moveToPreviousItem: moveToPreviousItem,
              moveToNextItem: moveToNextItem,
            ),
            SizedBox(
              height: 20.w,
            ),
            RankingTabWidget(
              miningKing: miningKing,
              plunderKing: plunderKing,
              type: type,
            ),
            SizedBox(
              height: 23.w,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                if (ranking is RankingModel)
                  Column(
                    children: [
                      Column(
                        key: greenKey,
                        children: rankingList.isNotEmpty
                            ? rankingList.asMap().entries.map((e) {
                                return e.key == 0
                                    ? RankingTopWidget(
                                        ranking: e.value,
                                        type: type,
                                      )
                                    : rankingMore
                                        ? RankingListWidget(
                                            index: e.key,
                                            ranking: e.value,
                                            type: type,
                                          )
                                        : Container();
                              }).toList()
                            : [const ReportsNoData()],
                      ),
                      if (ranking.myRanking != null)
                        RankingMyWidget(
                          type: type,
                          ranking: ranking.myRanking!,
                        ),
                      if (rankingList.isNotEmpty)
                        GestureDetector(
                          onTap: () {
                            Scrollable.ensureVisible(
                              greenKey.currentContext!,
                              duration: const Duration(milliseconds: 300),
                            );
                            setState(() {
                              rankingMore = !rankingMore;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16.w),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'See more',
                                  style: TextStyle(
                                    fontFamily: 'Chaloops',
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Transform.rotate(
                                  angle: rankingMore ? 3.14159 : 0,
                                  child: Image.asset(
                                    'assets/images/reports/seemore.png',
                                    width: 20.77.w,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                if (ranking is RankingLoading)
                  SizedBox(
                    width: double.infinity,
                    height: 300.w,
                    child: const LoadingWidget(isPositioned: false),
                  ),
                if (ranking is RankingError) const ReportsNoData(),
                Positioned(
                  top: -8.w,
                  right: 16.w,
                  child: SuperTooltip(
                    controller: textTooltop,
                    barrierColor: Colors.black.withOpacity(0),
                    content: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Text(
                        type == RankingType.mining
                            ? "Gold Acquired: Total Gold acquired after\ntransportation\nMP: Total MP from all activated Mining\nRights\nMining Capacity: Total mined gold\nEarnings from Looting: Sum of gains and\nlosses from looting"
                            : "Attack Profit: Gold acquired through looting\nNo. of Attacks: No. of attacks attempted\nBiggest Winnings: The most Gold won from\nattacking another player\nGold Acquired: Total Gold acquired after\ntransportation",
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'ProximaSoft',
                          fontSize: 12.w,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/common/icn_tip.png',
                      width: 27.w,
                      height: 27.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Container(
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: Colors.white.,
        // ),
      ],
    );
  }
}
