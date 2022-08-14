import 'package:cats_my_facts/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle title22White = GoogleFonts.blackHanSans(
    textStyle: TextStyle(
      fontSize: 24.sp,
      color: AppColor.white,
    ),
  );

  static TextStyle text14White = GoogleFonts.blackHanSans(
    textStyle: TextStyle(
      fontSize: 14.sp,
      color: AppColor.white,
    ),
  );

  static TextStyle text12Black = GoogleFonts.blackHanSans(
    textStyle: TextStyle(
      fontSize: 12.sp,
      color: AppColor.black,
    ),
  );
}
