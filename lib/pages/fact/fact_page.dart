import 'package:cats_my_facts/pages/fact/widgets/body_widget.dart';
import 'package:cats_my_facts/utils/color.dart';
import 'package:flutter/material.dart';

class FactPage extends StatelessWidget {
  const FactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.primary,
          body: BodyWidget(),
        ),
      ),
    );
  }
}
