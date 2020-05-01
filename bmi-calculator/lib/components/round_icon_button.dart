import 'package:flutter/material.dart';

//Custom widget or Reusable widget
//Since this is stateless , it is immutable/can't be changed
//the properties for this can be gotten from digging into the FAB dart file
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({@required this.icon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation:
          5.0, //this is for enabled state, without onPressed the button is in disabled state
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
