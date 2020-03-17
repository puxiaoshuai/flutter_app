
import 'package:flutter/cupertino.dart';
class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CupertinoButton(
          child: Text("点击"),
        ),
      ),
    );
  }
}
