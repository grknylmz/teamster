import 'package:flutter/material.dart';

class MainList extends StatefulWidget {
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 2.0),
                child: Text(
                  'harita',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 16.0,
                    fontFamily: 'Run',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'lib/assets/map.png',
                  width: 400.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text(
                  'Gorevler',
                ),
                subtitle: Text('Atanmıs Gorev Sayısı: 5'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Göster'),
                      onPressed: () {/* ... */},
                    ),
                    FlatButton(
                      child: const Text('Görev Oluştur'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('Takımım'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Göster'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('Takvim'),
                subtitle: Text('Etkinlik Sayısı: 12'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Göster'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
