import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({this.arguments});
  final Map arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${arguments != null ? arguments['text'] : ''}"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
