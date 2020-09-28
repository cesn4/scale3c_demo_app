import 'package:flutter/material.dart';

class CustomAppNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.00),
      height: 80.0,
      color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 30.0,
            color: Colors.black,
            icon: Icon(Icons.add),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: 30.0,
            color: Colors.black,
            icon: Icon(Icons.home),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: 30.0,
            color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: 30.0,
            color: Colors.black,
            icon: Icon(Icons.person),
            onPressed: () => print('hello'),
          ),
        ],
      ),
    );
  }
}
