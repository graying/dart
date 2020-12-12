import 'package:flutter/material.dart';

class HomeGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView')),
      body: GridView.count(
        crossAxisCount: 2, //显示的列数
        childAspectRatio: 3 / 4, //每个显示单元的宽高比 default is 1/1
        children: [
          Card(child: Image.asset('lib/img/pokemon1.jpeg')),
          Card(child: Image.asset('lib/img/pokemon2.jpeg')),
          Card(child: Image.asset('lib/img/pokemon3.jpeg')),
          Card(child: Image.asset('lib/img/pokemon4.jpeg')),
          Card(child: Image.asset('lib/img/pokemon5.jpeg')),
          Card(child: Image.asset('lib/img/pokemon6.jpeg')),
          Card(child: Image.asset('lib/img/pokemon7.jpeg')),
          Card(child: Image.asset('lib/img/pokemon8.jpeg')),
        ],
      ),
    );
  }
}
