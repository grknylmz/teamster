import 'package:flutter/material.dart';
import '../widget/chat_message.dart';

class ChatScreen extends StatefulWidget {
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[]; // new
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Column(
      //modified
      children: <Widget>[
        //new
        new Flexible(
          //new
          child: new ListView.builder(
            //new
            padding: new EdgeInsets.all(8.0), //new
            reverse: true, //new
            itemBuilder: (_, int index) => _messages[index], //new
            itemCount: _messages.length, //new
          ), //new
        ), //new
        new Divider(height: 1.0), //new
        new Container(
          //new
          decoration:
              new BoxDecoration(color: Theme.of(context).cardColor), //new
          child: _buildTextComposer(), //modified
        ), //new
      ], //new
    );
  }

  Widget _buildTextComposer() {
    return new IconTheme(
      //new
      data: new IconThemeData(color: Theme.of(context).accentColor), //new
      child: new Container(
        //modified
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Mesaj gönder..."),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ), //new
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      //new
      text: text, //new
    ); //new
    setState(() {
      //new
      _messages.insert(0, message); //new
    }); //new
  }
}
