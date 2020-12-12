import 'package:flutter/material.dart';
import 'package:mac_app/HomeTextField.dart';
import 'package:mac_app/homepagecard.dart';
import 'package:mac_app/macapp2.dart';
import 'homegridview.dart';
import 'homepage3.dart';
import 'homepagecontainer.dart';
import 'HomePageOrder.dart';
import 'homelistview.dart';
import 'homeimage.dart';

void main() {
  var myApp = new MaterialApp(
    home: HomeGridView(),
    //home: HomePageOrder(),
    // home: HomeImageNetwork(),
  );
  runApp(myApp);
}

/// example of stateless widget
class MacApp extends StatelessWidget {
  void clickButton() {
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Column(
          children: <Widget>[
            Text("text1"),
            Text("text2"),
            RaisedButton(
              onPressed: clickButton,
              child: Text("RaisedButton"),
            )
          ],
        ),
      ),
    );
  }
}
