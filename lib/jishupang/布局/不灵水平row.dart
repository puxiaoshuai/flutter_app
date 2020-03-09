import 'package:flutter/material.dart';

class Buling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: () {},
          color: Colors.redAccent,
          child: new Text("红色按钮"),
        ),
        new RaisedButton(
          onPressed: () {},
          color: Colors.blue,
          child: new Text("蓝色按钮"),
        ),
        new RaisedButton(
          onPressed: () {},
          color: Colors.green,
          child: new Text("褐色按钮"),
        ),
        new RaisedButton(
          onPressed: () {},
          color: Colors.purple,
          child: new Text("紫色按钮"),
        ),
        new RaisedButton(
          onPressed: () {},
          color: Colors.purple,
          child: new Text("紫色按钮"),
        ),
      ],
    );
  }
}
