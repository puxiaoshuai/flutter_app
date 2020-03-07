import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: new NetworkImage(
                    "http://b-ssl.duitang.com/uploads/item/201410/09/20141009224754_AswrQ.jpeg",
                  ),
                  //radius就是半径
                  radius: 50.0,
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text("蒲小帅",
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                  image: AssetImage("images/bg.png"), fit: BoxFit.fitWidth),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.hot_tub,
              size: 22,
            ),
            title: Text("今日热点"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(
              Icons.label,
              size: 22,
            ),
            title: Text("基金详解"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(
              Icons.tab,
              size: 22,
            ),
            title: Text("昨日案例"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
