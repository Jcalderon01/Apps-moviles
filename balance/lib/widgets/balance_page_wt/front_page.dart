import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/constants.dart';

class FrontPage extends StatelessWidget {
  FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _list = List.generate(
        10,
        (index) => Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(30),
              ),
            )));

    return Container(
      height: 800,
      decoration: Constant.sheetBoxDecoration(
          Theme.of(context).scaffoldBackgroundColor),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: _list,
      ),
    );
  }
}
