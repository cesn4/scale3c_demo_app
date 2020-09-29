import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class BarItem extends StatelessWidget {
  BarItem(
      {@required this.label,
      @required this.text,
      @required this.date,
      @required this.color,
      @required this.active});

  final Color color;
  final String label;
  final String date;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            vertical: ThemeSpacing.mini, horizontal: ThemeSpacing.large),
        height: ThemeSize.large,
        decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: ThemeBorderRadius.primary,
            boxShadow: [ThemeShadow.primary]),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(ThemeSpacing.medium),
                      margin: EdgeInsets.only(right: ThemeSpacing.large),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: ThemeBorderRadius.secondary),
                      child: Icon(
                        active ? Icons.check : Icons.watch_later,
                        color: ThemeCustomColor.light,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                            fontSize: ThemeFontSize.medium, color: color),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: ThemeFontSize.small, color: color),
                      )
                    ],
                  )
                ],
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: ThemeFontSize.small,
                    color: color,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
