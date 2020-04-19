import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            title: Center(
              child: Text('Dicee'),
            ),
            backgroundColor: Colors.red),
        body: DicePage(),
      ),
    ),
  );
}

//since we want to change image in a reactive way we have to use a stateful widget
//state part
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

//widget part of a stateful widget
class _DicePageState extends State<DicePage> {
  int leftDiceNumber =
      1; //so that this is instantiated only once, not every time we reload
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //resize to fill the entire row space
            //flex: 2, //twice as wide as the other one
            child: FlatButton(
              //want image to appear as button itself
              //comes with default padding of 16 from left and right
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                //what happens
                setState(() {
                  //so that we can call build whenever leftDiceNumber is changed
                  leftDiceNumber = 6;
                });
              },
            ),
          ),
          Expanded(
            //resize to fill the entire row space
            //flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                print('right button got pressed.');
              }, //this is example of a void callback
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//  //state of stateless widget never changes
//}
