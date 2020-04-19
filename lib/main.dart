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

class DicePage extends StatelessWidget {
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
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                //what happens
                print('left button got pressed');
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
