import 'package:flutter/material.dart';

var dat = [
  ['1', '2', '3'],
  ['4', '9', '6'],
  ['7', '8', '5']
];

class HomePageOrder extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePageOrder> {
  void clicked() {
    print('button clicked');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyButton(
              clicked,
              MyText(dat[0][0]),
            ),
            MyButton(
              clicked,
              MyText(dat[0][1]),
            ),
            MyButton(
              clicked,
              MyText(dat[0][2]),
            ),
          ],
        ),
        Row(
          children: [
            MyButton(
              clicked,
              MyText(dat[1][0]),
            ),
            MyButton(
              clicked,
              MyText(dat[1][1]),
            ),
            MyButton(
              clicked,
              MyText(dat[1][2]),
            ),
          ],
        ),
        Row(
          children: [
            MyButton(
              clicked,
              MyText(dat[2][0]),
            ),
            MyButton(
              clicked,
              MyText(dat[2][1]),
            ),
            MyButton(
              clicked,
              MyText(dat[2][2]),
            ),
          ],
        ),
      ],
    );
  }
}

class MyText extends Text {
  ///final title = '' ;

  MyText(String data) : super(data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class MyButton extends RaisedButton {
  Function func;
  var name;

  MyButton(func, name) {
    this.func = func;
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    if (this.name.toString() == 'MyText("9")') {
      return Container(
        width: 100,
        height: 100,
        child: RaisedButton(
          onPressed: func,
          color: Colors.black,
          child: name,
        ),
      );
    }
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        onPressed: func,
        child: name,
      ),
    );
  }
}
