import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.music_note),
                title: const Text('本地音乐'),
              ),
              ListTile(
                leading: const Icon(Icons.play_circle_filled),
                title: const Text('最近播放'),
              ),
              ListTile(
                leading: const Icon(Icons.cloud_download),
                title: const Text('下载管理'),
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('我的电台'),
              ),
              ListTile(
                leading: const Icon(Icons.save),
                title: const Text('我的收藏'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
