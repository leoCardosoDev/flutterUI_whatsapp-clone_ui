import 'package:flutter/material.dart';
import 'package:whats_clone_ui/config/config.dart';
import 'package:whats_clone_ui/tabs/calls_tab.dart';
import 'package:whats_clone_ui/tabs/camera_tab.dart';
import 'package:whats_clone_ui/tabs/chats_tab.dart';
import 'package:whats_clone_ui/tabs/status_tab.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            centerTitle: false,
            backgroundColor: primaryColor,
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(text: 'Conversas'),
                Tab(text: 'Status'),
                Tab(text: 'Chamadas'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CameraTab(),
              ChatsTab(),
              StatusTab(),
              CallsTab(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.chat),
            onPressed: () {},
            backgroundColor: primaryColor,
          ),
        ));
  }
}
