import 'package:flutter/material.dart';
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新路由"),
      ),
      body: Center(
        child: new Image.asset("images/icon1.jpg"),
      ),
    );
  }
}
