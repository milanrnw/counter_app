import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text('This Is Home Screen'),
      ),
    );
  }
}