import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CardsView(),
    ItemsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeCustomColor.light,
      appBar: CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomAppNavigation(
        buttons: [
          NavigationButton(
            icon: Icon(Icons.add),
            onPressed: () => {
              Navigator.pushNamed(context, Routes.addScreenRoute)
            },
            active: false,
          ),
          NavigationButton(
            icon: Icon(Icons.home),
            onPressed: () => {
              setState(() {
                _selectedIndex = 0;
              })
            },
            active: _selectedIndex == 0,
          ),
          NavigationButton(
            icon: Icon(Icons.search),
            onPressed: () => {
              setState(() {
                _selectedIndex = 1;
              })
            },
            active: _selectedIndex == 1,
          ),
          NavigationButton(
            icon: Icon(Icons.person),
            onPressed: () => {
              setState(() {
                _selectedIndex = 2;
              })
            },
            active: _selectedIndex == 2,
          ),
        ],
      ),
    );
  }
}
