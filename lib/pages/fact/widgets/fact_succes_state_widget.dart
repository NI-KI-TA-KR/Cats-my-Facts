import 'package:animate_do/animate_do.dart';
import 'package:cats_my_facts/data/models/cat.dart';
import 'package:cats_my_facts/pages/fact/widgets/fact_widget.dart';
import 'package:cats_my_facts/pages/fact/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FactSuccessStateWidget extends StatelessWidget {
  const FactSuccessStateWidget({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w, top: 5.h),
            child: FadeInRight(
              duration: const Duration(seconds: 3),
              child: ImageWidget(
                urlImage: cat.urlImage!,
              ),
            ),
          ),
          FactWidget(
            margin: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w),
            fact: cat.fact,
          ),
        ],
      ),
    );
  }
}
