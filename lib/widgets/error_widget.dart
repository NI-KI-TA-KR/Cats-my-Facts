import 'package:cats_my_facts/utils/test_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.h),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            'assets/error.gif',
            width: 50.w,
            height: 20.h,
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            'OOOOPSSSSSS.....',
            style: AppTextStyles.title22White,
          ),
        ],
      ),
    );
  }
}
