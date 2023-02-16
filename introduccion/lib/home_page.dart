import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Introduccion a flutter",
          style: TextStyle(fontSize: 30),
        )),
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 50,
        ),
      ),
      body: Text(""),
    );
  }
}
