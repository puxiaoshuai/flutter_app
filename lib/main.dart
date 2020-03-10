import 'package:flutter/material.dart';
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

class Home extends StatefulWidget {
  @override
  Home_State createState() => Home_State();
}

class Home_State extends State<Home> {
  int _currentIndex =0;
  List<Widget> _pageList = [
    MainPage(),
    FindPage(),
    MinePage(),
  ];
  List<BottomNavigationBarItem> _barItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页1')),
    BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('发现')),
    BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('我的')),
  ];
  //创建pageview控制器
  PageController _pageController;
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("爱看看"),
      ),
      body:PageView.builder(
        itemBuilder: (context, index) => _pageList[index],
        itemCount: _pageList.length,
        controller: _pageController,
        onPageChanged: _onPageChanged,

      ),
      bottomNavigationBar: BottomNavigationBar(

        elevation: 1,
        backgroundColor: Colors.white,
        onTap: (int index){
          setState(() {
            this._currentIndex =index;
          });
          _pageController.jumpToPage(index);

        },
        currentIndex:this._currentIndex,
        items: _barItem,
        fixedColor: Colors.purple,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,

      ),
    );

  }
}

