import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class ItemsView extends StatelessWidget {
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
              'Just Items',
              style: TextStyle(
                  color: ThemeCustomColor.dark, fontSize: ThemeFontSize.small),
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
    );
  }
}
