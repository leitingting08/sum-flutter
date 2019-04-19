import 'package:flutter/material.dart';
import 'pages/classdetail.dart';
import 'pages/home.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
        '/search': (BuildContext context) => new Search(),
        '/classdetail': (BuildContext context) => new Classdetail(),
      },
      theme: new ThemeData(primarySwatch: Colors.yellow),
      // home: new MyHomePage(),
    );
  }
}
