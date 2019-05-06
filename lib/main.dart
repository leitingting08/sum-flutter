import 'package:flutter/material.dart';
import 'pages//home/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => new AppPage(),
      //   // '/search': (BuildContext context) => new Search(),
      //   // '/classdetail': (BuildContext context) => new Classdetail(),
      // },
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new AppPage(),
    );
  }
}
