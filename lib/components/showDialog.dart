import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  MyDialog({
    this.content,
  });
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Dialog'),
      content: Text(this.content),
      actions: <Widget>[
        new FlatButton(
          child: new Text("取消"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        new FlatButton(
          child: new Text("确定"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
