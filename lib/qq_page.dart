import 'package:flutter/material.dart';

class QQ_page extends StatefulWidget {
  @override
  _QQ_pageState createState() => new _QQ_pageState();
}

class _QQ_pageState extends State<QQ_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 250, 102, 142)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Row(
            children: <Widget>[
             Stack(
               children: <Widget>[
                 ClipOval(
                   child: Image.network(
                     "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563253420215&di=6e12c2ab94637027dbdff08d922c75f2&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fpeople%2F201407%2F16%2F20140716203135_8M2HR.jpeg",
                     width: 30, height: 30,),
                 ),
                 new Container(

                   width: 10,
                   height: 10,
                   decoration: BoxDecoration(
                     color: Colors.red,
                     shape: BoxShape.circle,
                     border: Border.all(color: Colors.grey,width: 1),

                   ),

                 )
               ],
               alignment: Alignment(1.4, -1.6),
               
             ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: new Container(
                  width: 170,
                  height: 32,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),

                  child: Icon(
                    Icons.search, color: Color.fromARGB(255, 255, 255, 255),),
                  decoration: new BoxDecoration(
                      color: Color.fromARGB(255, 225, 91, 130),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                ),
              ),
              Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.games),
                    Icon(Icons.shopping_cart),
                    Icon(Icons.tv),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
