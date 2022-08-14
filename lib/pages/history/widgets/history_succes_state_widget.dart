import 'package:cats_my_facts/data/models/cat.dart';
import 'package:cats_my_facts/pages/history/widgets/fact_viewed_widget.dart';
import 'package:flutter/material.dart';

class HistorySuccessStateWidget extends StatelessWidget {
  const HistorySuccessStateWidget({
    Key? key,
    required this.cats,
  }) : super(key: key);

  final List<Cat> cats;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: cats
            .map((cat) => FactViewedWidget(
                  catViewed: cat,
                ))
            .toList(),
      ),
    );
  }
}
