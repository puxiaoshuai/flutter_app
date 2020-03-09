import 'package:flutter/material.dart';
import 'package:flutter_app/jishupang/组件/text组件.dart';
import 'package:flutter_app/jishupang/组件/image组件.dart';
class ContanerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //相当于div
    return Container(
//      child: new TextWidget(),
      child: new ImageWidget(),
      alignment: Alignment.center,
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(10),
      margin:  const EdgeInsets.all(10),
      //decoration背景和边框
      decoration: new BoxDecoration(
          color: Colors.red,
          //设置渐变
          gradient: const LinearGradient(colors: [Colors.lightBlue,Colors.purple]),
          border:Border.all(width: 2,color: Colors.black)
      ),

    );
  }

}