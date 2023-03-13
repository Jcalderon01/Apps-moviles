import 'package:flutter/material.dart';
import 'package:navegaciones/home_page.dart';

class Mr extends StatelessWidget {
  const Mr({super.key});

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
                image: AssetImage('assets/images/mr.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
                title: const Text("N95"),
                subtitle: const Text("4:47"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/mr.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Mirror"),
                subtitle: const Text("3:54"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/mr.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("World wide stepper"),
                subtitle: const Text("3:39"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/mr.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Savior"),
                subtitle: const Text("5:56"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/mr.jpg'),
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
              backgroundColor: Color.fromRGBO(234, 206, 158, 0.8),
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
