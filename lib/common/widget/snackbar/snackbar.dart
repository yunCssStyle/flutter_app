import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class MineWarzMsgWrapper extends StatefulWidget {
  final Widget content;
  const MineWarzMsgWrapper(this.content, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MineWarzMsgWrapperState createState() => _MineWarzMsgWrapperState();
}

class _MineWarzMsgWrapperState extends State<MineWarzMsgWrapper>
    with AnimationMixin {
  StreamSubscription? _subscription;
  late MovieTween tween;
  late SnackBar bar = SnackBar(
    content: widget.content,
  );
  @override
  void initState() {
    super.initState();
    tween = MovieTween();
    tween
        .tween('opacity', Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 700))
        .thenTween('left', Tween(begin: 360.0, end: -360.0),
            duration: const Duration(seconds: 5))
        .thenTween('opacity', Tween(begin: 1.0, end: -0.0),
            duration: const Duration(milliseconds: 300));
    // Future.microtask(() async {
    //   await for (var message in MineWarzSnackBarBloc.newMessage) {
    //     showSnackBar(message);
    //   }
    // });
    _subscription = MineWarzSnackBarBloc.newMessage.listen((message) {
      showSnackBar(message);
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    tween = MovieTween();
    super.dispose();
  }

  void showSnackBar(MineWarzMsg msg) {
    // bar = SnackBar(
    //   actionOverflowThreshold: 0,
    //   elevation: 0,
    //   backgroundColor: Colors.transparent,
    //   dismissDirection: DismissDirection.none,
    //   clipBehavior: Clip.none,
    //   duration: const Duration(seconds: 10000),
    //   padding: EdgeInsets.zero,
    //   content: PlayAnimationBuilder<Movie>(
    //     tween: tween,
    //     duration: tween.duration,
    //     // onStarted: () => debugPrint('Animation started'),
    //     onCompleted: () => bar = SnackBar(
    //       content: widget.content,
    //     ),
    //     child: Text(
    //       msg.text,
    //       style: TextStyle(
    //         height: 1.4.w,
    //         fontSize: 14.w,
    //         color: Colors.white,
    //         fontFamily: 'ProximaSoft',
    //         fontWeight: FontWeight.w500,
    //       ),
    //       overflow: TextOverflow.visible,
    //       textAlign: TextAlign.left,
    //     ), // pass in static child
    //     builder: (context, value, child) {
    //       return Opacity(
    //         opacity: value.get('opacity'),
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 16.0.w),
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                 height: 27.h,
    //                 margin: EdgeInsets.only(bottom: 464.h),
    //                 child: Transform.translate(
    //                   offset: Offset(1, -1.h),
    //                   child: SvgPicture.asset(
    //                     height: 27.h,
    //                     'assets/images/common/snackbar_bg1.svg',
    //                     fit: BoxFit.fitHeight,
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                 child: Container(
    //                   height: 26.h,
    //                   clipBehavior: Clip.hardEdge,
    //                   decoration: BoxDecoration(
    //                       color: Colors.black.withOpacity(0.4),
    //                       borderRadius: BorderRadius.circular(0)),
    //                   margin: EdgeInsets.only(bottom: 464.h),
    //                   child: Stack(clipBehavior: Clip.antiAlias, children: [
    //                     Transform.translate(
    //                       offset: Offset(value.get('left'), 0),
    //                       child: child,
    //                     ),
    //                   ]),
    //                 ),
    //               ),
    //               Container(
    //                 height: 27.h,
    //                 margin: EdgeInsets.only(bottom: 464.h),
    //                 child: Transform.translate(
    //                   offset: Offset(0, -1.h),
    //                   child: SvgPicture.asset(
    //                     height: 27.h,
    //                     'assets/images/common/snackbar_bg2.svg',
    //                     fit: BoxFit.fitHeight,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );

    // ScaffoldMessenger.of(context).showSnackBar(bar);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
          'Like a new Snack bar!'), //snack bar의 내용. icon, button같은것도 가능하다.
      duration: const Duration(seconds: 5), //올라와있는 시간
      action: SnackBarAction(
        label: 'Undo', //버튼이름
        onPressed: () {}, //버튼 눌렀을때.
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return widget.content;
  }
}

class MineWarzMsg {
  MineWarzMsg(this.text, {this.bgColor});
  String text = "";
  Color? bgColor = Colors.teal;
}

class MineWarzSnackBarBloc {
  static final streamController = StreamController.broadcast();
  static Stream get newMessage => streamController.stream;
  static void showMessage(MineWarzMsg data) {
    streamController.sink.add(data);
  }

  dispose() {
    streamController.close();
  }
}
