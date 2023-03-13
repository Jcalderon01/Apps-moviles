import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({super.key});

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  int milisegundos = 0;
  int milisegundos2 = 0;
  bool estaCorriendo = false;
  late Timer timer;

  int numeroVuelta = 0;
  List<int> nvueltas = [];
  List<String> tiemposVueltas = [];
  List<String> tiemposVueltas2 = [];
  String tvuelta = "";
  bool ver = false;
  bool ver2 = false;

  void iniciarTiempo() {
    if (!estaCorriendo) {
      timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        this.milisegundos += 10;
        this.milisegundos2 += 10;
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  void detenerTiempo() {
    timer.cancel();
    estaCorriendo = false;
  }

  void vueltas() {
    setState(() {
      ver = true;
      String tiempo = formatearTiempo();
      tiemposVueltas.add(tiempo);

      String tiempo2 = formatearTiempo2();
      tiemposVueltas2.add(tiempo2);
      milisegundos2 = 0;
      //formatearTiempo2();
    });
  }

  String formatearTiempo() {
    Duration duration = Duration(milliseconds: this.milisegundos);

    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String horas = dosValores(duration.inHours);
    String minutos = dosValores(duration.inMinutes.remainder(60));
    String segundos = dosValores(duration.inSeconds.remainder(60));
    String miliSegundos = dosValores(duration.inMilliseconds.remainder(1000));
    String recortado = miliSegundos.substring(0, 2);

    return "$horas:$minutos:$segundos:$recortado";
  }

  String formatearTiempo2() {
    Duration duration = Duration(milliseconds: this.milisegundos2);

    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String horas = dosValores(duration.inHours);
    String minutos = dosValores(duration.inMinutes.remainder(60));
    String segundos = dosValores(duration.inSeconds.remainder(60));
    String miliSegundos = dosValores(duration.inMilliseconds.remainder(1000));
    String recortado = miliSegundos.substring(0, 2);

    return "$horas:$minutos:$segundos:$recortado";
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              formatearTiempo(),
              style: const TextStyle(fontSize: 50, color: Colors.white),
            ),
            Visibility(
              visible: ver,
              child: Text(
                formatearTiempo2(),
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.purple,
                    size: 55,
                  ),
                  onPressed: () {
                    iniciarTiempo();
                    ver2 = true;
                  },
                ),
                CupertinoButton(
                    child: Icon(
                      Icons.stop,
                      color: Colors.orange[700],
                      size: 55,
                    ),
                    onPressed: () {
                      detenerTiempo();
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Visibility(
                  visible: ver2,
                  child: Container(
                    width: 100,
                    height: 50,
                    child: CupertinoButton(
                        padding: EdgeInsetsDirectional.zero,
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                        child: const Text(
                          "Restart",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        onPressed: () {
                          numeroVuelta = 0;
                          nvueltas.clear();
                          milisegundos = 0;
                          milisegundos2 = 0;
                          ver = false;
                          ver2 = false;
                          tiemposVueltas.clear();
                          tiemposVueltas.clear;
                          tiemposVueltas2.clear;
                          tiemposVueltas2.clear();
                          detenerTiempo();
                          setState(() {});
                        }),
                  ),
                ),
                Visibility(
                  visible: ver2,
                  child: Container(
                    width: 100,
                    height: 50,
                    child: CupertinoButton(
                        padding: EdgeInsetsDirectional.zero,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                        minSize: 5,
                        child: const Text(
                          "Lap",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          vueltas();
                          numeroVuelta++;
                          nvueltas.add(numeroVuelta);
                          setState(() {});
                        }),
                  ),
                ),
              ],
            ),
            Divider(),
            Visibility(
              visible: ver,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Vuelta ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          Column(
                            children: [
                              for (var i = nvueltas.length - 1; i >= 0; i--)
                                Text(
                                  "${nvueltas[i]}",
                                  style: TextStyle(color: Colors.white),
                                ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Tiempo parcial ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          Column(
                            children: [
                              Column(
                                children: [
                                  for (var dato in tiemposVueltas2.reversed)
                                    Text(
                                      dato,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Tiempo total ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          Column(
                            children: [
                              Column(
                                children: [
                                  for (var dato in tiemposVueltas.reversed)
                                    Text(
                                      dato,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
