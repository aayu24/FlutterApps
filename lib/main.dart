import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play(
        'note$soundNumber.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
  }

  Expanded buildTile(int soundNumber, Color tilecolor) {
    //can directly return expanded widget instead of widget
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: tilecolor,
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
              buildTile(1, tileColorsList[0]),
              buildTile(2, tileColorsList[1]),
              buildTile(3, tileColorsList[2]),
              buildTile(4, Colors.green),
              buildTile(5, Colors.blue),
              buildTile(6, Colors.indigo),
              buildTile(7, Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
