import 'package:flutter/material.dart';
import 'package:app/pages/home/app.dart';
import 'package:app/pages/login/login.dart';
import 'package:app/pages/login/register.dart';
import 'package:app/pages/login/forget.dart';
import 'package:app/pages/home/search_recommend.dart';
import 'package:app/pages/home/search_result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 定义路由信息
  final Map<String, Function> routes = {
    '/register': (context, {arguments}) => RegisterPage(arguments: arguments),
    '/login': (context) => LoginPage(),
    '/forget': (context, {arguments}) => ForgetPage(arguments: arguments),
    '/search': (context) => SearchRecommendPage(),
    '/searchresult': (context) => SearchResultPage(),
    '/': (context) => AppPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网易云音乐',
      // 处理Named页面跳转 传递参数
      onGenerateRoute: (RouteSettings settings) {
        // 统一处理
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        } else {
          // 不设置路由传参
          final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context));
          return route;
        }
      },
      theme: new ThemeData(primarySwatch: Colors.red),
      home: AppPage(),
    );
  }
}
