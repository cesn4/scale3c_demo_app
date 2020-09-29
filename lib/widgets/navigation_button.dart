import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton({
    @required this.icon,
    @required this.active,
    @required this.onPressed,
  });

  final Icon icon;
  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: active ? ThemeCustomColor.dark : ThemeCustomColor.light,
          shape: CircleBorder()),
      child: IconButton(
        icon: icon,
        color: active ? ThemeCustomColor.light : ThemeCustomColor.dark,
        onPressed: onPressed,
      ),
    );
  }
}
