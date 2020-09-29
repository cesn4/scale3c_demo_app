import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SectionTitle(label: 'Recent Projects'),
          Container(
            height: ThemeSize.extra,
            child: ListView(
                padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
                scrollDirection: Axis.horizontal,
                children: cardList),
          ),
          SectionTitle(label: 'Recently assigned'),
          ...barList
        ],
      ),
    );
  }
}
