import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///extendBody: true,
      appBar: AppBar(
        title: Text('Container Examples'),
      ),
      body: Column(
        children: [
          Text('below is a container width:100 height:100'),
          Container(
            color: Colors.blueAccent,
            width: 100.0,
            height: 100.0,
          ),
          Row(
            children: [
              Container(
                color: Colors.blueAccent,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.redAccent,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.greenAccent,
                width: 100.0,
                height: 100.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
