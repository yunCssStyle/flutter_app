import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class PackingProcessingModal extends ConsumerStatefulWidget {
  const PackingProcessingModal({super.key});

  @override
  ConsumerState<PackingProcessingModal> createState() => _PackingProcessingModalState();
}

class _PackingProcessingModalState extends ConsumerState<PackingProcessingModal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children:[
                  SizedBox(height:100.w),
                  Text(
                    'Processing earlier request.\nPlease wait.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'ProximaSoft',
                      fontSize: 16.w,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),
                ]
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Lottie.asset(
                        'assets/images/common/lottie/packing.json',
                        width: 100.w,
                        height: 172.w
                    ),
                  ),
                  SizedBox(height:110.w)
                ],
              )
            ],
          ),
        )
      ],
    );

  }
}
