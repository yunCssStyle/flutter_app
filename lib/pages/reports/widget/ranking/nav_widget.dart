import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RankingNavWidget extends StatelessWidget {
  final int currentIndex;
  final List<String> items;
  final Function moveToPreviousItem;
  final Function moveToNextItem;
  const RankingNavWidget({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.moveToPreviousItem,
    required this.moveToNextItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Opacity(
              opacity: currentIndex == 0 ? 0.2 : 1,
              child: Image.asset(
                'assets/images/reports/arrow_left.png',
                width: 28.w,
                fit: BoxFit.fitWidth,
              ),
            ),
            onPressed: () {
              if (currentIndex > 0) {
                moveToPreviousItem();
              }
            },
          ),
          Text(
            '${items[currentIndex] != 'PUBLIC' ? 'ZONE' : ''} ${items[currentIndex]} Rankings',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Chaloops',
              fontSize: 24.w,
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),
          IconButton(
            icon: Opacity(
              opacity: currentIndex == items.length - 1 ? 0.2 : 1,
              child: Image.asset(
                'assets/images/reports/arrow_right.png',
                width: 28.w,
                fit: BoxFit.fitWidth,
              ),
            ),
            onPressed: () {
              if (currentIndex != items.length) {
                moveToNextItem();
              }
            },
          ),
        ],
      ),
    );
  }
}
