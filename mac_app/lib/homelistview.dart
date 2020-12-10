import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: List.generate(10, (index) {
          /// 注意这里需要Return
          return Card(
            child: Container(
              height: 150,
              color: Colors.lightBlueAccent,
              child: Text('$index'),
            ),
          );
        }),
      ),
    );
  }
}

class HomeListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),

      ///ListView.builder 可以在往下滚动时不断产生新的，itemCount可以指定产生的最大值
      body: ListView.builder(
          itemCount: 20, //最多Build 20个
          itemBuilder: (context, index) {
            /// 注意这里需要Return
            return Card(
              child: Container(
                height: 150,
                color: Colors.cyan,
                child: Text('$index'),
              ),
            );
          }),
    );
  }
}
