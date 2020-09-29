import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar() : preferredSize = Size.fromHeight(ThemeSize.large);
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: SafeArea(
        child: Container(
          height: ThemeSize.medium,
          padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.large),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: ThemeSize.mini,
                color: ThemeCustomColor.dark,
                icon: Icon(Icons.menu),
                onPressed: () => print('hello'),
              ),
              IconButton(
                iconSize: ThemeSize.mini,
                color: ThemeCustomColor.dark,
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
