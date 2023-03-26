import 'package:flutter/material.dart';

class BSNumKeyboard extends StatefulWidget {
  const BSNumKeyboard({super.key});

  @override
  State<BSNumKeyboard> createState() => _BSNumKeyboardState();
}

class _BSNumKeyboardState extends State<BSNumKeyboard> {
  String importe = "0.00";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        _numPad();
      },
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text("Cantidad ingresada"),
            Text(
              "\$ $importe",
              style: const TextStyle(
                  fontSize: 30, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _numPad() {
    if (importe == "0.00") importe = "";
    _num(String _text, double _height) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            if (importe == "0.00") importe = "";
            importe += _text;
          });
        },
        child: SizedBox(
          height: _height,
          child: Center(
            child: Text(
              _text,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
      );
    }

    showModalBottomSheet(
      barrierColor: Colors.transparent,
      //isDismissible: false,
      //enableDrag: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 900,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var _heigth = constraints.biggest.height / 5;
              return Column(
                children: [
                  Table(
                    border: TableBorder.symmetric(
                        inside: BorderSide(
                      // color: Colors.grey,
                      width: 0.8,
                    )),
                    children: [
                      TableRow(children: [
                        _num("1", _heigth),
                        _num("2", _heigth),
                        _num("3", _heigth)
                      ]),
                      TableRow(children: [
                        _num("4", _heigth),
                        _num("5", _heigth),
                        _num("6", _heigth)
                      ]),
                      TableRow(children: [
                        _num("1", _heigth),
                        _num("2", _heigth),
                        _num("3", _heigth)
                      ]),
                      TableRow(children: [
                        _num(".", _heigth),
                        _num("0", _heigth),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onLongPress: () {
                            setState(() {
                              importe = "0.00";
                            });
                          },
                          onTap: () {
                            setState(() {
                              if (importe.isNotEmpty) {
                                importe =
                                    importe.substring(0, importe.length - 1);
                              }
                            });
                          },
                          child: SizedBox(
                            height: _heigth,
                            child: const Icon(
                              Icons.backspace,
                              size: 35,
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text('Aceptar'),
                          onPressed: () {},
                        ),
                        SizedBox(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Text('Cancelar'),
                          onPressed: () {},
                        ),
                      ]),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
