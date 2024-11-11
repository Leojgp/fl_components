import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  // primaryColor: Colors.deepOrange
  static const Color primary = Colors.green;

static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primario
        primaryColor: primary,
        // AppBar
        appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 24)
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: primary
        )
      );
}