import 'package:flutter/material.dart';
import 'package:navegaciones/home_page.dart';

class Damn extends StatelessWidget {
  const Damn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dman.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
                title: const Text("DNA"),
                subtitle: const Text("3:05"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/dman.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("HUMBLE"),
                subtitle: const Text("2:57"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/dman.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("XXX"),
                subtitle: const Text("4:14"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/dman.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("DUCKWORTH"),
                subtitle: const Text("4:08"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/dman.jpg'),
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
              backgroundColor: Colors.red,
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
