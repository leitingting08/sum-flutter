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

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('My App'),
//       ),
//       body: new Center(
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[],
//         ),
//       ),
//     );
//   }
// }
