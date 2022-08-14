import 'package:cats_my_facts/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 50.h,
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.w),
          bottomLeft: Radius.circular(10.w),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.w)),
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
