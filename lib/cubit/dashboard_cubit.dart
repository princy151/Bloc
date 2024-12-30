import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/view/arithmetic_cubit_view.dart';
import 'package:bloc_starter/view/counter_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._arthimeticCubit,
    this._counterCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arthimeticCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: const CounterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arthimeticCubit,
          child: const ArithmeticCubitView(),
        ),
      ),
    );
  }
}
