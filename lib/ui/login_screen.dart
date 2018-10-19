import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/login.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Container(
      child: Login(),
    );
  }
}
