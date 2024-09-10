import 'package:budget_buddy/screens/login_screen/widgets/login_button.dart';
import 'package:budget_buddy/screens/login_screen/widgets/or_divider.dart';
import 'package:budget_buddy/screens/login_screen/widgets/register.dart';
import 'email_field.dart';
import 'package:budget_buddy/screens/login_screen/widgets/forgot_password_link.dart';
import 'package:budget_buddy/screens/login_screen/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:budget_buddy/screens/login_screen/widgets/footer.dart';

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
          const SizedBox(height: 20),
          const LoginButton(),
          const SizedBox(height: 25),
          const OrDivider(),
          const SizedBox(height: 20),
          const Footer(),
          const SizedBox(height: 80),
          const Register(),
          const SizedBox(height: 15,)
        ],
      ),
    );
  }
}