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
  
  List _lists = [];

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
              print(res['result'])
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
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: <Widget>[
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
