import 'package:flutter/material.dart';
class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表demo"),
      ),
      body: new Center(
         child: Container(
           height: 200,
           child: Mylsit(),

         ),

      )
    );
  }
}
class Mylsit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 100,
          color: Colors.red,
        ),
        new Container(
          width: 100,
          color: Colors.green,
        ), new Container(
          width: 100,
          color: Colors.blue,
        )
        , new Container(
          width: 100,
          color: Colors.pink,
        )
        , new Container(
          width: 100,
          color: Colors.black12,
        )
      ],
    );
  }
}

