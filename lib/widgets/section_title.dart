import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle({
    @required this.label,
  });

  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
      child: Text(
        label,
        style: TextStyle(
            color: ThemeCustomColor.dark,
            fontSize: ThemeFontSize.small,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
