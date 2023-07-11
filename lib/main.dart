import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void func(int n) {
    Audio.load('assets/note$n.wav')
      ..play()
      ..dispose();
  }

  Widget buildKey(int n, Color c) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          // Play a sound as a one-shot, releasing its resources when it finishes playing.
          func(n);
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(c),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.indigo),
              buildKey(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
