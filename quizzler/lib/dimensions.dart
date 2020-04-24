import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenDimensions {
  double _screenWidth, _screenHeight;

  ScreenDimensions(context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  double getWidth() {
    return _screenWidth;
  }

  double getHeight() {
    return _screenHeight;
  }
}
