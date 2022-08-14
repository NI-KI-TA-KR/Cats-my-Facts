import 'package:cats_my_facts/data/models/cat.dart';

abstract class FactState {}

class FactLoadingState extends FactState {}

class FactErrorState extends FactState {}

class FactSuccessState extends FactState {
  FactSuccessState({
    required this.cat,
  });
  final Cat cat;
}
