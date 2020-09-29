import 'package:flutter/material.dart';
import 'package:scale3c_demo_app/scale3c_demo_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scale3C Demo',
      initialRoute: Routes.mainScreenRoute,
      routes: {
        Routes.mainScreenRoute: (context) => MainScreen(),
        Routes.addScreenRoute: (context) => AddScreen(),
      },
    );
  }
}
