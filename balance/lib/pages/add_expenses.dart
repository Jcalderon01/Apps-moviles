import 'package:balance/utils/constants.dart';
import 'package:balance/widgets/add_expenses_wt/bs_num_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:balance/utils/constants.dart';

class AddExpenses extends StatelessWidget {
  const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Agregar gastos"),
          elevation: 0,
        ),
        body: Column(
          children: [
            BSNumKeyboard(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: Constant.sheetBoxDecoration(
                    Theme.of(context).primaryColorDark),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("22 de marzo de 2023"),
                    Text("Seleccionar categoia"),
                    Text("Agregar comentario"),
                    Expanded(child: Center(child: Text("Boton")))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
