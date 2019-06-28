import 'package:flutter/material.dart';
import 'package:app/utils/net.dart';

class MyFriends extends StatefulWidget {
  MyFriends({Key key}) : super(key: key);

  @override
  _MyFriendsState createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  //  NetRequest net;
  //  var net = new NetRequest();
  void _getInfo() async {
    Map list = await NetRequest.get(
        'https://movie.douban.com/typerank?type_name=%E7%A7%91%E5%B9%BB&type=17&interval_id=100:90&action=',
        {});
    print(list);
  }

  @override
  void initState() {
    super.initState();
    _getInfo();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('friends'),
      ),
    );
  }
}
