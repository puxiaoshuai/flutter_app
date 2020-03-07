import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程",
    //非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程
    textAlign: TextAlign.left,
        //省略号
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 255,150,150),
        //下划线
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.solid
      ),
    );
  }

}