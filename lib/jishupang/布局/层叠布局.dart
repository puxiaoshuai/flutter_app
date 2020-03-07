import 'package:flutter/material.dart';
class Cengdie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Stack(
        //设置偏移位置，这是两个组件时，设置
        alignment: const FractionalOffset(0.5, 0.8),
        children: <Widget>[
          //在前面的在最下面的一层

          new CircleAvatar(
            backgroundImage: new NetworkImage("http://b-ssl.duitang.com/uploads/item/201410/09/20141009224754_AswrQ.jpeg",
            )
            ,
            //radius就是半径
            radius: 100.0,

          ),
          new Container(
            child: new Text("蒲小帅啊",style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),),
          ),


        ],
      ),
    );
  }
}