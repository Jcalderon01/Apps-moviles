import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  //statefull cambiar
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var dadoizquierdo = 1;
  var dadoderecho = 1;

  // void randomizar() {
  //   setState(() {
  //     dadoizquierdo = Random().nextInt(6) + 1;
  //     dadoderecho = Random().nextInt(6) + 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        dado(Random().nextInt(6) + 1),
        dado(Random().nextInt(6) + 1),
      ],
    );
  }

  Expanded dado(valorDado) {
    return Expanded(
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/dice$valorDado.png"),
        ),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
