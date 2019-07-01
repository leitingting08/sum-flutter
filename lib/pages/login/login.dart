import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:app/pages/login/register.dart';

class LoginPage extends StatelessWidget {
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
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                    settings: RouteSettings(
                                        arguments: {'title': '手机号登录','hinText':'请输入手机号','btnText':'登录'})))
                            // Fluttertoast.showToast(
                            //   msg: "请先注册",
                            //   gravity: ToastGravity.CENTER,
                            //   timeInSecForIos: 1,
                            // )
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                    settings: RouteSettings(
                                        arguments: {'title': '手机号注册','hinText':'请输入手机号','btnText':'注册'})))
                          },
                    )),
                GestureDetector(
                  child: Text(
                    '游客试用>',
                    style: TextStyle(color: Color(0xFF666666)),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/')},
                )
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                    settings: RouteSettings(
                                        arguments: {'title': '网易邮箱登录','hinText':'请输入邮箱','btnText':'登录'})))
                            //  Navigator.pushNamed(context, '/register',
                            //     arguments: {'id': 2})
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
