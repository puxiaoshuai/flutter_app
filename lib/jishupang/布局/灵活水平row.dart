import 'package:flutter/material.dart';

//Expanded使用这个包裹，就是灵活的，不存在超出屏幕的问题提示
//下面就是混用的方式
class Linghuo extends StatelessWidget {
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
        new Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.purple,
            child: new Text("紫色按钮"),
          ),
        ),
        new Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.purple,
            child: new Text("紫色按钮"),
          ),
        )
      ],
    );
  }
}
