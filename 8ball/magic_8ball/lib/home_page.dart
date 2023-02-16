import 'package:flutter/material.dart';
import 'ball8.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Ball8(),
    );
  }
}