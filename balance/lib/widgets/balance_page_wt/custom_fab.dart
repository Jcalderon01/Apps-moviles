import 'package:balance/pages/add_expenses.dart';
import 'package:balance/widgets/animation/custom_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomFAB extends StatelessWidget {
  CustomFAB({super.key});

  List<SpeedDialChild> botones = [];

  @override
  Widget build(BuildContext context) {
    //boton para agragar gastos
    botones.add(
      SpeedDialChild(
        backgroundColor: Colors.red,
        child: const Icon(Icons.remove),
        label: "Gasto",
        labelStyle: const TextStyle(fontSize: 18),
        onTap: () {
          Navigator.push(
              context,
              CustomAnimation(
                  page: const AddExpenses(),
                  duracion: const Duration(milliseconds: 800),
                  alineacion: const Alignment(0.8, 1)));
        },
      ),
    );

    //boton para agregar ingresos
    botones.add(
      SpeedDialChild(
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
        label: "Ingreso",
        labelStyle: const TextStyle(fontSize: 18),
        onTap: () {
          Navigator.push(
              context,
              CustomAnimation(
                  page: const AddExpenses(),
                  duracion: const Duration(milliseconds: 800),
                  alineacion: const Alignment(0.8, 1)));
        },
      ),
    );

    return SpeedDial(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
      childMargin: const EdgeInsets.symmetric(horizontal: 8),
      childrenButtonSize: const Size(65, 65),
      icon: Icons.add,
      activeIcon: Icons.close,
      children: botones,
    );
  }
}
