import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:app/pages/home/drawer.dart';
import 'package:app/pages/home/mine.dart';
import 'package:app/pages/home/discover.dart';
import 'package:app/pages/home/friends.dart';

const int ThemeColor = 0xFFC91B3A;

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<AppPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ["我的", "发现", "朋友"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: TabBar(
            controller: _tabController,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
      ),
      drawer: new MyDrawer(), //抽屉
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new MyHome(),
          new MyDiscover(),
          new MyFriends(),
        ],
        // tabs.map((e) {
        //   return Container(
        //       alignment: Alignment.center, child: Text(e, textScaleFactor: 5)
        //       );
        // }).toList(),
      ),
    );
  }
}
