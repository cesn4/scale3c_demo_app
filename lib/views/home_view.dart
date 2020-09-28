import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              color: Colors.red,
            ),
            Container(
              height: 200.0,
              color: Colors.yellow,
            ),
            Container(
              height: 200.0,
              color: Colors.black45,
            ),
            Container(
              height: 200.0,
              color: Colors.orange,
            ),
            Container(
              height: 200.0,
              color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: CustomAppNavigation());
  }
}
