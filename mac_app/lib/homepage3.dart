import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage 3 AppBar'),
      ),
      body: Column(children: [
        Text('normal body text: Text Example'),
        Text(
          'normal text with style: TextStyle(color:Colors.blue)',
          style: TextStyle(color: Colors.blue),
        ),
        Text(
          'text with style: TextStyle(fontStyle: FontStyle.italic)',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          'text with style:TextStyle(fontWeight: FontWeight.w800)',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ]),
    );
  }
}
