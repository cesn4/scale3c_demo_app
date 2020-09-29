import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';
import 'package:scale3c_demo_app/widgets/navigation_button.dart';

class CustomAppNavigation extends StatelessWidget {
  CustomAppNavigation({
    @required this.buttons,
  });

  final List<NavigationButton> buttons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.large),
      height: ThemeSize.medium,
      color: ThemeCustomColor.light,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: buttons),
    );
  }
}
