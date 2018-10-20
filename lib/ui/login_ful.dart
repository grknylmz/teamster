import 'package:flutter/material.dart';
import '../ui/tabbed_main_ful.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      shrinkWrap: true,
      //padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        header(),
        newTextField('E-Mail'),
        newTextInput('ornek@eposta.com', false),
        divider(),
        newTextField('Şifre'),
        newTextInput('**********', true),
        divider(),
        rightAlignedText('Şifremi Unuttum'),
        pushButtonMiddle('Giriş'),
      ],
    );
  }

  goMain() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainApp()),
    );
  }

  Widget header() {
    return new Container(
      padding: EdgeInsets.fromLTRB(20.0, 120.0, 20.0, 80.0),
      child: Center(
        child: new Text(
          'teamster',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            fontSize: 34.0,
            fontFamily: 'Run',
          ),
        ),
      ),
    );
  }

  Widget newTextField(String text) {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: new Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget divider() {
    return new Divider(
      height: 24.0,
      color: Colors.white,
    );
  }

  Widget newTextInput(String hint, bool obsecure) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Colors.redAccent, width: 0.5, style: BorderStyle.solid),
        ),
      ),
      padding: const EdgeInsets.only(left: 0.0, right: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Expanded(
            child: TextField(
              obscureText: obsecure,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rightAlignedText(String text) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: new FlatButton(
            child: new Text(
              "Şifremi Unuttum",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.end,
            ),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }

  Widget pushButtonMiddle(String text) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
      alignment: Alignment.center,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              child: new FlatButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  goMain();
                },
                child: new Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
