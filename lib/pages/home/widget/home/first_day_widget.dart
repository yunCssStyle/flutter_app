import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/home/model/home_model.dart';
import 'package:minewarz_app/pages/home/provider/home_provider.dart';

class FirstDayWidget extends ConsumerStatefulWidget {
  const FirstDayWidget({super.key});

  @override
  ConsumerState<FirstDayWidget> createState() => _FirstDayWidgetState();
}

class _FirstDayWidgetState extends ConsumerState<FirstDayWidget> {
  num attackProfit = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initCall();
    });
  }

  initCall() async {
    await Future.delayed(const Duration(milliseconds: 200));
    if (mounted) {
      ref.read(homeProvider.notifier).setHomeData();
      final home = ref.watch(homeProvider);
      if (home is HomeModel && !home.isDivision) {
        attackProfit = home.data.storage.attackProfit!;
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initCall();
    });
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    return Positioned(
      left: 0,
      bottom: 86.w,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: SizedBox(
        width: 244.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              width: 8.w,
              height: 26.w,
              fit: BoxFit.fill,
              'assets/images/home/stone_mzp_left.png',
            ),
            if (home is HomeModel)
              Transform.translate(
                offset: Offset(-2.w, 0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  height: 19.w,
                  color: Colors.black,
                  child:
                      !home.isDivision && home.data.storage.attackProfit! == 0
                          ? Text(
                              'Under construction',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.w,
                                height: 1.4,
                              ),
                            )
                          : Mzp(
                              mzp: home.data.storage.attackProfit!,
                              mzpSize: 11,
                              mzpSmallSize: 11,
                              mzpColor: Colors.white,
                              mzpSmallColor: AppColor.lightGrey,
                              mzpfontFamily: 'ProximaSoft',
                            ),
                ),
              ),
            Transform.translate(
              offset: Offset(-2.w, 0),
              child: Image.asset(
                width: 4.w,
                height: 19.w,
                fit: BoxFit.fitWidth,
                'assets/images/home/stone_mzp_right.png',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
