import 'package:flutter/material.dart';
import 'package:app/api/main.dart';
import 'package:app/utils/net_utils.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage>{
  List _lists = [];

  @override
  void initState() {
    super.initState();
    _hotSearch();
  }

  void _hotSearch(){
    NetUtils.get(Api.hotSearchApi()).then((res)=>{
      // print(res);
      setState((){
        _lists = res['data'];
      })
    });
  }

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
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('历史记录'),
              Icon(IconData(0xe662, fontFamily: 'iconfont')),
          ],),
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
          children: <Widget>[
            Chip(
              label: Text('莉莉安'),
            ),
            Chip(
              label: Text('宋冬野'),
            ),
            Chip(
              label: Text('滕王阁序'),
            ),
          ],),
          Padding(
            padding: EdgeInsets.only(top: 30,bottom: 20),
            child: Column(
            children: <Widget>[
              Text('热搜榜'),
              Container(
                child: ListView.builder(
                itemCount: 10,
                // itemCount: _lists.length,
                itemBuilder: (context, index)=>ListTile(title: Text('$index'),)
              ),)
          ],),)
          
        ],)
      ),
    );
  }
}
