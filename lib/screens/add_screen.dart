import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(ThemeSpacing.extra),
              child: Text(
                'You could add something here',
                style: TextStyle(
                    fontSize: ThemeFontSize.medium,
                    color: ThemeCustomColor.dark,
                    fontWeight: FontWeight.bold),
              ),
            ),
            FlatButton(
              color: ThemeCustomColor.dark,
              onPressed: () => {Navigator.pop(context)},
              child: Padding(
                  padding: EdgeInsets.all(ThemeSpacing.mini),
                  child: Text('RETURN',
                      style: TextStyle(
                          fontSize: ThemeFontSize.large,
                          color: ThemeCustomColor.light))),
            )
          ],
        ),
      ),
    );
  }
}
