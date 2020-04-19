import 'package:flutter/material.dart';
import 'package:app/pages/home/app.dart';
import 'package:app/pages/login/login.dart';
import 'package:app/pages/login/register.dart';
import 'package:app/pages/login/forget.dart';
import 'package:app/pages/home/search_recommend.dart';
import 'package:app/pages/home/search_result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YUN音乐',
      routes: {
        "/register": (context) => RegisterPage(),
        "/login": (context) => LoginPage(),
        "/forget": (context) => ForgetPage(),
        "/search": (context) => SearchRecommendPage(),
        "/searchresult": (context) => SearchResultPage(),
      },
      theme: new ThemeData(primarySwatch: Colors.red),
      home: AppPage(),
    );
  }
}
