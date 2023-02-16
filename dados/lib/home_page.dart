import 'package:dados/dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Dados",
        )),
      ),
      body: const Dice(),
    );
  }
}
