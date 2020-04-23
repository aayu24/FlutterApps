import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play(
        'note$soundNumber.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
  }

  Expanded buildTile({int soundNumber, Color color}) {
    //if we want to use named parameters enclose them in {}
    //can directly return expanded widget instead of widget
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  var tileColorsList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.deepPurple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildTile(soundNumber: 1, color: tileColorsList[0]),
              buildTile(soundNumber: 2, color: tileColorsList[1]),
              buildTile(soundNumber: 3, color: tileColorsList[2]),
              buildTile(color: Colors.green, soundNumber: 4),
              buildTile(color: Colors.blue, soundNumber: 5),
              buildTile(color: Colors.indigo, soundNumber: 6),
              buildTile(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
