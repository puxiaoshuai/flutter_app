import 'package:flutter/material.dart';
class BujuDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局详解"),
      ),
      body: new ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Text("水平布局",style: TextStyle(fontSize: 16),),
          new Row(
            children: <Widget>[

              new RaisedButton(
                  child:Text("点击我")
                  ,onPressed: (){}),
              Expanded(
                child: new RaisedButton(
                    child:Text("点击我")
                    ,onPressed: (){}),

              ),
              new RaisedButton(
                elevation: 2,
                  child:Text("点击我")
                  ,onPressed: (){})
            ],
          ),
          Text("垂直布局",style: TextStyle(fontSize: 16),),
         new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("数据1数据1"),
              Text("数据1数据1"),
              Text("数据2数据1数据1"),
              Text("数据3数据1v"),
            ],
         ),
          Text("stack，FractionalOffset",style: TextStyle(fontSize: 16),),
          new Stack(
            alignment: FractionalOffset(0.5, 0.8),
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new NetworkImage("http://cdn.duitang.com/uploads/item/201601/08/20160108194244_JxGRy.thumb.700_0.jpeg"),
                radius: 60.0,
              ),
              Text("蒲小帅")
            ],
          ),
          Text("stack，多个使用postioned",style: TextStyle(fontSize: 16),),
          new Stack(
            alignment: FractionalOffset(0.5, 0.8),
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new NetworkImage("http://cdn.duitang.com/uploads/item/201601/08/20160108194244_JxGRy.thumb.700_0.jpeg"),
                radius: 60.0,
              ),
              new Positioned(
              child: Text("蒲小帅",style: TextStyle(color: Colors.white),),
              top: 10,
              ),
              new Positioned(
                child: Text("蒲小帅",style: TextStyle(color: Colors.white),),

              ),
            ],
          ),
          Text("卡片布局",style: TextStyle(fontSize: 16),),
          new Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title:new Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: new Text('技术胖:1513938888'),
                  leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                ),
                new Divider(),
                ListTile(
                  title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: new Text('胜宏宇:1513938888'),
                  leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                ),
                new Divider(),
                ListTile(
                  title:new Text('河南省濮阳市百姓办公楼',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: new Text('JSPang:1513938888'),
                  leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                ),

              ],
            ),
          )

        ],
      )
    );
  }
}
