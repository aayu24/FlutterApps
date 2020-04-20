import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound() {
    final player = AudioCache();
    player.play(
        'note1.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note2.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note3.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note4.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note5.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note6.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.indigo,
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play(
                      'note7.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
                },
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
