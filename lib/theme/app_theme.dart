import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  // primaryColor: Colors.deepOrange
  static const Color primary = Colors.green;
    static const Color secondary = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,
      // AppBar
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)),
      listTileTheme: const ListTileThemeData(iconColor: primary),
      //Text Button Theme
      textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)),
      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
        shape: StadiumBorder(),
        foregroundColor: secondary,
      ),
      elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          // Establezco el redondeado
          shape: StadiumBorder(),

        )
      )
      );
}
