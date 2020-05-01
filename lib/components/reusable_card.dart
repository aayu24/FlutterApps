import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //key class not useful for us, as our widget is stateless/static on screen.\
  //final makes this property immutable , i.e can be set only once
  final Color colour;
  final Widget cardChild;
  final Function tapDetector;
  //the above can't be const as we only build this after compilation , hence can't resolve the Color at compile time
  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.tapDetector}); //as we require colour

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapDetector,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        //to implement rounder border
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
