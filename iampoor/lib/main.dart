import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('I am POOR.'),
            ),
            backgroundColor: Colors.brown[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/hutimg.png'),
            ),
          ),
          backgroundColor: Colors.orange[200],
        ),
      ),
    );
