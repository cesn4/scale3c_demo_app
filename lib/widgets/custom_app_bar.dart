import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar() : preferredSize = Size.fromHeight(100.0);
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SafeArea(
        child: Container(
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.00),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 30.0,
                color: Colors.black,
                icon: Icon(Icons.menu),
                onPressed: () => print('hello'),
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.black,
                icon: Icon(Icons.notifications),
                onPressed: () => print('hello'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
