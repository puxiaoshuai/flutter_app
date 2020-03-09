import 'package:flutter/material.dart';
class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本"),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("hello flluter",style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            height: 1.2,
            fontFamily: 'helloworld',
            background: new Paint()..color=Colors.yellow,
          ),),
          Text("路漫漫其修远兮1，吾将上下而求索,吾将上下而求索,吾将上下而求索",maxLines: 1,overflow: TextOverflow.ellipsis,),
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: "地址"
              ),
              TextSpan(
                text: "www.baidu.com",
                style: TextStyle(
                  color: Colors.blue

                ),

              )
            ]
          )),
          Center(
            child: Container(
              child: Text("这是测试Alignment.center的作用，在contaner中的,线性渐变LinearGradient,设置线性渐变就不需要设置color了",style: TextStyle(color: Colors.white),),
              alignment: Alignment.center,
              width: 400,
              height: 400,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: new BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue,Colors.white]),
                border: Border.all(width: 2,color: Colors.red)
              ),
            ),
          )
        ],
      )
    );
  }
}
