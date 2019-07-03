import 'package:flutter/material.dart';
import 'package:flutter_app/project/dragwegit.dart';
class DragDemo extends StatelessWidget {
  Color _draggableColor = Colors.grey;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("拖动demo"),
      ),
      body:Stack(
        children: <Widget>[
          DragableWidget(
            offset: Offset(80.0, 80.0),
            widgetColor: Colors.tealAccent,
          ),
          DragableWidget(
            offset: Offset(180.0, 80.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(onAccept: (Color color) {
              _draggableColor = color;
            }, builder: (context, candidateData, rejectedData) {
              return Container(
                width: 200.0,
                height: 200.0,
                color: _draggableColor,
              );
            }),
          )
        ],
      )
    );
  }
}
