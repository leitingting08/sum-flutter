import 'package:flutter/material.dart';

class MyHeader extends StatefulWidget {
  // MyHeader({this.imgUrl})

  @override
  _MyheaderState createState() => _MyheaderState();
}

class _MyheaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //子组件的排列方式为主轴两端对齐
        children: <Widget>[
          Expanded(
            child: FittedBox(
                fit: BoxFit.contain,
                child: new Container(
                  alignment: Alignment.centerLeft,
                  height: 8,
                  child: const FlutterLogo(),
                )),
          ),
          Expanded(
            child: Text('柠檬小课堂', textAlign: TextAlign.left),
          ),
          Expanded(
            child: Text('点我搜索', textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}
