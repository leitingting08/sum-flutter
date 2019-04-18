import 'dart:async';
import 'package:flutter/material.dart';

class MyHeader extends StatefulWidget {
  // MyHeader({this.imgUrl})

  @override
  _MyheaderState createState() => _MyheaderState();
}

class _MyheaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(
              size: 10.0,
            ),
          ),
        ),
        Expanded(
          child: Text('柠檬小课堂', textAlign: TextAlign.left),
        ),
        Expanded(
          child: Text('点我搜索', textAlign: TextAlign.right),
        ),
      ],
    );
  }
}
