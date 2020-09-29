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
          SectionTitle(label: 'Recently assigned'),
          ListItem(
            color: Colors.teal,
            label: 'Create Unity',
            text: 'Guidelines',
            date: 'Tomorrow',
            active: true,
          ),
          ListItem(
            color: Colors.orange,
            label: 'Design Web',
            text: 'Guideliness',
            date: 'Sep 31',
            active: false,
          ),
          ListItem(
            color: Colors.blue,
            label: 'Design Web',
            text: 'Guideliness',
            date: 'Sep 31',
            active: false,
          ),
        ],
      ),
    );
  }
}
