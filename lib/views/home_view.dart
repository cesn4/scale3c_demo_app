import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: ThemeSpacing.extra, vertical: ThemeSpacing.large),
              child: Text(
                'Recent Projects',
                style: TextStyle(
                    color: ThemeCustomColor.dark,
                    fontSize: ThemeFontSize.small),
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
                'Recent Assigned',
                style: TextStyle(
                    color: ThemeCustomColor.dark,
                    fontSize: ThemeFontSize.small),
              ),
            ),
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
        bottomNavigationBar: CustomAppNavigation());
  }
}
