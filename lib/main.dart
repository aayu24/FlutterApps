import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play(
        'note$soundNumber.wav'); //audioplayer automatically assumes that you have your files inside an asset folder
  }

  Widget buildTile(int soundNumber, Color tilecolor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: tilecolor,
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
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildTile(1, Colors.red),
              buildTile(2, Colors.orange),
              buildTile(3, Colors.yellow),
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
