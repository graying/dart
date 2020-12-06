import 'package:flutter/material.dart';

/// example of a widget return an text center in horization
class QuestionWidget extends StatefulWidget {
  String questionText;
  QuestionWidget(this.questionText);

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(110, 2, 202, 202),
      child: Text(
        widget.questionText,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
