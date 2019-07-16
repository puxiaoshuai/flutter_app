import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nameController=new TextEditingController();
  
  TextEditingController _pwdController=new TextEditingController();
   String name;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.text="蒲小帅";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("登录页")
        
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Center(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563253420215&di=6e12c2ab94637027dbdff08d922c75f2&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fpeople%2F201407%2F16%2F20140716203135_8M2HR.jpeg"),
                  radius: 60,

                ),

              ),
              margin: EdgeInsets.fromLTRB(0,40,0,0),
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(

                hintText: "用户名或邮箱",

              ),
              controller: _nameController,
              onChanged: (v){
                setState(() {
                  name=v;
                });
              },

            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
              keyboardType: TextInputType.number,
              controller: _pwdController,
              onChanged: (v){
                print("密码$v");
              },
            ),

            RaisedButton(

              onPressed: (){
                print(_nameController.text);
              },
              child: Text("登录"),
              color: Colors.blue,

            )

          ],
        ),
        scrollDirection: Axis.vertical,
      )
    );
    
  }

}


