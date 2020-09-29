import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        SectionTitle(label: 'Projects'),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: cardList
          ),
        ),
        SectionTitle(label: 'Better Projects'),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: cardList
          ),
        ),
        SectionTitle(label: 'Projects again?'),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: cardList
          ),
        ),
      ],
    ));
  }
}
