import 'package:flutter/material.dart';
class DonghuaPage extends StatefulWidget {
  @override
  _DonghuaPageState createState() => new _DonghuaPageState();
}

class _DonghuaPageState extends State<DonghuaPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("动画"),
      ),
      body: Logo(),
    );
  }
}
class Logo extends StatefulWidget  {
  @override
  _LogoState createState() => new _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin{
  Animation animation;
  Animation q_animation;
  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=new AnimationController(duration: const Duration(seconds: 3),vsync: this);
    animation=new Tween(begin: 50.0,end: 255.0).animate(controller)
    ..addStatusListener((status){
      if(status==AnimationStatus.completed){
        controller.reverse();
      }else if(status==AnimationStatus.dismissed){
        controller.forward();
      }
    });
   
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return AnimateLogo(animation: animation,);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();

  }
}
class AnimateLogo extends AnimatedWidget
{
  AnimateLogo({Key key,Animation animation}):super(key:key,listenable:animation);

  @override
  Widget build(BuildContext context) {
    final Animation animation=listenable;

    // TODO: implement build
    return new Center(
      child: new Container(
        color: Color.fromARGB(255, animation.value.toInt(), animation.value.toInt(), 23),
        margin: new EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,

      ),
    );
  }

}


