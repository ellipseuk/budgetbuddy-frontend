import 'package:budget_buddy/screens/login_screen/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(child: FlutterLogo(size: 90)),
            SizedBox(height: 20),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}