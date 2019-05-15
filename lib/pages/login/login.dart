import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({this.arguments});
  final Map arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 220.0, bottom: 260.0),
            child: Image.asset(
              "images/logo.png",
              width: 60.0,
              height: 60.0,
            ),
          ),
          Container(
            width: 500.0,
            child: Column(
              children: <Widget>[
                ButtonTheme(
                    minWidth: 300.0,
                    height: 36.0,
                    child: FlatButton(
                      child: Text(
                        '手机号登录',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.red,
                      onPressed: () => {
                            Navigator.pushNamed(context, '/register',
                                arguments: {'id': 1})
                          },
                    )),
                ButtonTheme(
                    minWidth: 300.0,
                    height: 36.0,
                    child: OutlineButton(
                      borderSide: BorderSide(color: Colors.red),
                      child: Text(
                        '注册',
                        style: TextStyle(color: Colors.red),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () => {
                            Navigator.pushNamed(context, '/register',
                                arguments: {'id': 0})
                          },
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(
                        IconData(0xe60d, fontFamily: 'iconfont'),
                        color: Colors.grey,
                        size: 40.0,
                      ),
                      onPressed: () => {},
                    )),
                Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(IconData(0xe66a, fontFamily: 'iconfont'),
                          color: Colors.grey, size: 40.0),
                      onPressed: () => {},
                    )),
                Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(IconData(0xe60f, fontFamily: 'iconfont'),
                          color: Colors.grey, size: 40.0),
                      onPressed: () => {},
                    )),
                Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(IconData(0xe63c, fontFamily: 'iconfont'),
                          color: Colors.grey, size: 40.0),
                      onPressed: () => {
                            Navigator.pushNamed(context, '/register',
                                arguments: {'id': 2})
                          },
                    )),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
