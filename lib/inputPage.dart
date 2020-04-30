import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(colour: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Custom widget or Reusable widget
class ReusableCard extends StatelessWidget {
  //key class not useful for us, as our widget is stateless/static on screen.
  final Color
      colour; //final makes this property immutable , i.e can be set only once
  ReusableCard({@required this.colour}); //as we require colour

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      //to implement rounder border
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
