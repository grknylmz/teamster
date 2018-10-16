import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header();
  @override
  Widget build(BuildContext context) {
    return (new Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: new Text(
          "Teamster",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: new TextStyle(
              fontWeight: FontWeight.w800,
              letterSpacing: 0.5,
              color: Colors.white,
              fontSize: 28.0,
              fontFamily: 'Calibri'),
        )));
  }
}
