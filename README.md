# flutter_app
问题
#### bottomNavigationBar 切换都要重新加载
```
 body: IndexedStack(
        index: _currentIndex,
        children: list,
      ),
 ```
 每个继承 AutomaticKeepAliveClientMixin，重写 方法返回return true
 在使用了ffloatingActionButton: FloatingActionButton(heroTag: widget.key），会报错在多个tab中，增加heroTag就好了
 https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563253420215&di=6e12c2ab94637027dbdff08d922c75f2&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fpeople%2F201407%2F16%2F20140716203135_8M2HR.jpeg