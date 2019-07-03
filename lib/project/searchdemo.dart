import 'package:flutter/material.dart';
const searchList = [
  "jiejie-大长腿",
  "jiejie-水蛇腰",
  "gege1-帅气欧巴",
  "gege2-小鲜肉"
];

const recentSuggest = [
  "推荐-1",
  "推荐-2"
];
class SearchDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
        actions: <Widget>[
          new GestureDetector(
            child: new Icon(Icons.search),
            onTap: (){
             showSearch(context: context, delegate: searchBarDelegate());
            },
          )
        ],
      ),
      body: Center(
        child: Tooltip(message: "不要碰我，",child:
        ClipPath(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          clipper: BottomClipperTest(),
        ),)
      ),
    );
  }
}
class BottomClipperTest extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path =Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-30);
    var firstControlPoint =Offset(size.width/2,size.height);
    var firstEndPoint = Offset(size.width,size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height-30);
    path.lineTo(size.width, 0);

    return path;

  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class searchBarDelegate extends SearchDelegate<String>{
//buildActions方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = "",)
    ];
  }
//这个时搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，然后在点击时关闭整个搜索页面，
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }
//搜到到内容后的展示
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }


}


