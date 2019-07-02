import 'package:flutter/material.dart';
class OtherBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "不规则底部导航",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: Text("底部大哦你该喊"),
    );
  }
}
