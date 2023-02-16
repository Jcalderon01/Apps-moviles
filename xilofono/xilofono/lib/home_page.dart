import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Audio audio1 = Audio.load('assets/sounds/assets_note1.wav');
  Audio audio2 = Audio.load('assets/sounds/assets_note2.wav');
  Audio audio3 = Audio.load('assets/sounds/assets_note3.wav');
  Audio audio4 = Audio.load('assets/sounds/assets_note4.wav');
  Audio audio5 = Audio.load('assets/sounds/assets_note5.wav');
  Audio audio6 = Audio.load('assets/sounds/assets_note6.wav');
  Audio audio7 = Audio.load('assets/sounds/assets_note7.wav');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  audio1.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  audio2.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  audio3.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  audio4.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                onPressed: () {
                  audio5.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  audio6.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Container(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  audio7.play();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
