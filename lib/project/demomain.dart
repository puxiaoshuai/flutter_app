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
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("搜索",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.red,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "searchdemo");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("流失布局",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.purple,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "warpdemo");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("启动页",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.blue,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "sp");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("拖动",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.red,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "drag");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("登录页面",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.blue,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "login");
            },
          ),
          new GestureDetector(
            child: new Container(
              child: Center(
                child: Text("动画",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              color:Colors.pink,
              height:60,
            ),
            onTap: (){
              Navigator.pushNamed(context, "donghua");
            },
          )
        ],
      )
    );
  }
}
