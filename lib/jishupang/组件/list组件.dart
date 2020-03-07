import 'package:flutter/material.dart';
class ListWeight extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      //水平还是竖直
      scrollDirection: Axis.vertical,
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.home),
          title: new Text("我是蒲小帅",
          textAlign: TextAlign.center,
          ),
        ),
        new Container(
          child:  new Image.network("http://b-ssl.duitang.com/uploads/item/201802/20/20180220165946_RiGPS.thumb.700_0.jpeg"
            ,width: 40,height: 40,alignment: Alignment.centerLeft,
          ),
          color: Colors.red,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        )

      ],
    );
  }
}