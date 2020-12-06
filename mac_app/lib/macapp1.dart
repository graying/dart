///macapp1.dart
import 'package:flutter/material.dart';
import 'questionwidget.dart';
import 'answerbutton.dart';

/// example of stateful widget
class MacApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MacApp1State();
  }
}

class MacApp1State extends State<MacApp1> {
  int questionIndex = 0;
  var questions = ["Q1 - fav color:", "Q2 - Fav Food", "Q3 - Fav Pet"];
  var answers = [
    ["red", "blue", "Green"],
    ["Tomato", "Patato", "Califlower"],
    ["FF", "Lizard", "Pig"],
  ];
  var answerIndex = 0;

  void mySetState() {
    setState(() {
      questionIndex += 1;
      if (questionIndex > 2) questionIndex = 0;
    });
  }

  void clickButton() {
    answerIndex = 0;
    print(questions[questionIndex]);
    print(answers[questionIndex][answerIndex]);
    mySetState();
  }

  void clickButton1() {
    answerIndex = 1;
    print(questions[questionIndex]);
    print(answers[questionIndex][answerIndex]);
    mySetState();
  }

  void clickButton2() {
    answerIndex = 2;
    print(questions[questionIndex]);
    print(answers[questionIndex][answerIndex]);
    mySetState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Answer the question:"),
        ),
        body: Column(
          children: <Widget>[
            QuestionWidget(questions[questionIndex]),
            RaisedButton(
              onPressed: clickButton,
              child: Text(answers[questionIndex][0]),
            ),
            RaisedButton(
              onPressed: clickButton1,
              child: Text(answers[questionIndex][1]),
            ),
            AnswerButton(
              answers[questionIndex][2],
              clickButton2,
            ),
          ],
        ),
      ),
    );
  }
}
