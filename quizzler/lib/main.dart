import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  int qno = 0;
  List<Question> questions = [
    Question(q: 'You can lead a cow downstairs but not upstairs.', ans: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        ans: true),
    Question(q: 'A slug\'s blood is green.', ans: true)
  ];
  List<Padding> scoreList = [];

  Widget QuestionCard(int qno) {
    return Container(
      width: 300.0,
      height: 300.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        elevation: 20.0,
        child: Center(
          child: ListTile(
            title: Text(
              'Q.' + (qno + 1).toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            dense: false,
            subtitle: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                questions[qno].questionText,
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
        backgroundColor: Colors.deepPurple,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Center(child: QuestionCard(qno)),
            SizedBox(
              width: double.infinity,
              height: 50.0,
            ),
            ButtonTheme(
              minWidth: 150.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                  if (questions[qno].questionAns == true) {
                    scoreList.add(
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
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
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                  setState(() {
                    qno++;
                  });
                },
                color: Colors.greenAccent.shade100,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ButtonTheme(
              minWidth: 150.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                  if (questions[qno].questionAns == false) {
                    scoreList.add(
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.lightGreenAccent.shade400,
                        ),
                      ),
                    );
                  } else {
                    scoreList.add(
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                  setState(() {
                    qno++;
                  });
                },
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: double.infinity,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: scoreList,
            ),
          ],
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
