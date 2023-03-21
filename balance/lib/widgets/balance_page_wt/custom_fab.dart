import 'package:balance/pages/add_expenses.dart';
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
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 800),
                  transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secAnimation,
                      Widget child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.easeOutBack);
                    return ScaleTransition(
                      alignment: const Alignment(1, 1),
                      scale: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secAnimation,
                  ) {
                    return const AddExpenses();
                  }));
          // Navigator.pushNamed(context, "addExpenses");
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
          Navigator.pushNamed(context, "addEntries");
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
