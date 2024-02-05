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
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        ),

        //Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 0,
            foregroundColor: Colors.white

          )
        ),

        //InputDecoration
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: primary,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary,
            ),
            //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary,
            ),
            //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
          )
        )

        
      );
}