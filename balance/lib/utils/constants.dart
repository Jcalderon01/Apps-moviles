import 'package:flutter/cupertino.dart';

class Constant {
  static sheetBoxDecoration(Color color) {
    return BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)));
  }
}
