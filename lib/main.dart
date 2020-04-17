import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//          child: Column(
//            //can put multiple children inside it
////            mainAxisAlignment: MainAxisAlignment.end, //by default this is start, so the widgets are laid out from the top
////            verticalDirection: VerticalDirection.up, //so that widgets are laid out in a bottom-up(3-2-1) manner rather than top-down(1-2-3)
////            mainAxisSize: MainAxisSize.min, //so that column takes up as much space as needed, by default it takes form top of phone to bottom
////            mainAxisAlignment:
////                //MainAxisAlignment.spaceEvenly, //spacing among the widgets
////                //MainAxisAlignment.spaceBetween, //widgets on the top, center, and bottom
//            crossAxisAlignment:
//                //CrossAxisAlignment.end, //horizontal alignment within the column
//                CrossAxisAlignment
//                    .stretch, //stretches all 3 containers across the width of the column
//            children: <Widget>[
//              Container(
////Container can only have single child inside it
//                height: 100.0,
////                width: 100.0, //no longer needed as overridden by stretch property of Column
////                margin: EdgeInsets.only(
////                    left:
////                        30.0), //this is for the container inside the safe area
////                padding: EdgeInsets.all(
////                    20.0), //this is for the inside/child of the container
//                color: Colors
//                    .white, //containers with no children try to be as big as possible
//                child: Text(
//                    'Container-1'), //with a child it takes up as much space as child
//              ),
//              SizedBox(
//                height: 20.0,
//              ),
//              Container(
////                width: 100.0,
//                height: 100.0,
//                color: Colors.blueAccent,
//                child: Text('Container-2'),
//              ),
//              Container(
////                width: 100.0,
//                height: 100.0,
//                color: Colors.redAccent,
//                child: Text('Container-3'),
//              ),
//              Container(
//                //causes all the widgets to shift to the right end of the screen - since width of column=infinity or right edge of screen
//                width: double.infinity,
//              )
//            ],
//          ),
//        ),
//      ),
//    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
