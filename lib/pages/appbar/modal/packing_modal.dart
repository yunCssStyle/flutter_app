import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/utils/common.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';
import 'package:minewarz_app/common/widget/common/custom_check_box.dart';
import 'package:minewarz_app/common/widget/mzp/mzp.dart';
import 'package:minewarz_app/pages/appbar/model/trading_post_model.dart';
import 'package:minewarz_app/pages/appbar/provider/trading_post_provider.dart';

class DecimalInputFormatter extends TextInputFormatter {
  final num max;

  DecimalInputFormatter({this.max = 0});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final int decimalIndex = newValue.text.indexOf('.');
    if (decimalIndex != -1 &&
        newValue.text.substring(decimalIndex).length > 7) {
      return oldValue;
    }

    return newValue;
  }
}

class PackingModal extends ConsumerStatefulWidget {
  const PackingModal({super.key});

  @override
  ConsumerState<PackingModal> createState() => _PackingModalState();
}

class _PackingModalState extends ConsumerState<PackingModal> {
  final _goldAmount = TextEditingController();
  double _goldAmountValue = 0;
  bool packingCheck = false;

  @override
  void initState() {
    super.initState();
    _goldAmount.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _goldAmount.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    final text = _goldAmount.text.trim();
    if (text.isEmpty) {
      setState(() {
        _goldAmountValue = 0;
      });
    } else if (RegExp(r'^[0-9]').hasMatch(text)) {
      setState(() {
        _goldAmountValue = double.parse(_goldAmount.text.replaceAll(',', ''));
      });
    } else {
      setState(() {
        _goldAmountValue = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final tradingPost = ref.watch(tradingPostProvider);
    return Column(
      children: [
        SizedBox(height: 15.w),
        Text(
          'Pack to send to trading post.\nPlease enter the amount of Gold you wish to pack.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'ProximaSoft',
            fontSize: 16.w,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            height: 1.5,
          ),
        ),
        SizedBox(height: 15.w),
        TextField(
          controller: _goldAmount,
          keyboardType: const TextInputType.numberWithOptions(
              signed: false, decimal: false),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            CurrencyFormatter(),
          ],
          textAlign: TextAlign.center,
          cursorColor: Colors.black,
          style: TextStyle(
            fontSize: 30.w,
            fontWeight: FontWeight.w700,
            fontFamily: 'Chaloops',
          ),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(0),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.w),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Owned Gold',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'ProximaSoft',
                fontSize: 14.w,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            SizedBox(width: 15.w),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.w, top: 0),
                  padding: EdgeInsets.only(left: 12.w, right: 5.w),
                  color: Colors.white,
                  child: Mzp(
                    mzp: tradingPost is TradingPostModel
                        ? tradingPost.ownedGold.floor()
                        : 0,
                    mzpSize: 16,
                    mzpSmallSize: 14,
                    mzpColor: Colors.black,
                    mzpfontFamily: 'ProximaSoft',
                    fontWeight: FontWeight.w800,
                    mzpSmallColor: AppColor.lightGrey,
                  ),
                ),
                Image.asset(
                  'assets/images/appbar/icn_mzp.png',
                  width: 19.w,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Minimum Gold : ',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4f4f4f),
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: '1,000',
                  style: TextStyle(
                    fontFamily: 'ProximaSoft',
                    fontSize: 14.w,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff4f4f4f),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Packing Fee : ',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkRed,
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: tradingPost is TradingPostModel
                        ? tradingPost.packingFee == 0
                            ? 'FREE'
                            : tradingPost.packingFee.toString()
                        : '0.0',
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 14.w,
                      fontWeight: FontWeight.w700,
                      color: AppColor.darkRed,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Confirm to begin packing.\nGold will be displayed in sum for Packed Gold\nonce packing is complete.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaSoft',
                  fontSize: 14.w,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 5.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    isCustom: true,
                    value: packingCheck,
                    text: 'I have confirmed the above.',
                    errorColor: Colors.black,
                    onChanged: () {
                      setState(() {
                        packingCheck = !packingCheck;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10.w),
        CustomButton(
          isDisabled: tradingPost is TradingPostModel
              ? tradingPost.ownedGold >= _goldAmountValue &&
                      _goldAmountValue >= 1000 &&
                      packingCheck
                  ? false
                  : true
              : true,
          text: 'Confirm',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 56.w,
          fontSize: 20,
          textColor: Colors.black,
          onPressed: () {
            ref
                .read(tradingPostProvider.notifier)
                .packingConfirm(_goldAmountValue);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
