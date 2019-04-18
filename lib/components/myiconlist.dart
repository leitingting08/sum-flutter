import 'package:flutter/material.dart';

class MyIconList extends StatefulWidget {
  // MyIconList({this.imgUrl})

  @override
  _MyIconListState createState() => _MyIconListState();
}

class _MyIconListState extends State<MyIconList> {
  @override
  Widget build(BuildContext context) {
    // Widget iconSection = new Container(
    //   child: new Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       buildButtonColumn(Icons.call, 'CALL'),
    //       buildButtonColumn(Icons.near_me, 'ROUTE'),
    //       buildButtonColumn(Icons.share, 'SHARE'),
    //     ],
    //   ),
    // );

    // Column buildIconColumn(IconData icon, String label) {
    //   Color color = Theme.of(context).primaryColor;
    //   return new Column(
    //     children: <Widget>[
    //       new Icon(icon, color: color),
    //       new Container(
    //         child: new Text(label,style: new TextStyle(color:color,fontSize:12.0)),
    //       )
    //     ],
    //   );
    // }

    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //子组件的排列方式为主轴两端对齐
        children: <Widget>[
          Expanded(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555585303004&di=f28a0cce51eb2110cad43e204dace550&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F35%2F29%2F95573bdcc0d4911.jpg',
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  new Text('我是四字', textAlign: TextAlign.right)
                ],
              ),
            ),
          ),
          Expanded(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555585303004&di=f28a0cce51eb2110cad43e204dace550&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F35%2F29%2F95573bdcc0d4911.jpg',
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  new Text('我是四字', textAlign: TextAlign.right)
                ],
              ),
            ),
          ),
          Expanded(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555585303004&di=f28a0cce51eb2110cad43e204dace550&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F35%2F29%2F95573bdcc0d4911.jpg',
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  new Text('我是四字', textAlign: TextAlign.right)
                ],
              ),
            ),
          ),
          Expanded(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555585303004&di=f28a0cce51eb2110cad43e204dace550&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F01%2F35%2F29%2F95573bdcc0d4911.jpg',
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  new Text('我是四字', textAlign: TextAlign.right)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
