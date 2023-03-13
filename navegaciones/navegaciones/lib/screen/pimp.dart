import 'package:flutter/material.dart';
import 'package:navegaciones/home_page.dart';

class Pimp extends StatelessWidget {
  const Pimp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 182, 182, 1),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pim.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Wesley theory"),
                subtitle: const Text("4:47"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/pim.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("King kunta"),
                subtitle: const Text("3:54"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/pim.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Alright"),
                subtitle: const Text("3:39"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/pim.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("i"),
                subtitle: const Text("5:56"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/pim.jpg'),
                ),
                onTap: () {}),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            top: 46,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const HomePage(),
                );
                Navigator.push(context, ruta);
              },
              backgroundColor: Color.fromRGBO(182, 182, 182, 1),
              child: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
