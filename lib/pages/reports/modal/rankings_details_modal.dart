import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/widget/nft_img/nft_img.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/reports/modal/stat_card.dart';
import 'package:minewarz_app/pages/reports/model/ranking_model.dart';

class RankingsDetailsModal extends ConsumerStatefulWidget {
  final String url;
  final String type;
  final String nickname;
  final ReportStatModel stat;
  const RankingsDetailsModal({
    super.key,
    required this.url,
    required this.type,
    required this.nickname,
    required this.stat,
  });

  @override
  ConsumerState<RankingsDetailsModal> createState() =>
      _RankingsDetailsModalState();
}

class _RankingsDetailsModalState extends ConsumerState<RankingsDetailsModal> {
  late PioneerModel pioneerDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 428.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 272.w,
                width: 272.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile/nft_back_bg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 8.w,
                child: Center(
                  child: NftImg(
                    type: widget.type,
                    url: widget.url,
                    size: 256,
                    movePlay: true,
                  ),
                ),
              ),
              Container(
                height: 272.w,
                width: 272.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile/nft_back.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 15.w,
                left: 0,
                right: 0,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      top: 7.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 7.w,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 3.w,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              widget.nickname,
                              style: TextStyle(
                                fontFamily: 'Chaloops',
                                fontSize: 13.w,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // Text(
                            //   '#203',
                            //   style: TextStyle(
                            //     fontFamily: 'Chaloops',
                            //     height: 1.2,
                            //     fontSize: 22.w,
                            //     fontWeight: FontWeight.w700,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Image(
                      width: 19.w,
                      fit: BoxFit.fitWidth,
                      image: const AssetImage(
                          'assets/images/profile/pioneer_details_name.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: widget.stat.toJson().entries.map((e) {
                return StatCard(
                  stat: e.key,
                  value: e.value,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
