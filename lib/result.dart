import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.height, required this.weight});
  double height;
  double weight;

  @override
  Widget build(BuildContext context) {
    double bmicalc = weight / pow(height / 100, 2);
    String Result = "";
    switch (bmicalc) {
      case <= 16:
        Result = "Severe Thinness";
        break;
      case > 18.5 && < 25:
        Result = "Normal";
        break;
      case > 25 && < 30:
        Result = "OverWeight";
        break;
      case > 30:
        Result = "Obese";
        break;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 239, 2),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            " THE RESULT  IS   ",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            bmicalc.toStringAsFixed(2),
            style: const TextStyle(fontSize: 25),
          ),
          Text(
            Result,
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.repeat))
        ]),
      ),
    );
  }
}
