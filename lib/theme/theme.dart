import 'package:flutter/material.dart';

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
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.black.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);