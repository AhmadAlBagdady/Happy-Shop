import 'package:flutter/material.dart';

class NewElseScreen extends StatelessWidget {
  const NewElseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Else Screen',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
