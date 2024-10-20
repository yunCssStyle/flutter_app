import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/common/custom_button.dart';

class NumberPagination extends StatefulWidget {
  /// Creates a NumberPagination widget.
  const NumberPagination({
    super.key,
    required this.onPageChanged,
    required this.pageTotal,
    this.threshold = 5,
    this.pageInit = 1,
    this.colorPrimary = Colors.black,
    this.colorSub = Colors.white,
    this.controlButton,
    this.iconToFirst,
    this.iconPrevious,
    this.iconNext,
    this.iconToLast,
    this.fontSize = 20,
    this.fontFamily = 'Chaloops',
  });

  ///Trigger when page changed
  final Function(int) onPageChanged;

  ///End of numbers.
  final int pageTotal;

  ///Page number to be displayed first
  final int pageInit;

  ///Numbers to show at once.
  final int threshold;

  ///Color of numbers.
  final Color colorPrimary;

  ///Color of background.
  final Color colorSub;

  ///to First, to Previous, to next, to Last Button UI.
  final Widget? controlButton;

  ///The icon of button to first.
  final Widget? iconToFirst;

  ///The icon of button to previous.
  final Widget? iconPrevious;

  ///The icon of button to next.
  final Widget? iconNext;

  ///The icon of button to last.
  final Widget? iconToLast;

  ///The size of numbers.
  final double fontSize;

  ///The fontFamily of numbers.
  final String? fontFamily;

  @override
  State<NumberPagination> createState() => _NumberPaginationState();
}

class _NumberPaginationState extends State<NumberPagination> {
  late int rangeStart;
  late int rangeEnd;
  late int currentPage;
  late final Widget iconToFirst;
  late final Widget iconPrevious;
  late final Widget iconNext;
  late final Widget iconToLast;

  @override
  void initState() {
    currentPage = widget.pageInit;
    iconToFirst = widget.iconToFirst ?? const Icon(Icons.first_page);
    iconPrevious = widget.iconPrevious ?? const Icon(Icons.keyboard_arrow_left);
    iconNext = widget.iconNext ?? const Icon(Icons.keyboard_arrow_right);
    iconToLast = widget.iconToLast ?? const Icon(Icons.last_page);

    _rangeSet();

    super.initState();
  }

  void _changePage(int page) {
    if (page <= 0) page = 1;

    if (page > widget.pageTotal) page = widget.pageTotal;

    setState(() {
      currentPage = page;
      _rangeSet();
      widget.onPageChanged(currentPage);
    });
  }

  void _rangeSet() {
    rangeStart = currentPage % widget.threshold == 0
        ? currentPage - widget.threshold
        : (currentPage ~/ widget.threshold) * widget.threshold;

    rangeEnd = rangeStart + widget.threshold;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          isDisabled: currentPage == 1,
          text: 'Prev',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 44.w,
          width: 60.w,
          fontSize: 18,
          textColor: Colors.black,
          onPressed: () => _changePage(--currentPage),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(
              rangeEnd <= widget.pageTotal
                  ? widget.threshold
                  : widget.pageTotal % widget.threshold, (index) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => (currentPage - 1) % widget.threshold == index
                  ? null
                  : _changePage(index + 1 + rangeStart),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                child: Text(
                  '${index + 1 + rangeStart}',
                  style: TextStyle(
                    fontSize: widget.fontSize.w,
                    fontFamily: widget.fontFamily,
                    color: (currentPage - 1) % widget.threshold == index
                        ? widget.colorSub
                        : widget.colorPrimary,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        CustomButton(
          isDisabled: currentPage == widget.pageTotal,
          text: 'Next',
          bgColor: AppColor.lightYellow,
          lienColor: AppColor.darkYellow,
          height: 44.w,
          width: 60.w,
          fontSize: 18,
          textColor: Colors.black,
          onPressed: () => _changePage(++currentPage),
        ),
      ],
    );
  }
}
