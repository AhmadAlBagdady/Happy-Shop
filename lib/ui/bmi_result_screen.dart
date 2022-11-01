import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

   BmiResultScreen({
    required this.result,
   required this.isMale,
   required this.age
});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Gender : ${isMale ? 'Male':'Female'}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Result : ${result.round()}',
                    style: const TextStyle(
                    fontSize: 25,
                  ),
                  ),
                  Text(
                    'Age : $age',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
