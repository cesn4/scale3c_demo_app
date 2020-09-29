import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class CustomAppNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.large),
      height: ThemeSize.medium,
      color: Colors.white10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: ThemeSize.mini,
            color: ThemeCustomColor.dark,
            icon: Icon(Icons.add),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: ThemeSize.mini,
            color: ThemeCustomColor.dark,
            icon: Icon(Icons.home),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: ThemeSize.mini,
            color: ThemeCustomColor.dark,
            icon: Icon(Icons.search),
            onPressed: () => print('hello'),
          ),
          IconButton(
            iconSize: ThemeSize.mini,
            color: ThemeCustomColor.dark,
            icon: Icon(Icons.person),
            onPressed: () => print('hello'),
          ),
        ],
      ),
    );
  }
}
