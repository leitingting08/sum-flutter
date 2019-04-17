import 'package:flutter/material.dart';

class Classdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Classdetail'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Log Out'),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
      ),
    );
  }
}
