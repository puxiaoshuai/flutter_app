import 'package:flutter/material.dart';
class Bottom_Nav extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _BottomNav();
  }
}
class _BottomNav extends State<Bottom_Nav>{
  int _curr_index=0;
  void _onTap(int index){
    setState(() {
      _curr_index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _curr_index,
      onTap: _onTap,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.high_quality), title: Text("history")),
        BottomNavigationBarItem(
            icon: Icon(Icons.move_to_inbox), title: Text("mine")),
        BottomNavigationBarItem(
            icon: Icon(Icons.hot_tub), title: Text("hot"))
      ],
    );
  }

}