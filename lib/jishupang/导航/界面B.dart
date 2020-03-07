import 'package:flutter/material.dart';
import 'package:flutter_app/jishupang/导航/界面A.dart';
class TowScreen extends StatelessWidget {
  final Goods product;
  TowScreen({Key key ,@required this.product}):super (key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("详情页"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context,"我是传递的值");
          },
          child: new Text("${product.desc}"),
        ),
      ),
    );
  }
}
