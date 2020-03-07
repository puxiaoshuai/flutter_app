import 'package:flutter/material.dart';
class Listdong extends StatelessWidget{
   List<String> items =new List<String>.generate(40, (i)=>"书籍$i");
 
  
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
         return ListTile(
           leading: new Icon(Icons.hot_tub),
           //这里要用{}包裹，不然就是每一项都显示了40个数，共40行
           title: new Text('${items[index]}'),
         );
        });
  }
}