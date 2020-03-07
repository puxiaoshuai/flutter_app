import 'package:flutter/material.dart';
class Kapian  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text("蒲小帅"),
            leading: new Icon(Icons.hot_tub),
            subtitle: new Text("今天是星期天"),
          ),
          new Divider(),
          ListTile(
            title: new Text("蒲小帅"),
            leading: new Icon(Icons.hot_tub),
            subtitle: new Text("今天是星期天"),
          ),
          new Divider(),
          ListTile(
            title: new Text("蒲小帅"),
            leading: new Icon(Icons.hot_tub),
            subtitle: new Text("今天是星期天"),
          ),
          new Divider(),
        ],
      ),
    );
  }
}