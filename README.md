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