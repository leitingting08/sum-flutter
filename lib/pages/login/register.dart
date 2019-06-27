import 'package:flutter/material.dart';
// import 'package:app/utils/netutils.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key key,
    this.arguments,
  }) : super(key: key);
  final Map arguments;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String userinput;
  String passwordinput;
  String eventEmitter = '点击、双击长按事件的触发';
  String dialogTxt = '点击我出现弹框';

  void _getTextInfo() {
    userinput = '请输入手机号码';
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

  _generateAlertDialog(String contents) {
    return AlertDialog(
      title: Text('这是标题'),
      content: Text(contents),
      actions: <Widget>[
        FlatButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.pop(context, '点击了取消');
          },
        ),
        FlatButton(
          child: Text('确认'),
          onPressed: () {
            Navigator.pop(context, '点击了确认');
            Navigator.of(context).pushNamed('/search');
          },
        ),
      ],
    );
  }

  Widget build(context) {
    final Map args = ModalRoute.of(context).settings.arguments;
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
                    Container(
                      width: 310,
                      height: 47,
                      margin: const EdgeInsets.only(top: 30),
                      child: RaisedButton(
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
                    ),
                     Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: GestureDetector(
                          child: Text(
                            '忘记密码',
                            style: TextStyle(fontSize: 24),
                          ),
                          onTap: () => {
                            Navigator.pushNamed(context, '/forget',
                                arguments: {'id': '我是Named方法穿过来的参数'})
                          },
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: GestureDetector(
                          child: Text(
                            eventEmitter,
                            style: TextStyle(fontSize: 24),
                          ),
                          onTap: () => updateText("点击"),
                          onDoubleTap: () => updateText("双击"),
                          onLongPress: () => updateText("长按"),
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: GestureDetector(
                          child: Text(
                            dialogTxt,
                            style: TextStyle(fontSize: 24),
                          ),
                          onTap: () => showDialog(
                              context: context,
                              builder: (_) => _generateAlertDialog("我是弹框的内容")),
                        ))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
