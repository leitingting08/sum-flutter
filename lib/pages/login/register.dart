import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key key
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  String passwordinput;
  String eventEmitter = '点击、双击长按事件的触发';
  String dialogTxt = '点击我出现弹框';

  void _getTextInfo() {
    passwordinput = '请输入密码';
  }

  @override
  void initState() {
    super.initState();
    _getTextInfo();
  }

  void updateText(String text) {
    //更新显示的事件名
    setState(() {
      eventEmitter = text;
    });
  }

  void _postLogin(String userName, String userPassword) {
    if (userName.isNotEmpty && userPassword.isNotEmpty) {
    } else {
      Fluttertoast.showToast(
        msg: "请输入用户名和密码",
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
      );
    }
  }

  Widget build(context) {
    dynamic args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
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
                        key: _formKey, //设置globalKey，用于后面获取FormState
                        autovalidate: true, //开启自动校验
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: TextFormField(
                                  autofocus: true,
                                  controller: _unameController,
                                  decoration: InputDecoration.collapsed(
                                    hintText: args['hinText'],
                                  ),
                                  validator: (v) {
                                    return v.trim().length > 0
                                        ? null
                                        : "用户名不能为空";
                                  }),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: TextFormField(
                                  autofocus: false,
                                  controller: _pwdController,
                                  decoration: InputDecoration.collapsed(
                                    hintText: passwordinput,
                                  ),
                                  validator: (v) {
                                    return v.trim().length > 0
                                        ? null
                                        : "密码不能为空";
                                  }),
                            ),
                          ],
                        )),
                    Container(
                      width: 310,
                      height: 47,
                      margin: const EdgeInsets.only(top: 30),
                      child: RaisedButton(
                        onPressed: () => {
                          //  _postLogin(_userNameController.text, _userPassController.text);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        textColor: Colors.white,
                        color: Colors.red,
                        child: Text(
                          args['btnText'],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    args['id'] != '1'
                        ? Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: GestureDetector(
                              child: Text('忘记密码'),
                              onTap: () => {
                                Navigator.pushNamed(context, '/forget')
                              },
                            ))
                        : Container(),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
