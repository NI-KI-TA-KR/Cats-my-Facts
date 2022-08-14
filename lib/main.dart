import 'package:cats_my_facts/pages/fact/bloc/fact_bloc.dart';
import 'package:cats_my_facts/pages/fact/bloc/fact_event.dart';
import 'package:cats_my_facts/pages/fact/fact_page.dart';
import 'package:cats_my_facts/pages/history/bloc/history_bloc.dart';
import 'package:cats_my_facts/pages/history/bloc/history_event.dart';
import 'package:cats_my_facts/services/hive_init.dart';
import 'package:cats_my_facts/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await HiveHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => FactBloc()..add(FactEvent.getFact),
          ),
          BlocProvider(
            create: (_) => HistoryBloc()..add(HistoryEvent.getHistory),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cats My Facts',
          theme: ThemeData(primarySwatch: AppColor.primaryWatch),
          home: const FactPage(),
        ),
      ),
    );
  }
}
