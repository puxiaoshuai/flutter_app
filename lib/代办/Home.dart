import 'package:flutter/material.dart';
import 'package:flutter_app/代办/ThingItem.dart';
class Home extends StatefulWidget {
  @override
  Home_State createState() => Home_State();
}

class Home_State extends State<Home> {
  List<Thing> things=List.generate(5, (i)=>Thing("今日新闻信息$i","沧海横流，方显英雄本色。在这场疫情防控的人民战争中，习近平总书记向全党发出号召，要求各级党组织和广大党员干部必须牢记人民利益高于一切，不忘初心、牢记使命，让党旗在防控疫情斗争第一线高高飘扬。","http://img1.imgtn.bdimg.com/it/u=561326960,1564995287&fm=11&gp=0.jpg"));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text("代办",style: TextStyle(color: Colors.white),),
      ),
      body:new ListView.builder(
        itemCount: things.length,
        itemBuilder: (BuildContext c,int index){
          return  itemView(index);
        },


      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
           setState(() {
             things.add(new Thing("发生的纠纷", "23232323", ""));
           });
        },
      ),
    );

  }

  itemView(int index){
       return new Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             child: Text(things[index].title,style: TextStyle(
               fontSize: 18
             ),),
             padding: EdgeInsets.only(left: 20,top: 10,bottom: 2),

           ),
           new Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Container(
                 child: Image.network("http://cdn.duitang.com/uploads/item/201601/08/20160108194244_JxGRy.thumb.700_0.jpeg",
                   fit: BoxFit.fitHeight,width: 80,height: 80,),
                 padding: EdgeInsets.only(left: 20,top: 4),
               ),
               Expanded(
                 child: Container(
                   child: Text(things[index].desc,maxLines:5,overflow:TextOverflow.ellipsis,style: TextStyle(
                       fontSize: 12
                   ),),
                   padding: EdgeInsets.only(left: 20,bottom: 4,right: 20),

                 ),
               )
             ],
           ),

         ],
       );
  }

}
