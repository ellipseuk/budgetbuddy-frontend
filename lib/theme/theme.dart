import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(98, 0, 238, 100);

final theme = ThemeData(
  primarySwatch: Colors.deepPurple,
  dividerColor: Colors.black.withOpacity(0.2),
  listTileTheme: const ListTileThemeData(iconColor: Colors.black),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
  ),
  useMaterial3: false,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color.fromRGBO(52, 58, 64, 100),
      fontFamily: 'Roboto',
    ),
    bodySmall: TextStyle(
      color: Color.fromRGBO(108, 117, 125, 100),
      fontFamily: 'Roboto',
    ),
  ),
);