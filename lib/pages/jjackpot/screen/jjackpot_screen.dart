import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/utils/device_height.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';

class JjackpotScreen extends ConsumerStatefulWidget {
  const JjackpotScreen({super.key});

  @override
  ConsumerState<JjackpotScreen> createState() => _JjackpotScreenState();
}

class _JjackpotScreenState extends ConsumerState<JjackpotScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod(); // async 함수 실행
    });
  }

  // initState async 함수
  _asyncMethod() async {
    ref.read(myInfoProvider.notifier).setMyInfoData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Coming Soon!',
                  style: TextStyle(
                    fontFamily: 'Chaloops',
                    fontSize: 32.w,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30.w,
                ),
                Image(
                  image: const AssetImage('assets/images/guest/jjackpot.png'),
                  width: 244.w,
                  height: 194.w,
                ),
              ],
            ),
          ),
        ),
        // Expanded(
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: [
        //       SizedBox(
        //         width: 290.w,
        //         height: 226.w,
        //         child: Transform.translate(
        //           offset: Offset(0, 50.w),
        //           child: Stack(
        //             alignment: Alignment.center,
        //             children: [
        //               Image.asset(
        //                 'assets/images/jjackpot/jjackpot.png',
        //                 width: 290.w,
        //                 fit: BoxFit.fitWidth,
        //               ),
        //               Positioned(
        //                 left: 0,
        //                 right: 0,
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Image.asset(
        //                       'assets/images/common/lock_img.png',
        //                       width: 68.w,
        //                       fit: BoxFit.fitWidth,
        //                     ),
        //                     Text(
        //                       'Coming soon!',
        //                       style: TextStyle(
        //                         color: Colors.black,
        //                         fontSize: 20.w,
        //                         fontWeight: FontWeight.w600,
        //                         fontFamily: 'Chaloops',
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(
          height: DeviceHeight().navHeight(80.w),
        )
      ],
    );
  }
}
