void main(){
  print("进入");
  B v=new B();
  v.run();
  var  a=3;
  a==3?print("==3"):print("11");
  
}
abstract class A{
  run();
}
class B implements A{
  @override
  run() {
    // TODO: implement run
    return print("跑");
  }
  
}