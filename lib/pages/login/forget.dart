import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetPage extends StatelessWidget {
  ForgetPage();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("忘记密码"),
      ),
      body: Container(
        child: Container(
            color: Colors.white,
            child: Center(
              child: Container(
                width: 310,
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: TextFormField(
                            autofocus: true,
                            decoration: InputDecoration.collapsed(
                              hintText: '请输入手机号码',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration.collapsed(
                              hintText: '设置登录密码，不少于6位',
                            ),
                          ),
                        ),
                      ],
                    )),
                   Container(
                      width: 310,
                      height: 47,
                      margin: const EdgeInsets.only(top: 30),
                      child: new RaisedButton(
                        onPressed: () => {
                            Fluttertoast.showToast(
                              msg: "请输入手机号和密码",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIos: 1,
                            )
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        textColor: Colors.white,
                        color: Colors.red,
                        child: Text(
                          '下一步',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(top: 20),
                    // child: Text('参数：${arguments != null ? arguments['id'] : '0'}'),)
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
