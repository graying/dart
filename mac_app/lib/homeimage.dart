import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeImageNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: ListView(
        children: [
          Image.network('https://graying.github.io/Pic/s.png',
              height: 300, alignment: Alignment.topCenter),
          Image.network(
            'https://graying.github.io/Pic/s.png',
            height: 100,
            fit: BoxFit.cover,
          ),
          Image.asset('lib/img/terraria.png'),
          Image.network('https://graying.github.io/Pic/s.png'),
          Image.network('https://graying.github.io/Pic/s.png'),
          Image.network('https://graying.github.io/Pic/s.png'),
          Image.network('https://graying.github.io/Pic/s.png'),
        ],
      ),
    );
  }
}
