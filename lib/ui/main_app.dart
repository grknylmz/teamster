import 'package:flutter/material.dart';
import '../ui/main_list.dart';

class MainApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          /* actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              tooltip: 'Sign Out,
              onPressed: (){},
            ),
          ], */
        ),
        body: MainList(),
      ),
    );
  }
}
