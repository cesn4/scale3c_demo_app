import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
          child: Text(
            'Projects',
            style: TextStyle(
                color: ThemeCustomColor.dark, fontSize: ThemeFontSize.small),
          ),
        ),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: [
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.blueGrey,
                teamList: imageList,
              ),
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.pinkAccent,
                teamList: imageList,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
          child: Text(
            'Better Projects',
            style: TextStyle(
                color: ThemeCustomColor.dark, fontSize: ThemeFontSize.small),
          ),
        ),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: [
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.blueGrey,
                teamList: imageList,
              ),
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.pinkAccent,
                teamList: imageList,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
          child: Text(
            'Projects again?',
            style: TextStyle(
                color: ThemeCustomColor.dark, fontSize: ThemeFontSize.small),
          ),
        ),
        Container(
          height: ThemeSize.extra,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: ThemeSpacing.small),
            scrollDirection: Axis.horizontal,
            children: [
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.blueGrey,
                teamList: imageList,
              ),
              CardItem(
                label: 'Skills and more',
                text: 'Design power and kits',
                color: Colors.pinkAccent,
                teamList: imageList,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
