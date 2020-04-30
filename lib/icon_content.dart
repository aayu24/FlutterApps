import 'package:flutter/material.dart';

const genderTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

class GenderIcon extends StatelessWidget {
  final IconData genderIcon; //turns out this is an IconData type
  final String gender;
  GenderIcon({@required this.genderIcon, @required this.gender});
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
          gender,
          style: genderTextStyle,
        ),
      ],
    );
  }
}
