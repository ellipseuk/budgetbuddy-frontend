import 'package:budget_buddy/screens/login_screen/widgets/login_body.dart';
import 'package:budget_buddy/widgets/return_arrow_app_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String? title;
  const LoginScreen({super.key, this.title});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ReturnArrowAppBar(),
      body: LoginBody(),
    );
  }
}