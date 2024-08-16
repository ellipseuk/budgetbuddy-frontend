import 'package:flutter/material.dart';
import 'package:budget_buddy/theme/theme.dart';
import 'package:budget_buddy/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BudgetBuddy',
      theme: theme,
      routes:routes,
    );
  }
}