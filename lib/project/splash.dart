import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home:SpDemo() ,
    );
  }
}
class SpDemo extends StatefulWidget {
  @override
  _SpDemoState createState() => new _SpDemoState();
}

class _SpDemoState extends State<SpDemo> with SingleTickerProviderStateMixin  {
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration:Duration(microseconds: 3000));
    _animation=Tween(begin: 0,end: 1).animate(_controller);
    _animation.addStatusListener((status){
      if(status==AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context)=>MyApp()),
                (route)=> route==null);
      }
    });
    _controller.forward();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition( //透明度动画组件
      opacity: _animation,  //执行动画
      child: Image.network(  //网络图片
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
          scale: 2.0,  //进行缩放
          fit:BoxFit.cover  // 充满父容器
      ),
    );
  }
}

