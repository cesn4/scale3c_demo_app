import 'package:flutter/material.dart';

class ThemeShadow {
  static BoxShadow primary = BoxShadow(
    color: Colors.black12,
    blurRadius: 5.0,
    spreadRadius: 3.0,
  );
  static BoxShadow secondary = BoxShadow(
    color: Colors.black12,
    blurRadius: 5.0,
    spreadRadius: 3.0,
    offset: Offset(
      5.0,
      5.0,
    ),
  );
}
