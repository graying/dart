import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function fhandler;
  final fname;

  AnswerButton(this.fname, this.fhandler);

  @override
  Widget build(BuildContext context) {
    return Container(

        ///width: double.infinity,
        color: Color.fromARGB(210, 12, 2, 102),
        child: RaisedButton(
          child: Text(fname),
          onPressed: fhandler,
        ));
  }
}
