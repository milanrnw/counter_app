import 'package:counter_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCounterApp());

  //print("hi");
}

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
