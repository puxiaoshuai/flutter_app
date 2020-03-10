import 'package:flutter/material.dart';
import 'package:flutter_app/jishupang/组件/container组件.dart';
import 'package:flutter_app/jishupang/组件/text组件.dart';
import 'package:flutter_app/jishupang/组件/image组件.dart';
import 'package:flutter_app/jishupang/组件/list组件.dart';
import 'package:flutter_app/jishupang/组件/list动态.dart';
import 'package:flutter_app/jishupang/组件/网格组件.dart';
import 'package:flutter_app/jishupang/布局/不灵水平row.dart';
import 'package:flutter_app/jishupang/布局/灵活水平row.dart';
import 'package:flutter_app/jishupang/布局/垂直布局.dart';
import 'package:flutter_app/jishupang/布局/层叠布局.dart';
import 'package:flutter_app/jishupang/布局/多组件层叠布局.dart';
import 'package:flutter_app/jishupang/布局/卡片布局.dart';
import 'package:flutter_app/jishupang/导航/界面A.dart';
import 'package:flutter_app/界面结构/drawview.dart';
import 'package:flutter_app/界面结构/bottom_nav.dart';
import 'package:flutter_app/界面结构/pageview_demo.dart';
//主函数入口
void main() => runApp(MyApp());

//无状态组件
class MyApp extends StatelessWidget {
  //重写bulit方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.purple,
          //点击高亮的颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.1),
          //水波纹
          splashColor: Color.fromRGBO(255, 255, 255, 0.5),
        ),
        title: "欢迎",
        home: new Home());
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text("爱看看"),
          elevation: 0,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), tooltip: "搜索", onPressed: null)
          ],
          bottom: TabBar(
              //图标的颜色
              unselectedLabelColor: Colors.black26,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(Icons.view_carousel),
                )
              ]),
        ),
        drawer: new DrawerView(),
        body: TabBarView(
          children: <Widget>[
            FirstScreen(),
            Icon(
              Icons.change_history,
              size: 129,
            ),
            Icon(
              Icons.directions_bike,
              size: 128,
            ),
            PageViewDemo()
          ],
        ),
        bottomNavigationBar:Bottom_Nav()
      ),
    );
  }

}
//Center(
////container相当于div，铺满屏幕的
//// child:new TextWidget()
////child:new ImageWidget()
//// child:new ListWeight()
////child: new Listdong(),
//// child: new Wangge(),
//// child: new Linghuo(),
//// child:  new Chuizhi(),
//// child: new Cengdie2(),
////child: new Kapian(),
//child: new FirstScreen(),
//),
