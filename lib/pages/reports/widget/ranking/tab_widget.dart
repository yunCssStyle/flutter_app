import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/reports/widget/ranking_widget.dart';

class RankingTabWidget extends StatelessWidget {
  final Function miningKing;
  final Function plunderKing;
  final RankingType type;
  const RankingTabWidget({
    super.key,
    required this.miningKing,
    required this.plunderKing,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                miningKing();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 52.w,
                color: type == RankingType.mining
                    ? AppColor.lightRed
                    : AppColor.lightYellow2,
                child: Text(
                  'Mining King',
                  style: TextStyle(
                    color: type == RankingType.mining
                        ? Colors.white
                        : AppColor.lightYellow3,
                    fontFamily: 'Chaloops',
                    fontSize: 18.w,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                plunderKing();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 52.w,
                color: type == RankingType.plunder
                    ? AppColor.darkRed
                    : AppColor.lightYellow2,
                child: Text(
                  'Plunder King',
                  style: TextStyle(
                    color: type == RankingType.plunder
                        ? Colors.white
                        : AppColor.lightYellow3,
                    fontFamily: 'Chaloops',
                    fontSize: 18.w,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
