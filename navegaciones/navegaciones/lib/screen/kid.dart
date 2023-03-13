import 'package:flutter/material.dart';
import 'package:navegaciones/home_page.dart';

class Kid extends StatelessWidget {
  const Kid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(103, 130, 115, 1),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/gk.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Bitch, Don't Kill My Vibe"),
                subtitle: const Text("1:40"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/gk.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Backseat Freestyle"),
                subtitle: const Text("1:20"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/gk.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Money Trees"),
                subtitle: const Text("2:20"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/gk.jpg'),
                ),
                onTap: () {}),
          ),
          Expanded(
            child: ListTile(
                title: const Text("Swimming Pools "),
                subtitle: const Text("2:12"),
                trailing: const Icon(Icons.play_arrow),
                leading: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('assets/images/gk.jpg'),
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
              backgroundColor: Color.fromRGBO(103, 130, 115, 1),
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
