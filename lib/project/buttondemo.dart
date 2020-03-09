import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("漂浮按钮"),
            onPressed: (){
              print("点击了我");
            },
          ),
          FlatButton(
            child: Text("扁平按钮"),
            onPressed: (){
              print("点击了扁平按钮");
            },
          ),
          OutlineButton(
            child: Text("outlineButton"),
            onPressed: (){
              print("点击了outline");
            },
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            color: Colors.blue,
            onPressed: (){
              print("点击了图标按钮");
            },
          ),
          Text("更多详情点击查看源代码")
        ],
      )
    );
  }
}
