import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion2/pages/segundapagina.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Inicio",
                style: TextStyle(fontSize: 30),
              ),
              CupertinoButton(
                  child: Text("Ir a segunda pagina"),
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (__) => SegundaPAgina(
                              nombre: 'Jorge',
                            ));
                    Navigator.pushReplacement(context, route);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
