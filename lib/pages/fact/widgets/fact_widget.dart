import 'package:cats_my_facts/utils/test_styles.dart';
import 'package:flutter/material.dart';

class FactWidget extends StatelessWidget {
  const FactWidget({
    Key? key,
    required this.fact,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String fact;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        fact,
        style: AppTextStyles.text14White,
      ),
    );
  }
}
