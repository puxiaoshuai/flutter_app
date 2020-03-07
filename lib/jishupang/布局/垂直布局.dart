import 'package:flutter/material.dart';
//Expanded这个就像flex撑开
class Chuizhi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      textDirection: TextDirection.ltr,
      //main是主轴，cross是副轴
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Center(child: new Text("蒲小帅"),),
        Expanded(child: new Text("hhhh"),),
        new Text("蒲小帅")
      ],
    );
  }
}