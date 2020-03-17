import 'package:flutter/material.dart';
import 'package:flutter_app/%E4%BB%A3%E5%8A%9E/Home.dart';
import '掘金实战1/pages/HomePage.dart';
import '掘金实战1/pages/FindPage.dart';
import '掘金实战1/pages/MinePage.dart';
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
          primaryColor: Colors.green,
          //点击高亮的颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.1),
          //水波纹
          splashColor: Color.fromRGBO(255, 255, 255, 0.5),
        ),
        title: "欢迎",
        home: new Home(),


     );
  }
}


