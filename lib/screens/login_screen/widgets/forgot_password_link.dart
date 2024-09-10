import 'package:flutter/material.dart';

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/login');
        },
        child: Text(
          'Forgot your password?',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}