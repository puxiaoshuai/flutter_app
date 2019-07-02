import 'package:flutter/material.dart';
import 'package:flutter_app/project/demo_bottom/pagehome.dart';
import 'package:flutter_app/project/demo_bottom/pagehot.dart';
import 'package:flutter_app/project/demo_bottom/pagetoutiao.dart';
import 'package:flutter_app/project/demo_bottom/pagemine.dart';
class BottomNavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航"),
      ),
      body:BottomBar()
    );
  }
}
class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => new _BottomBarState();
}

class _BottomBarState extends State<BottomBar>  {

  final _BottomNavigationColor=Colors.blue;
  final _chooseColor=Colors.pink;
  int _currentIndex=0 ;
  List<Widget> list=List();
  @override
  void initState() {
    // TODO: implement initState
    list..add(HomePage())..add(HotPage())..add(TouTiaoPage())..add(MinePage());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: list,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',

        child: Icon(
          Icons.add,
          color: Colors.white,
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex=index;

            });
          },
          items:
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("首页")

        )  ,
        BottomNavigationBarItem(
            icon: Icon(Icons.hot_tub,),
            title: Text("热点",)

        ),
      BottomNavigationBarItem(
       icon: Icon(Icons.search,),
       title: Text("头条",)

    ),
        BottomNavigationBarItem(
            icon: Icon(Icons.menu,),
            title: Text("我的",)

        )
      ],
      //多个的话，需要使用type 来进行缩放
      type: BottomNavigationBarType.fixed),

    );
  }
}

