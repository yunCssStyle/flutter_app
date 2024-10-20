import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:minewarz_app/pages/home/model/inventory_model.dart';

class MiningDetailsWidget extends StatelessWidget {
  final MinesListModel mineWithId;
  const MiningDetailsWidget({super.key, required this.mineWithId});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 144.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lv',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Chaloops',
                  fontSize: 16.w,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                mineWithId.level.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MP',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Chaloops',
                  fontSize: 16.w,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                mineWithId.miningPower.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProximaSoft',
                  fontSize: 16.w,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, mineWithId.energy == -1 ? -15.w : 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Energy',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Chaloops',
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                if (mineWithId.energy == -1)
                  Transform.translate(
                    offset: Offset(16.w, 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 60.w,
                          child: DotLottieLoader.fromAsset(
                            "assets/images/common/lottie/box_ani.lottie",
                            frameBuilder:
                                (BuildContext ctx, DotLottie? dotlottie) {
                              if (dotlottie != null) {
                                return Lottie.memory(
                                  dotlottie.animations.values.single,
                                  fit: BoxFit.fitWidth,
                                );
                              } else {
                                return Container();
                              }
                            },
                          ),
                        ),
                        Image.asset(
                          'assets/images/home/inventory/icn_infinity.png',
                          width: 28.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                if (mineWithId.energy != -1)
                  Text(
                    mineWithId.energy.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
