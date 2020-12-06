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
  ///AudioCache _audioStop;

  @override
  void initState() {
    super.initState();

    ///_audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  void clicked00() {
    print('button00 clicked');
    setState(() {});
  }

  void clicked01() {
    print('button01 clicked');
    var tmp = dat[0][1];
    if (tmp == '9') {
      return;

      ///_audioStop
    }
    dat[0][1] = '9';
    dat[1][1] = tmp;
    setState(() {});
  }

  void clicked02() {
    print('button02 clicked');
    setState(() {});
  }

  void clicked10() {
    print('button10 clicked');
    setState(() {});
  }

  void clicked11() {
    print('button11 clicked');
    setState(() {});
  }

  void clicked12() {
    print('button12 clicked');
    setState(() {});
  }

  void clicked20() {
    print('button20 clicked');
    setState(() {});
  }

  void clicked21() {
    print('button21 clicked');
    setState(() {});
  }

  void clicked22() {
    print('button22 clicked');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyButton(
              clicked00,
              MyText(dat[0][0]),
            ),
            MyButton(
              clicked01,
              MyText(dat[0][1]),
            ),
            MyButton(
              clicked02,
              MyText(dat[0][2]),
            ),
          ],
        ),
        Row(
          children: [
            MyButton(
              clicked10,
              MyText(dat[1][0]),
            ),
            MyButton(
              clicked11,
              MyText(dat[1][1]),
            ),
            MyButton(
              clicked12,
              MyText(dat[1][2]),
            ),
          ],
        ),
        Row(
          children: [
            MyButton(
              clicked20,
              MyText(dat[2][0]),
            ),
            MyButton(
              clicked21,
              MyText(dat[2][1]),
            ),
            MyButton(
              clicked22,
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
