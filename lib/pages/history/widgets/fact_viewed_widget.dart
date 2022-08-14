import 'package:cats_my_facts/data/models/cat.dart';
import 'package:cats_my_facts/utils/color.dart';
import 'package:cats_my_facts/utils/test_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FactViewedWidget extends StatelessWidget {
  const FactViewedWidget({
    Key? key,
    required this.catViewed,
  }) : super(key: key);

  final Cat catViewed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.h),
        border: Border.all(
          color: AppColor.primary,
          width: 0.5.w,
        ),
      ),
      child: Column(
        children: [
          Text(
            catViewed.fact,
            style: AppTextStyles.text12Black.copyWith(
              color: AppColor.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Length: ${catViewed.length}',
                  style: AppTextStyles.text12Black.copyWith(
                    color: AppColor.primary,
                  ),
                ),
                Text(
                  catViewed.dateViewedFormatted,
                  style: AppTextStyles.text12Black.copyWith(
                    color: AppColor.primary,
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
