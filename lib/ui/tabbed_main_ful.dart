import 'package:flutter/material.dart';
import '../ui/main_ful.dart';
import 'chat_less.dart';

class MainApp extends StatefulWidget {
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'teamster',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 22.0,
              fontFamily: 'Run',
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[new MainList(), new ChatApp()],
        controller: controller,
      ),
      bottomNavigationBar: bottomNavigationBuilder(),
    );
  }

  Widget bottomNavigationBuilder() {
    return new Material(
      child: new TabBar(
        indicatorColor: Colors.grey,
        labelColor: Colors.redAccent,
        labelStyle: new TextStyle(fontSize: 14.0),
        tabs: <Tab>[
          homeTab(),
          chatTab(),
        ],
        controller: controller,
      ),
    );
  }

  Widget homeTab() {
    return new Tab(
      icon: new Icon(
        Icons.home,
        color: Colors.redAccent,
      ),
      text: 'Anasayfa',
    );
  }

  Widget chatTab() {
    return new Tab(
      icon: new Icon(
        Icons.chat,
        color: Colors.redAccent,
      ),
      text: 'Sohbet',
    );
  }
}
