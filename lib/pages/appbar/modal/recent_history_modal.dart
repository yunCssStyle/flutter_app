import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/appbar/provider/trading_post_history_provider.dart';
import 'package:intl/intl.dart';

class RecentHistoryModal extends ConsumerStatefulWidget {
  const RecentHistoryModal({super.key});

  @override
  ConsumerState<RecentHistoryModal> createState() => _RecentHistoryModalState();
}

class _RecentHistoryModalState extends ConsumerState<RecentHistoryModal> {
  @override
  void initState() {
    super.initState();
    ref.read(tradingPostHistoryProvider.notifier).setTradingPostHistoryData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lastTransaction = ref.watch(tradingPostHistoryProvider);
    final isLoading = lastTransaction is TradingPostHistoryModel;
    final isNotNull = isLoading && lastTransaction.data != null;
    final isPacking = isNotNull && lastTransaction.data!.type == 'PACKING';

    final dateTime = isNotNull
        ? DateFormat('dd/MM/yyyy HH:mm:dd')
            .format(lastTransaction.data!.datetime)
        : '-';
    final mzp = isNotNull ? lastTransaction.data!.gold : 0.0;

    final notNullChild = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '${isPacking ? 'Packing' : 'Unpacking'} complete',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                fontSize: 16.w,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            Text(
              '$dateTime (UTC)', // Under maintenance now. // Please wait a moment.
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                fontSize: 14.w,
                fontWeight: FontWeight.w400,
                color: const Color(0xff797979),
              ),
            ),
            SizedBox(height: 25.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Mzp(
                    mzpIcon: true,
                    mzpIconSize: 22,
                    iconRight: 8,
                    mzp: mzp.floor(),
                    mzpSize: 30,
                    mzpSmallSize: 20,
                    mzpColor: Colors.black,
                    mzpfontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w800,
                    mzpSmallColor: AppColor.lightGrey,
                    isUnderscore: true,
                  ),
                ),
              ],
            ),
          ],
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                width: 100.w,
                height: 180.w,
                fit: BoxFit.contain,
                image: isPacking
                    ? const AssetImage(
                        'assets/images/common/trading_post/packing_img.png')
                    : const AssetImage(
                        'assets/images/common/trading_post/unpacking_img.png'),
              ),
            ),
            Positioned(
              right: 0,
              bottom: -70.w,
              child: Image(
                width: 234.w,
                fit: BoxFit.fitWidth,
                image: isPacking
                    ? const AssetImage(
                        'assets/images/common/trading_post/complete_packing.png')
                    : const AssetImage(
                        'assets/images/common/trading_post/complete_unpacking.png'),
                //complete_unpacking.png
              ),
            ),
          ],
        )
      ],
    );

    final nullChild = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(height: 78.w),
            Text(
              'No transaction history.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                fontSize: 16.w,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image(
                    width: 100.w,
                    height: 180.w,
                    fit: BoxFit.contain,
                    image: const AssetImage(
                        'assets/images/common/trading_post/none_transaction.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.w),
          ],
        )
      ],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 50.w),
        Expanded(
          child: isNotNull ? notNullChild : nullChild,
        ),
        SizedBox(height: 100.w),
      ],
    );
  }
}
