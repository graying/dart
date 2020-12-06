///macapp1.dart
import 'package:flutter/material.dart';
import 'answerbutton.dart';

/// 根据answers列表的元素数量动态生成按钮，点击后显示下一组
/// 注意List.map()函数的用法 前边有... 后边有toList（）
///
class MacApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MacApp2State();
  }
}

class MacApp2State extends State<MacApp2> {
  var answers = [
    ["red", "blue", "Green", "black", 'purple', 'white'],
    ["Tomato", "Patato", "Califlower", "Spinich", "egg"],
    ["FF", "Lizard", "Mice", "Hen"],
  ];

  var answerIndex = 0;

  void mySetState() {
    setState(() {
      print('called mySetsState');
    });
  }

  void clickButton(ans) {
    answerIndex += 1;
    if (answerIndex > 2) {
      answerIndex = 0;
    }
    print(ans);
    mySetState();
  }

  void clickButton1() {
    answerIndex = 1;
    mySetState();
  }

  void clickButton2() {
    answerIndex = 2;
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
            Text("first"),
            ...answers[answerIndex].map((ans) {
              return AnswerButton(ans, () => clickButton(ans));
            }).toList()
          ],
        ),
      ),
    );
  }
}
