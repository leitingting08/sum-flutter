import 'package:flutter/material.dart';
// import 'package:app/utils/net_utils.dart';

class MyFriends extends StatefulWidget {
  MyFriends({Key key}) : super(key: key);

  @override
  _MyFriendsState createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  //  NetRequest net;
  //  var net = new NetRequest();
  // void _getInfo() async {
    
  // }

  @override
  void initState() {
    super.initState();
    // _getInfo();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('friends'),
      ),
    );
  }
}
