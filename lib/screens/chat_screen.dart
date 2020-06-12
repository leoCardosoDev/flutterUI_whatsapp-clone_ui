import 'package:flutter/material.dart';
import 'package:whats_clone_ui/config/config.dart';
import 'package:whats_clone_ui/models/chat_list_item.dart';
import 'package:whats_clone_ui/models/chat_message.dart';

class ChatScreen extends StatelessWidget {
  final ChatListItem person;
  ChatScreen({this.person});

  final List<ChatMessage> messages = [
    ChatMessage(date: '09:10 am', isSentByMe: true, message: 'Olá Mundo!'),
    ChatMessage(date: '09:10 am', isSentByMe: false, message: 'Hello World!'),
    ChatMessage(date: '09:10 am', isSentByMe: true, message: 'Olá Mundo!'),
    ChatMessage(date: '09:10 am', isSentByMe: false, message: 'Hello World!'),
    ChatMessage(date: '09:10 am', isSentByMe: true, message: 'Olá Mundo!'),
    ChatMessage(date: '09:10 am', isSentByMe: true, message: 'Olá Mundo!'),
  ];

  Widget _renderChatMessage(ChatMessage message) {
    return Align(
      alignment:
          message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: message.isSentByMe ? Color(0xFFDCF8C6) : Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Color(0x22000000),
                  offset: Offset(1, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(message.message,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }

  Widget _renderTextBox() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Escreva a sua mensagem',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.attach_file, color: Colors.black),
            onPressed: () {},
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: primaryColor,
            mini: true,
            child: Icon(Icons.send),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: Text(person.personName),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (ctx, i) => _renderChatMessage(messages[i]),
            ),
          ),
          Divider(),
          Container(
            child: _renderTextBox(),
          ),
        ],
      ),
    );
  }
}
