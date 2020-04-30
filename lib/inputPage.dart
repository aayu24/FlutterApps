import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//these can be a const as we can work out this value at time of compilation
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

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
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight, //
          )
        ],
      ),
    );
  }
}

//Custom widget or Reusable widget
//Since this is stateless , it is immutable/can't be changed
class ReusableCard extends StatelessWidget {
  //key class not useful for us, as our widget is stateless/static on screen.\
  //final makes this property immutable , i.e can be set only once
  final Color colour;
  //the above can't be const as we only build this after compilation , hence can't resolve the Color at compile time
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
