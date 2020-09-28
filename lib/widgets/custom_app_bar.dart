import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar() : preferredSize = Size.fromHeight(60.0);
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      leading: IconButton(
        iconSize: 30.0,
        color: Colors.black,
        icon: const Icon(Icons.menu),
        onPressed: () {
          print('hello');
        },
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.black,
          iconSize: 30.0,
          icon: const Icon(Icons.notifications_active),
          onPressed: () {
            print('hello');
          },
        ),
      ],
    );
  }
}
