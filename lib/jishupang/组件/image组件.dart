import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Image.network(
        "http://b-ssl.duitang.com/uploads/item/201802/20/20180220165946_RiGPS.thumb.700_0.jpeg",
        height: 100,
        width: 200,
        //增加了滤镜
        color: Colors.green,
        colorBlendMode: BlendMode.darken,
        scale: 2.0,
        repeat: ImageRepeat.repeat,
    );

  }

}