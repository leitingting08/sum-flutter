import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Search'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('to home'),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
      ),
    );
  }
}
