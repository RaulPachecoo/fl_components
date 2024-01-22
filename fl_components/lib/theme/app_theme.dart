import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.indigo; 
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
        //Color del AppBar Theme
        appBarTheme:  const AppBarTheme(
          color: primary,
          elevation: 0,
        ),
        // Color del listTile
        listTileTheme:  const ListTileThemeData(
          iconColor: primary,
        ),

        // Color del TextButton
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary),
        )

        
      );
}