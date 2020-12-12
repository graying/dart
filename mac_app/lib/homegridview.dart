import 'package:flutter/material.dart';

class HomeGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeGridView> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(title: Text('GridView')),
      body: GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
        itemBuilder: (BuildContext context, int index) {
          var n = (index % 9);
          String imgPath = 'lib/img/pokemon$n.jpeg';
          print(imgPath);
          return new Card(
            child: new GridTile(
              footer: new Text('$index'),
              child: Image.asset(imgPath),
            ),
          );
        },
      ),
      // body: GridView.count(
      //   crossAxisCount: 2, //显示的列数
      //   childAspectRatio: 3 / 4, //每个显示单元的宽高比 default is 1/1
      //   children: [
      //     Card(child: Image.asset('lib/img/pokemon1.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon2.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon3.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon4.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon5.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon6.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon7.jpeg')),
      //     Card(child: Image.asset('lib/img/pokemon8.jpeg')),
      //   ],
      // ),
    );
  }
}
