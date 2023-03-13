import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
              title: const Text("Ir al login"),
              subtitle: const Text("Go to login"),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(child: Text("Lg")),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                );
                Navigator.push(context, ruta);
              }),
        ],
      ),
    );
  }
}
