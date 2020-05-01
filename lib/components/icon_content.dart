import 'package:flutter/material.dart';
import '../constants.dart';

class GenderIcon extends StatelessWidget {
  final IconData genderIcon; //turns out this is an IconData type
  final String label;
  GenderIcon({@required this.genderIcon, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
