void main() {
  Future.delayed(new Duration(seconds: 4), () {
    return "4s返回";
  }).then((onValue) {
    print(onValue);
  }).catchError((e) {
    print("失败");
  }).whenComplete(() {
    print("结束");
  });
}