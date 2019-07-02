import 'package:flutter/material.dart';
class DemoRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("以下是进阶案例"),
      ),
      body: new ListView(
        children: <Widget>[
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("底部导航",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.pink,
              height:60,
            ),
            onTap: (){
             Navigator.pushNamed(context, "bottom_nav");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("不规则底部导航",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.blue,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "botton_other");
            },
          )
        ],
      )
    );
  }
}
