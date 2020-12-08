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

  void swapDat(x, y, x1, y1) {
    var tmp = dat[x][y];
    dat[x][y] = dat[x1][y1];
    dat[x1][y1] = tmp;

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
