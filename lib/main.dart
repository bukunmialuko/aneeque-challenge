import 'package:aneeque_challenge/src/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aneeque Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
    );
  }
}
