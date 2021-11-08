import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xylophone",
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  Widget buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('assets_note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildKey(color: Colors.amber, noteNumber: 1),
            buildKey(color: Colors.red, noteNumber: 2),
            buildKey(color: Colors.blue, noteNumber: 3),
            buildKey(color: Colors.purple, noteNumber: 4),
            buildKey(color: Colors.green, noteNumber: 5),
            buildKey(color: Colors.pink, noteNumber: 6),
            buildKey(color: Colors.deepOrange, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}
