import 'package:flutter/material.dart';
import 'package:app/components/myswiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new CarouselSlider(
                items: [1, 2, 3, 4, 5].map((i) {
                  return new Builder(
                    builder: (BuildContext context) {
                      return new Container(
                          width: MediaQuery.of(context).size.width,
                          margin: new EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: new BoxDecoration(color: Colors.amber),
                          child: new Image.network(
                            'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
                            fit: BoxFit.fill,
                          ));
                    },
                  );
                }).toList(),
                height: 180.0,
                autoPlay: true)
            // header swiper iconlist classlist
          ],
        ),
        // child: new RaisedButton(
        //   child: new Text('to classdetail'),
        //   onPressed: () {
        //     Navigator.of(context).pushNamed('/classdetail');
        //   },
        // ),
      ),
    );
  }
}
