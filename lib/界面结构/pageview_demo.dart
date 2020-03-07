import 'package:flutter/material.dart';
//pageview.bulder按需加载
class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(
        initialPage: 1,

        viewportFraction: 0.85
      ),
      children: <Widget>[
        new Container(
          child: Text("one",style: TextStyle(fontSize: 26),),
          color: Colors.orange
        ),
        new Container(
            child: Text("tow",style: TextStyle(fontSize: 26),),
            color: Colors.red
        ),
        new Container(
            child: Text("three",style: TextStyle(fontSize: 26),),
            color: Colors.blue
        )
      ],
    );
  }
}