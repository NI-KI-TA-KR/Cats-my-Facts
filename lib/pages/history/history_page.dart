import 'package:cats_my_facts/widgets/loading_widget.dart';
import 'package:cats_my_facts/pages/history/bloc/history_bloc.dart';
import 'package:cats_my_facts/pages/history/bloc/history_state.dart';
import 'package:cats_my_facts/pages/history/widgets/history_succes_state_widget.dart';
import 'package:cats_my_facts/utils/color.dart';
import 'package:cats_my_facts/utils/test_styles.dart';
import 'package:cats_my_facts/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          'HISTORY FACTS',
          style: AppTextStyles.title22White.copyWith(fontSize: 18.sp),
        ),
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: ((context, state) {
          if (state is HistoryLoadingState) {
            return const LoadingWidget();
          } else if (state is HistorySuccessState) {
            return HistorySuccessStateWidget(
              cats: state.cats,
            );
          } else if (state is HistoryErrorState) {
            return const AppErrorWidget();
          } else {
            return const SizedBox();
          }
        }),
      ),
    );
  }
}
