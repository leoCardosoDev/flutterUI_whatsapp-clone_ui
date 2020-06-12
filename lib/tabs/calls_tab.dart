import 'package:flutter/material.dart';
import 'package:whats_clone_ui/config/config.dart';
import 'package:whats_clone_ui/models/chat_list_item.dart';

class CallsTab extends StatelessWidget {
  final List<ChatListItem> chatListItems = [
    ChatListItem(
        profileURL:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Leonardo",
        date: "9:10 am",
        lastMessage: "Olá Mundo!"),
    ChatListItem(
        profileURL:
            "https://images.pexels.com/photos/999515/pexels-photo-999515.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Clarabelle",
        date: "9:10 am",
        lastMessage: "beatae quasi sed"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return Divider();
      },
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(chatListItems[i].personName),
          subtitle: Text(chatListItems[i].lastMessage),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              i % 6 != 0 ? Icons.call : Icons.videocam,
              color: primaryColor,
            ),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(chatListItems[i].profileURL),
          ),
        );
      },
    );
  }
}
