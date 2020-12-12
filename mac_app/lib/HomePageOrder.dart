import 'package:flutter/material.dart';
import 'dart:math';

var dat = [
  ['1', '2', '3'],
  ['4', '5', '6'],
  ['7', '8', '9']
];

class HomePageOrder extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePageOrder> {
  ///AudioCache _audioStop;
  int stepCount = 0;

  @override
  void initState() {
    super.initState();
    newPuzzle();

    ///_audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  void newPuzzle() {
    dat = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9']
    ];
    var rng = new Random();
    for (int i = 0; i < 300; i++) {
      if (rng.nextInt(9) == 0) clicked00();
      if (rng.nextInt(9) == 1) clicked01();
      if (rng.nextInt(9) == 2) clicked02();
      if (rng.nextInt(9) == 3) clicked10();
      if (rng.nextInt(9) == 4) clicked11();
      if (rng.nextInt(9) == 5) clicked12();
      if (rng.nextInt(9) == 6) clicked20();
      if (rng.nextInt(9) == 7) clicked21();
      if (rng.nextInt(9) == 8) clicked22();
    }
    stepCount = 0;
  }

  void autoComplete() {
    dat = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9']
    ];
    setState(() {});
  }

  void swapDat(x, y, x1, y1) {
    var tmp = dat[x][y];
    dat[x][y] = dat[x1][y1];
    dat[x1][y1] = tmp;

    stepCount++;
    setState(() {});
  }

  void clicked00() {
    print('button00 clicked');
    if (dat[0][1] == '9') {
      swapDat(0, 0, 0, 1);
    } else if (dat[1][0] == '9') {
      swapDat(0, 0, 1, 0);
    }
  }

  void clicked01() {
    print('button01 clicked');
    if (dat[0][0] == '9') {
      swapDat(0, 1, 0, 0);

      ///_audioStop
    } else if (dat[1][1] == '9') {
      swapDat(0, 1, 1, 1);
    } else if (dat[0][2] == '9') {
      swapDat(0, 1, 0, 2);
    }
  }

  void clicked02() {
    print('button02 clicked');
    if (dat[0][1] == '9') {
      swapDat(0, 2, 0, 1);
    } else if (dat[1][2] == '9') {
      swapDat(0, 2, 1, 2);
    }
  }

  void clicked10() {
    print('button10 clicked');
    if (dat[0][0] == '9') {
      swapDat(1, 0, 0, 0);
    } else if (dat[1][1] == '9') {
      swapDat(1, 0, 1, 1);
    } else if (dat[2][0] == '9') {
      swapDat(1, 0, 2, 0);
    }
  }

  void clicked11() {
    print('button11 clicked');
    if (dat[1][0] == '9') {
      swapDat(1, 1, 1, 0);
    } else if (dat[0][1] == '9') {
      swapDat(1, 1, 0, 1);
    } else if (dat[1][2] == '9') {
      swapDat(1, 1, 1, 2);
    } else if (dat[2][1] == '9') {
      swapDat(1, 1, 2, 1);
    }
  }

  void clicked12() {
    print('button12 clicked');
    if (dat[0][2] == '9') {
      swapDat(1, 2, 0, 2);
    } else if (dat[1][1] == '9') {
      swapDat(1, 2, 1, 1);
    } else if (dat[2][2] == '9') {
      swapDat(1, 2, 2, 2);
    }
  }

  void clicked20() {
    print('button20 clicked');
    if (dat[1][0] == '9') {
      swapDat(2, 0, 1, 0);
    } else if (dat[2][1] == '9') {
      swapDat(2, 0, 2, 1);
    }
  }

  void clicked21() {
    print('button21 clicked');
    if (dat[2][0] == '9') {
      swapDat(2, 1, 2, 0);
    } else if (dat[1][1] == '9') {
      swapDat(2, 1, 1, 1);
    } else if (dat[2][2] == '9') {
      swapDat(2, 1, 2, 2);
    }
  }

  void clicked22() {
    print('button22 clicked');
    if (dat[2][1] == '9') {
      swapDat(2, 2, 2, 1);
    } else if (dat[1][2] == '9') {
      swapDat(2, 2, 1, 2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Puzzle'),
      ),
      body: Column(
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
          MyButton(
            newPuzzle,
            MyText('New'),
          ),
          Card(
            child: Container(
              child: MyText('$stepCount'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          if (idx == 0) newPuzzle();
          if (idx == 1) autoComplete();
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Colors.black),
            label: 'Auto',
          ),
        ],
      ),
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

// ignore: must_be_immutable
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
        width: 125,
        height: 125,
        child: RaisedButton(
          onPressed: null,
          color: Colors.black,
          child: null,
        ),
      );
    } else
      return Container(
        width: 125,
        height: 125,
        padding: EdgeInsets.all(5),
        child: RaisedButton(
          onPressed: func,
          child: name,
        ),
      );
  }
}
