import 'package:flutter/material.dart';

class DragableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;

  const DragableWidget({Key key, this.offset, this.widgetColor})
      :super(key: key);

  @override
  _DragableWidgetState createState() => new _DragableWidgetState();
}

class _DragableWidgetState extends State<DragableWidget> {
  //接受位置和颜色
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        //child在这里放置你要推拽的元素，可以是容器，也可以是图片和文字。
          child:
      Container(
        width: 100,
        height: 100,
        color: widget.widgetColor,

      )
          //feedback: 常用于设置推拽元素时的样子，在案例中当推拽的时候，我们把它的颜色透明度变成了50%。
        , feedback:
        Container(
          width: 60,
          height: 60,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        data: widget.widgetColor,
        onDraggableCanceled: (Velocity v, Offset of1) {
          setState(() {
           // this.offset = of1;
          });
        },
      ),

    );
  }
}
