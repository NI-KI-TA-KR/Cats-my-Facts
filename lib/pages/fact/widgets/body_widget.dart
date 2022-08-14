import 'package:cats_my_facts/pages/fact/bloc/fact_bloc.dart';
import 'package:cats_my_facts/pages/fact/bloc/fact_event.dart';
import 'package:cats_my_facts/pages/fact/bloc/fact_state.dart';
import 'package:cats_my_facts/pages/fact/widgets/button_widget.dart';
import 'package:cats_my_facts/pages/fact/widgets/fact_succes_state_widget.dart';
import 'package:cats_my_facts/widgets/loading_widget.dart';
import 'package:cats_my_facts/pages/history/bloc/history_bloc.dart';
import 'package:cats_my_facts/pages/history/bloc/history_event.dart';
import 'package:cats_my_facts/pages/history/history_page.dart';
import 'package:cats_my_facts/utils/color.dart';
import 'package:cats_my_facts/utils/test_styles.dart';
import 'package:cats_my_facts/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.only(top: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w),
            child: Text('RANDOM FACT', style: AppTextStyles.title22White),
          ),
          SizedBox(
            height: 75.h,
            child: BlocBuilder<FactBloc, FactState>(
              builder: (context, state) {
                if (state is FactLoadingState) {
                  return const LoadingWidget();
                } else if (state is FactSuccessState) {
                  return FactSuccessStateWidget(
                    cat: state.cat,
                  );
                } else if (state is FactErrorState) {
                  return const AppErrorWidget();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.h, bottom: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                  titleWidget: Icon(
                    Icons.history,
                    color: AppColor.white,
                    size: 4.h,
                  ),
                  onTap: () {
                    context.read<HistoryBloc>().add(HistoryEvent.getHistory);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryPage(),
                      ),
                    );
                  },
                  size: Size(7.h, 7.h),
                  backgroundColor: AppColor.lightPrimary,
                ),
                AppButton(
                  titleWidget: Text(
                    "Next fact",
                    style: AppTextStyles.text14White,
                  ),
                  onTap: () {
                    context.read<FactBloc>().add(FactEvent.getFact);
                  },
                  size: Size(50.w, 7.h),
                  backgroundColor: AppColor.orange,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
