import 'package:flutter/material.dart';
class HotPage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Main();
  }
}
class Main extends StatefulWidget  {
  @override
  _MainState createState() => new _MainState();
}

class _MainState extends State<Main> with AutomaticKeepAliveClientMixin {
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(heroTag: widget.key,onPressed: (){
        setState(() {
           num++;
        });
      },
      child: Icon(Icons.add),
      )
     ,
     body: Center(
       child: Text("数字$num",style: TextStyle(fontSize: 18),),
     ),

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

