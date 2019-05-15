import 'package:flutter/material.dart';

// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:app/utils/netutils.dart';
// 1 手机号登录 0 手机号注册 2网易邮箱登录
class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.arguments}) : super(key: key);
  final Map arguments;
  // int id = arguments['id'];

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
// class RegisterPage extends StatelessWidget {
  // RegisterPage(
  //     {Key key, this.arguments, this.title, this.userinput, this.passwordinput}) : super(key: key);
  // Map arguments;
  String title;
  String userinput;
  String passwordinput;

  void _getTextInfo() {
    // if (arguments != null && arguments['id'] == 0) {
    title = '手机号注册';
    userinput = '请输入手机号码';
    passwordinput = '请输入密码';
    // }
  }

  @override
  void initState() {
    super.initState();
    _getTextInfo();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                              hintText: userinput,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration.collapsed(
                              hintText: passwordinput,
                            ),
                          ),
                        ),
                      ],
                    )),
                    new Container(
                      width: 310,
                      height: 47,
                      margin: const EdgeInsets.only(top: 30),
                      child: new RaisedButton(
                        onPressed: () => {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        textColor: Colors.white,
                        color: Colors.red,
                        child: Text(
                          '登录',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
