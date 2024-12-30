// import 'package:flutter/material.dart';

// class ArithmeticCubitView extends StatelessWidget {
//   const ArithmeticCubitView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Arithmetic Cubit"),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Enter first number',
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                 ),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                 ),
//                 labelText: 'Enter second number',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Result: 0',
//               style: TextStyle(fontSize: 30),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('Add'),
//               ),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('Substract'),
//               ),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('Multiply'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNumberController = TextEditingController();
    final TextEditingController secondNumberController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Cubit'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'First Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Second Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<ArithmeticCubit, int>(builder: (context, state) {
              return Text(
                'Result: $state',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final int? num1 = int.tryParse(firstNumberController.text);
                final int? num2 = int.tryParse(secondNumberController.text);
                if (num1 != null && num2 != null) {
                  context.read<ArithmeticCubit>().increment(num1, num2);
                }
              },
              child: const Text('Add'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                final int? num1 = int.tryParse(firstNumberController.text);
                final int? num2 = int.tryParse(secondNumberController.text);
                if (num1 != null && num2 != null) {
                  context.read<ArithmeticCubit>().decrement(num1, num2);
                }
              },
              child: const Text('Subtract'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                final int? num1 = int.tryParse(firstNumberController.text);
                final int? num2 = int.tryParse(secondNumberController.text);
                if (num1 != null && num2 != null) {
                  context.read<ArithmeticCubit>().product(num1, num2);
                }
              },
              child: const Text('Multiply'),
            ),
          ],
        ),
      ),
    );
  }
}
