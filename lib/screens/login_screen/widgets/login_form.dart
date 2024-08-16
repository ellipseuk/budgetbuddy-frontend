import 'email_field.dart';
import 'package:budget_buddy/screens/login_screen/widgets/forgot_password_link.dart';
import 'package:budget_buddy/screens/login_screen/widgets/password_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 24,
                  color: Colors.black.withOpacity(0.8),
                ),
          ),
          const SizedBox(height: 10),
          Text(
            'Please log in to continue',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 14,
                ),
          ),
          const SizedBox(height: 35),
          const EmailField(),
          const SizedBox(height: 15),
          PasswordField(isObscure: _isObscure, toggleVisibility: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          }),
          const SizedBox(height: 10),
          const ForgotPasswordLink(),
        ],
      ),
    );
  }
}