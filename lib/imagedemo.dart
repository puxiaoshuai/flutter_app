import 'package:flutter/material.dart';
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image"),
      ),
      body: Column(
        children: <Widget>[
          Text("Image来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。"),
          Row(
            children: <Widget>[
              Text("本地图片"),
              new Image.asset("images/icon1.jpg",width: 100,height: 100, color: Colors.blue,
                colorBlendMode: BlendMode.softLight,),
              Text("网络图片"),
              new Image.network("http://b-ssl.duitang.com/uploads/item/201501/27/20150127135005_Nax4m.jpeg",width: 100,height: 100,)
            ],
          ),
          TextField(
            obscureText: false,
            autofocus: false,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            obscureText: false,
            autofocus: false,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),

          ),
          TextField(
            obscureText: false,
            autofocus: false,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),

          ),


        ],
      )
    );
  }
}
