import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final bool isObscure;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.isObscure,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: toggleVisibility,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            hintText: 'Enter your password',
          ),
        ),
      ],
    );
  }
}