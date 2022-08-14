import 'package:cats_my_facts/utils/color.dart';
import 'package:cats_my_facts/utils/typedef.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.titleWidget,
    required this.onTap,
    required this.size,
    this.backgroundColor = AppColor.white,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final Color backgroundColor;
  final Size size;
  final Widget titleWidget;
  final OnTap onTap;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: margin,
        height: size.height,
        width: size.width,
        child: titleWidget,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(3.5.w),
        ),
      ),
    );
  }
}
