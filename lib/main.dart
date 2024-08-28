import 'package:bmi/HomePage.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "BMI TEST",
                style: TextStyle(
                    color: Color.fromARGB(255, 178, 152, 38),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            body: const HomePage()));
  }
}
