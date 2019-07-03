import 'package:flutter/material.dart';
class WarpDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body:WarpOne()
    );
  }
}
class WarpOne extends StatefulWidget {
 
  
  @override
  _WarpOneState createState() => new _WarpOneState();
}

class _WarpOneState extends State<WarpOne> {
  List<Widget> widgets=new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgets=List<Widget>()..add(buildButton());
  }
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: width,
        height:height/2 ,
        child: Wrap(
          children:widgets,
          spacing: 26,
        ),
      ),
    );
  }
  Widget buildButton(){
    return GestureDetector(
      onTap: (){
        if(widgets.length<9){
          setState(() {
            widgets.insert(widgets.length-1, buildPhoto());
          });
        }else{
          setState(() {
           widgets.removeLast();
          });
        }
      },
      child: Padding(
          padding: EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.purple,
        child: Icon(Icons.add),
      ),
      ),
    );
  }
  Widget buildPhoto(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.amber,
        child: Text("照片"),
      ),
    );
  }
}

