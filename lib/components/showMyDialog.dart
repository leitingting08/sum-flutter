import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class Flutterdialog {
  static const MethodChannel _channel = MethodChannel('Flutterdialog');

  static Future<bool> showMyDialog({
    @required String content,
    String title = '提示',
    List btns,
    Function confirm(),
    Function cancel(),
  }) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'content': content,
      'title': title,
      'btns': ['确认'],
    };
    return await _channel.invokeMethod('showMyDialog', params);
  }

  static Future<bool> confirm() async {
    return await _channel.invokeMethod('confirm');
  }

  static Future<bool> cancel() async {
    return await _channel.invokeMethod('cancel');
  }
  // Flutterdialog({
  //   this.title,
  //    this.content,
  //    this.btns,
  //    Function callBack,
  // });
  //  String title = '提示';
  //  String content;
  //  List btns = ['确认'];

  //   return AlertDialog(
  //   title: Text(this.title),
  //   content: Text(this.content),
  //   actions: <Widget>[
  //     FlatButton(
  //       child: Text('取消'),
  //       onPressed: () {
  //         Navigator.pop(context, '点击了取消');
  //       },
  //     ),
  //     FlatButton(
  //       child: Text('确认'),
  //       onPressed: () {
  //         Navigator.pop(context, '点击了确认');
  //         Navigator.of(context).pushNamed('/search');
  //       },
  //     ),
  //   ],
  // );

}
