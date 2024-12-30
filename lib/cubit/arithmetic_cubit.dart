// import 'package:flutter_bloc/flutter_bloc.dart';

// class ArithmeticCubit extends Cubit<int> {
//   ArithmeticCubit() : super(0);

//   void increment(
//     int num1,
//     int num2,
//   ) {
//     emit(num1 + num2);
//   }

//   void decrement(
//     int num1,
//     int num2,
//   ) {
//     emit(num1 - num2);
//   }

//   void product(
//     int num1,
//     int num2,
//   ) {
//     emit(num1 * num2);
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int> {
  ArithmeticCubit() : super(0);

  void increment(
    int num1,
    int num2,
  ) {
    emit(num1 + num2);
  }

  void decrement(
    int num1,
    int num2,
  ) {
    emit(num1 - num2);
  }

  void product(
    int num1,
    int num2,
  ) {
    emit(num1 * num2);
  }
}
