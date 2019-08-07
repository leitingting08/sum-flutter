import 'package:flutter/material.dart';
import 'package:app/api/main.dart';
import 'package:app/utils/net_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = new TextEditingController();
  // GlobalKey _formKey= new GlobalKey<FormState>();
  List _lists = [];
  List _histryLists = ['刺猬'];

  @override
  void initState() {
    super.initState();
    this._hotSearch();
  }

  void _hotSearch() {
    NetUtils.get(Api.hotSearchApi()).then((res) => {
          // print( res['data'])
          setState(() {
            _lists = res['data'];
          })
        });
  }

  void updateSearch(String keyword) {
      print(keyword);
      setState(() {
        _searchController.text = keyword;
      });
  }

  void _searchMusic(){
    if(_searchController.text==''){
        Fluttertoast.showToast(
          msg: "关键词不能为空",
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
        );
    }else{
       NetUtils.get(Api.searchApi(), {"keywords":_searchController.text}).then((res) => {
          print(res['result']['songs'])
        });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          autofocus: true,
          controller: _searchController,
          style:TextStyle(color: Colors.white),
          decoration: InputDecoration.collapsed(
              hintText: "请输入关键词", 
              hintStyle: TextStyle(color: Colors.white70)),
        ),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                _searchMusic();
              }),
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('历史记录'),
                  Icon(IconData(0xe662, fontFamily: 'iconfont')),
                ],
              ),
              SizedBox(
                  height: 50.0,
                  child: 
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _histryLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Chip(
                            label: Text(_histryLists[index]),
                          ),
                        ),
                        onTap: () => {
                          updateSearch(_histryLists[index])
                        },
                      );
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[Text('热搜榜')],
                    ),
                    SizedBox(
                      height: 520.0,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _lists.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 18),
                                        )),
                                    Expanded(
                                      flex: 8,
                                      child: Column(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                _lists[index]['searchWord'],
                                                style: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 16)),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                _lists[index]['content'],
                                                style: TextStyle(
                                                    color: Colors.grey[500])),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () =>
                                  updateSearch(_lists[index]['searchWord']),
                            );

                            // return ListTile(
                            //     title: Text(_lists[index]['searchWord']));
                          }),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
