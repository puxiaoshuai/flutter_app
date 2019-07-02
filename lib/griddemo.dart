import 'package:flutter/material.dart';
class GridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridview"),
      ),
      body: GridView.count(
          crossAxisCount: 2,

       crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        childAspectRatio:0.7 ,
        children: <Widget>[
          TextTag(name: "数据1",),
          ImageTag(name:"http://cdn.duitang.com/uploads/item/201601/08/20160108194244_JxGRy.thumb.700_0.jpeg"),
          TextTag(name: "数据2",)
          , TextTag(name: "数据3",),
          TextTag(name: "数据4",),
          ImageTag(name: "http://b-ssl.duitang.com/uploads/item/201504/19/20150419H0558_NJU3B.jpeg",)
        ],
      )
    );
  }
}

class TextTag extends StatelessWidget {
  String name;
  TextTag({Key key,@required this.name}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(name),
      color: Colors.pink,
    );
  }
}
class ImageTag extends StatelessWidget {
  String name;
  ImageTag({Key key,@required this.name}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Container(
       child: new Image.network(name,fit: BoxFit.cover,),
    );
  }
}


