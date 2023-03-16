import 'dart:math';

import 'package:balance/widgets/balance_page_wt/back_page.dart';
import 'package:balance/widgets/balance_page_wt/front_page.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  final _scrollController = ScrollController();

  double _desplazamiento = 0;

  void _escucha() {
    setState(() {
      _desplazamiento = _scrollController.offset / 100;
      print(_max);
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_escucha);
    _scrollController.dispose();
    super.dispose();
  }

  double get _max => max(90 - _desplazamiento * 90, 0.0);

  @override
  void initState() {
    _scrollController.addListener(_escucha);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$ 2,500",
                  style: TextStyle(
                      fontSize: 28, color: Color.fromARGB(255, 0, 255, 8)),
                ),
                Text("Balance",
                    style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(
              children: [
                const BackSheet(),
                Padding(
                  padding: EdgeInsets.only(top: _max),
                  child: FrontPage(),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
