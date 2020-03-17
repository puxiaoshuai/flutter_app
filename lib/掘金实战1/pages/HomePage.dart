import 'package:flutter/material.dart';
import 'package:flutter_app/%E6%8E%98%E9%87%91%E5%AE%9E%E6%88%981/pages/GankPage.dart';
import 'package:flutter_app/%E6%8E%98%E9%87%91%E5%AE%9E%E6%88%981/pages/TestPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>  with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.purple,
            child: TabBar(
              isScrollable: false,
              indicatorColor: Colors.white,
              indicatorWeight: 1,
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.only(top: 2,bottom: 4),
              tabs: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.hot_tub,size: 20,),
                    Text("热点")
                  ],
                ),
                Icon(Icons.cake,size: 28,),
                Icon(Icons.directions_bike,size: 28,),
                Icon(Icons.score,size: 28,),

              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                GankPage(),
                TestPage(),
                TestPage(),
                TestPage(),
              ],
            ),
          )
        ],
      ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
