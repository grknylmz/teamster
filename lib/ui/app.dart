import 'package:flutter/material.dart';
import 'package:teamster/ui/login_screen.dart';

class App extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
