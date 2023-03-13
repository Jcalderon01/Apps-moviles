import 'package:flutter/material.dart';
import 'package:navegaciones/screen/damn.dart';
import 'package:navegaciones/screen/kid.dart';
import 'package:navegaciones/screen/login_screen.dart';
import 'package:navegaciones/screen/mr.dart';
import 'package:navegaciones/screen/pimp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 206, 158, 0.8),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/portada.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Good kid maad city"),
                subtitle: const Text("2012"),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/gk.jpg'),
                ),
                onTap: () {
                  final ruta = MaterialPageRoute(
                    builder: (_) => const Kid(),
                  );
                  Navigator.push(context, ruta);
                }),
          ),
          Expanded(
            child: ListTile(
                title: const Text("To pimp a butterfly"),
                subtitle: const Text("2015"),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/pim.jpg'),
                ),
                onTap: () {
                  final ruta = MaterialPageRoute(
                    builder: (_) => const Pimp(),
                  );
                  Navigator.push(context, ruta);
                }),
          ),
          Expanded(
            child: ListTile(
                title: const Text("DAMN"),
                subtitle: const Text("2017"),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/dman.jpg'),
                ),
                onTap: () {
                  final ruta = MaterialPageRoute(
                    builder: (_) => const Damn(),
                  );
                  Navigator.push(context, ruta);
                }),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Mr. Morale & the Big Steppers"),
                subtitle: const Text("2022"),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/mr.jpg'),
                ),
                onTap: () {
                  final ruta = MaterialPageRoute(
                    builder: (_) => const Mr(),
                  );
                  Navigator.push(context, ruta);
                }),
          ),
        ],
      ),
    );
  }
}
