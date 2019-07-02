import 'package:flutter/material.dart';
import 'newrouter.dart';
import 'textdemo.dart';
import 'buttondemo.dart';
import 'imagedemo.dart';
import 'listdemo.dart';
import 'listdemo2.dart';
import 'griddemo.dart';
import 'bujuone.dart';
import 'project/demomain.dart';
import 'package:flutter_app/project/demo_bottom/bottom_navigation.dart';
import 'package:flutter_app/project/demo_bottom/other_navigation.dart';
import 'package:flutter_app/project/customrouter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '第一个flutter应用'),
      routes: {
        "new_page":(context)=>NewRoute(),
        "textdemo":(context)=>TextDemo(),
        'buttondemo':(context)=>ButtonDemo(),
        'imagedemo':(context)=>ImageDemo(),

        'listdemo':(context)=>ListDemo(),
        'listdemo2':(context)=>ListDemo2(),
        'griddemo':(context)=>GridDemo(),
        'bujudemo':(context)=>BujuDemo(),
        //demo主要文件
        'demoruter':(context)=>DemoRouter(),
        'bottom_nav':(context)=>BottomNavigationDemo(),
        'botton_other':(context)=>OtherBottom(),
      },
    );
  }
}

//创建一个有状态的组件
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("打印的值是$_counter");
  }
//对于StatefulWidget，将build方法放在State中，可以给开发带来很大的灵活性。
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("源代码更改不同路由进行跳转"),
              textColor: Colors.blue,
              onPressed: (){
//                Navigator.push(context, new MaterialPageRoute(builder: (context){
//                  return new NewRoute();
//                }));
             // Navigator.pushNamed(context, "new_page");
               //Navigator.pushNamed(context, "textdemo");
                //Navigator.pushNamed(context, "buttondemo");
                //Navigator.pushNamed(context, "imagedemo");
               // Navigator.pushNamed(context, "github");
               // Navigator.pushNamed(context, "listdemo2");
                //Navigator.pushNamed(context, "griddemo");
                Navigator.pushNamed(context, "bujudemo");
              },

            ),
            RaisedButton(
              child: Text("点击我去进阶"),
              onPressed: (){
//                Navigator.pushNamed(context, "demoruter");
              Navigator.of(context).push(CustomRoute(DemoRouter()));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
  }
}
