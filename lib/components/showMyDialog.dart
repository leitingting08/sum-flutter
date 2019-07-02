import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

// class Flutterdialog extends StatelessWidget {
//   Flutterdialog({
//     this.title,
//     @required this.content,
//     this.confirmText,
//     this.cancelText,
//     Function cancel,
//     Function confrim,
//   });
//   final String title;
//   final String content;
//   final String confirmText;
//   final String cancelText;
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(this.title != null ? this.title : '提示'),
//       content: Text(this.content),
//       actions: <Widget>[
//         FlatButton(
//           child: Text(this.cancelText != null ? this.cancelText : '取消'),
//           onPressed: () {
//             Navigator.pop(context, '点击了取消');
//           },
//         ),
//         FlatButton(
//           child: Text(this.cancelText != null ? this.cancelText : '确认'),
//           onPressed: () {
//             Navigator.pop(context, '点击了确认');
//           },
//         ),
//       ],
//     );
//   }
// }

class FlutterDialog {
  static dynamic ctx;
  static Map args;
  static void show(ctx, args) {
    showDialog(
        context: ctx,
        builder: (context) {
          return AlertDialog(
            title: Text(args['title'] != null ? args['title'] : '提示'),
            content: Text(args['content']),
            actions: <Widget>[
              FlatButton(
                child: Text(
                    args['cancelText'] != null ? args['cancelText'] : '取消'),
                onPressed: () {
                  Navigator.pop(context, '点击了取消');
                  // cancel();
                },
              ),
              FlatButton(
                child: Text(
                    args['cancelText'] != null ? args['cancelText'] : '确认'),
                onPressed: () {
                  Navigator.pop(context, '点击了确认');
                  // confirm();
                },
              ),
            ],
          );
        });
  }
}
