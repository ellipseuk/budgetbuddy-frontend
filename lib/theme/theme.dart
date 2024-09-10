import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(98, 0, 238, 100);

final theme = ThemeData(
  primarySwatch: Colors.deepPurple,
  dividerColor: Colors.black.withOpacity(0.2),
  listTileTheme: const ListTileThemeData(iconColor: Colors.black),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
  ),
  useMaterial3: false,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontFamily: 'Roboto',
    ),
    bodySmall: const TextStyle(
      color: Color.fromRGBO(108, 117, 125, 1),
      fontFamily: 'Roboto',
    ),
  ),
);