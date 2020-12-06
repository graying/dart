import 'package:flutter/material.dart';

class HomePageCard extends StatefulWidget {
  @override
  _State createState() => _State();
}

///Card size depends on it's child
///put child in a container can resize the card
///or use SizedBox() to specify a size for card as below

class _State extends State<HomePageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 70,
            child: Card(
              child: Text("Text in Card"),
            ),
          ),
          Card(
            child: Container(
              width: 100,
              height: 50,
              child: Text("Container is here"),
            ),
          )
        ],
      ),
    );
  }
}
