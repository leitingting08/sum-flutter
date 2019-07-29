import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          autofocus: true,
          decoration: InputDecoration.collapsed(
              hintText: "请输入关键词"),
        ),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              }),
        ],
      ),
      body: Container(
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Text('历史记录'),
             Icon(IconData(0xe662, fontFamily: 'iconfont'))
          ],)
        ],)
      ),
    );
  }
}
