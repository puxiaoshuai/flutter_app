import 'package:flutter/material.dart';
class ListDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态列表"),
      ),
      body: new Container(
         child: Mylsit(items:new List<String>.generate(20, (i)=>"item$i")),

      )
    );
  }
}
class Mylsit extends StatelessWidget {
  final List<String> items;
  Mylsit({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
             return new ListTile(
               leading: Image.network("http://b-ssl.duitang.com/uploads/item/201504/19/20150419H0558_NJU3B.jpeg",height: 40,width: 40,),
               title: new Text("数据==》${items[index]}"),
               trailing: Icon(Icons.search),
             );
    });
  }
}

