import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text('This Is Profile Screen'),
      ),
    );
  }
}