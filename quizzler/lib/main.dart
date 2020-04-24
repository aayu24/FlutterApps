import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dimensions.dart';

void main() => runApp(Quizzler());

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Padding> scoreList = [];
  ScreenDimensions screenDimensions;
  void getScreenDimensions() {
    screenDimensions = new ScreenDimensions(context);
    print('width:' + screenDimensions.getWidth().toString() + '\n');
    print('height:' + screenDimensions.getHeight().toString() + '\n');
  }

  void checkAnswer(bool userPickedAnswer, newcontext) {
    setState(() {
      //since we want the added icons to be shown
      if (quizBrain.isFinished()) {
        Alert(
            context: newcontext,
            title: "Thank You!!",
            desc: "The quiz is over.",
            buttons: [
              DialogButton(
                  color: Colors.lightGreenAccent,
                  radius: BorderRadius.circular(10.0),
                  child: Text(
                    'Ok',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  onPressed: () => Navigator.pop(newcontext)),
            ]).show();
        quizBrain.resetQno(); //resetting the question number
        scoreList.clear(); //clear the score
      } else {
        if (quizBrain.getQuestionAns() == userPickedAnswer) {
          scoreList.add(
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.check,
                color: Colors.lightGreenAccent.shade400,
                size: 20.0,
              ),
            ),
          );
        } else {
          scoreList.add(
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          );
        }
        quizBrain.getNextQuestion();
      }
    });
  }

  Widget QuestionCard() {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        elevation: 20.0,
        child: Center(
          child: ListTile(
            title: Text(
              'Q.' + (quizBrain.getCurrentQuestion()).toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            dense: false,
            subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        appBar: AppBar(
          title: Center(child: Text('Happy Quizzing')),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
          //use this instead of directly column , since we need to pass down the context to Alert for it to show
          //just directly using context inside MaterialApp would return null, since the context is above the MaterialApp
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: QuestionCard()),
                  )),
              SizedBox(
                width: double.infinity,
                height: 50.0,
              ),
              ButtonTheme(
                minWidth: 250.0,
                height: 60.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Expanded(
                  flex: 1,
                  child: RaisedButton(
                    child: Text(
                      'True',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(true, context);
                    },
                    color: Colors.greenAccent.shade100,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                minWidth: 250.0,
                height: 60.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Expanded(
                  flex: 1,
                  child: RaisedButton(
                    child: Text(
                      'False',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(false, context);
                    },
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 30.0,
                  width: double.infinity,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: scoreList,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//class Quizzler extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.blueGrey.shade100,
//        body: Padding(
//          padding: EdgeInsets.all(10.0),
//          child: Center(
//            child: QuizPage(),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class QuizPage extends StatefulWidget {
//  @override
//  _QuizPageState createState() => _QuizPageState();
//}
//
//class _QuizPageState extends State<QuizPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        SizedBox(
//          height: 200.0,
//        ),
//        Center(
//          child: Container(
//            width: 350.0,
//            height: 350.0,
//            child: Card(
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.all(Radius.circular(30.0)),
//              ),
//              color: Colors.lightGreenAccent.shade100,
//              elevation: 50.0,
//              child: Center(
//                child: Text(
//                  'Welcome to a brand new Quizzler quiz.',
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    color: Colors.black54,
//                    fontWeight: FontWeight.bold,
//                    fontSize: 25.0,
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.fromLTRB(70.0, 100.0, 70.0, 20.0),
//          child: ButtonTheme(
//            minWidth: 50.0,
//            height: 60.0,
//            child: RaisedButton(
//              elevation: 5.0,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              onPressed: () {},
//              color: Colors.lightGreenAccent.withOpacity(0.70),
//              child: Center(
//                child: Text(
//                  'True',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.fromLTRB(70.0, 10.0, 70.0, 0.0),
//          child: ButtonTheme(
//            minWidth: 50.0,
//            height: 60.0,
//            child: RaisedButton(
//              elevation: 5.0,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              onPressed: () {},
//              color: Colors.redAccent.withOpacity(0.70),
//              child: Center(
//                child: Text(
//                  'False',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      ],
//    );
//  }
//}
