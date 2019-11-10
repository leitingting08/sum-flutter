import 'package:flutter/material.dart';
import 'package:app/api/main.dart';
import 'package:app/utils/net_utils.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class SearchResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchResultPageState();
  }
}

class _SearchResultPageState extends State<SearchResultPage> {
  TextEditingController _searchController = new TextEditingController();
  
  List songs = [];
  int songCount;
  List orders = [];
  dynamic matchResult;

  @override
  void initState() {
    super.initState();
  }

  void _setResult(key) {
     setState(() {
        _searchController.text = key;
      });
       if(_searchController.text!=''){
          NetUtils.get(Api.searchApi(), {"keywords":_searchController.text}).then((res) => {
              setState(() {
                songs = res['result']['songs'];
                songCount = res['result']['songCount'];
              })
            });

            NetUtils.get(Api.multimatchApi(), {"keywords":_searchController.text}).then((res) => {
              setState(() {
                orders = res['result']['orders'];
                matchResult = res['result'];
              })
            });
        }
  }


  void _clearKeywords(){
     setState(() {
        _searchController.text = '';
      });
  }

  Widget build(BuildContext context) {
    String keywords = ModalRoute.of(context).settings.arguments as String;
     _setResult(keywords);
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          controller: _searchController,
          style:TextStyle(color: Colors.white),
          decoration: InputDecoration.collapsed(
              hintText: "请输入关键词", 
              hintStyle: TextStyle(color: Colors.white70),
              ),
              onChanged:(v){
                //  _searchMusic();
              },
            // onEditingComplete: ()=>{
            //   _searchMusic()
            // },
        ),
        actions: <Widget>[
          //导航栏右侧菜单
           _searchController.text!=''?
           IconButton(
              icon: Icon(Icons.close, color: Colors.white54),
              onPressed: () {
                _clearKeywords();
              }):
           IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // _searchMusic();
              }),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics:NeverScrollableScrollPhysics(),
                          itemCount: songs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 8,
                                      child: Column(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                songs[index]['name'],
                                                style: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 16)),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                songs[index]['alias'].join('-'),
                                                style: TextStyle(
                                                    color: Colors.grey[500])),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
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
