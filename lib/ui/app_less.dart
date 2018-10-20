import 'package:flutter/material.dart';
import 'package:teamster/ui/login_less.dart';

class App extends StatelessWidget {
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
