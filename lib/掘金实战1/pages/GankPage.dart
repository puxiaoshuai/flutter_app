import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/%E6%8E%98%E9%87%91%E5%AE%9E%E6%88%981/beans/GankItem.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/phoenix_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
class GankPage extends StatefulWidget {
  @override
  _GankPageState createState() => _GankPageState();
}

class _GankPageState extends State<GankPage> {
  var ganks=[];
  int page = 1;


 EasyRefreshController _easyRefreshController;
  void _loadGank() async{
    try{
      Response response = await Dio().get(
          'http://gank.io/api/data/福利/6/$page'
      );
      print('http://gank.io/api/data/福利/6/$page');
      print(response.toString());
      Map<String, dynamic> json = jsonDecode(response.toString());
      /*将Json转成实体类*/
      GankItem newsBean=GankItem.fromJson(json);
      /*取值*/
      setState(() {
        ganks.addAll(newsBean.results);

      });

    }catch(e){

    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   _loadGank();
   _easyRefreshController=EasyRefreshController();

  }
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    if(ganks.length==0){
      return CupertinoActivityIndicator();
    }else{
      return EasyRefresh(

        controller: _easyRefreshController,

        header: MaterialHeader(),

        child: ListView.builder(
          shrinkWrap: false,
          itemCount: ganks.length,
          itemBuilder: (BuildContext c,int index){
            return Column(
              children: <Widget>[
                Container(
                  height: size.width/2,
                  child: Center(
                    child: Image.network(
                        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1584339093&di=2c53522d3fb37079e65e5515d0f3255f&src=http://b-ssl.duitang.com/uploads/item/201709/06/20170906180643_XxdUc.thumb.700_0.jpeg"
                       ,width: size.width,
                       height: size.width/2,
                    fit: BoxFit.fitWidth,)
                  )
                )
              ],
            );
          },
        ),

        onRefresh: () async {
         await Future.delayed(Duration(seconds: 2),(){
           setState(() {
             page=1;
             ganks=[];
           });
           _loadGank();
         });


        },
        onLoad: () async{
          setState(() {
            page=page+1;
          });
          if(page>3){
            _easyRefreshController.finishLoad(success: true,noMore: true);
          }else{
            _loadGank();
          }

        },
      );
    }

  }
}
