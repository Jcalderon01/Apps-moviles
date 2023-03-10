import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    "¿Los globulos rojos viven 4 meses?",
    "El cuerpo humano adulto tiene 306 huesos?",
    "La cobalamina es una vitamina",
    "true",
    "false",
    "false",
    "true"
  ];
  List<bool> respuestas = [
    true,
    false,
    true,
    true,
    false,
    false,
    true,
  ];

  int numeroPregunta = 0;
  respuesta(bool respuestaUsuario) {
    if (numeroPregunta >= preguntas.length - 1) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Quiz completado"),
            content: Text("Has respondido todas las preguntas"),
          );
        },
      );
    } else {
      bool respuestaCorrecta = respuestas[numeroPregunta];
      if (respuestaUsuario == respuestaCorrecta) {
        puntuacion.add(
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 40,
          ),
        );
      } else {
        puntuacion.add(
          const Icon(
            Icons.close,
            color: Colors.red,
            size: 40,
          ),
        );
      }
      numeroPregunta++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                preguntas[numeroPregunta],
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                child: const Text(
                  "Verdadero",
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
                onPressed: () {
                  setState(() {
                    respuesta(true);
                  });
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                child: const Text(
                  "Falso",
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    respuesta(false);
                  });
                },
              ),
            ),
          ),
        ),
        Row(
          children: puntuacion,
        ),
      ],
    );
  }
}
