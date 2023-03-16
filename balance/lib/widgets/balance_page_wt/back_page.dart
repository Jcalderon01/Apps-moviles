import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    _cabezeras(String name, String cantidad, Color color) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 5),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Text(
            cantidad,
            style: TextStyle(fontSize: 20, letterSpacing: 1.5, color: color),
          )
        ],
      );
    }

    return Container(
      height: 250,
      decoration:
          Constant.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _cabezeras(
              "Ingresos", "\$3,500.00", Color.fromARGB(255, 59, 170, 63)),
          const VerticalDivider(
            thickness: 2,
          ),
          _cabezeras("Gastos", "\$3,500.00", Colors.red),
        ],
      ),
    );
  }
}
