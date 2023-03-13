import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegundaPAgina extends StatelessWidget {
  final String nombre;

  const SegundaPAgina({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Segunda"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [Text("$nombre")],
          ),
        ),
      ),
    );
  }
}
