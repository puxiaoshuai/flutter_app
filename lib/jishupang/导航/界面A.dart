import 'package:flutter/material.dart';
import 'package:flutter_app/jishupang/导航/界面B.dart';

class FirstScreen extends StatelessWidget {
  List<Goods> goods = List.generate(20, (i) => Goods("水果$i", "该商品编号$i"));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: goods.length,
        itemBuilder: (c, index) {
          return ListTile(
            title: Text(goods[index].title),
            subtitle: Text(goods[index].desc),
            leading: Image.asset('images/icon.jpeg'),
            onTap: () {
              //这是第一种跳转的方法
//              Navigator.push(
//                context,
//                //product的名称和  TowScreen中 @require要对应
//                new MaterialPageRoute(builder: (context) => new TowScreen(product:goods[index])),
//              );
            debugPrint("点击了我$goods[index]");
         getbackDate(c);
            },
          );
        });
  }
  getbackDate(BuildContext c) async {
    final result=await
    Navigator.push(
      c,
      //product的名称和  TowScreen中 @require要对应
      new MaterialPageRoute(builder: (context) => new TowScreen(product:goods[1])),
    );
    Scaffold.of(c).showSnackBar(SnackBar(content: Text(result)));
  }
}

class Goods {
  final String title;
  final String desc;

  Goods(this.title, this.desc);
}
